unit Unit_DM;

interface

uses
  SysUtils, Classes, DB, IBDatabase, Dialogs, inifiles, forms, IBCustomDataSet, IBQuery, FIBDatabase, pFIBDatabase;

type
  TConnectionParams = class
  public
    DatabaseName: string;
  end;

type
  TDM = class(TDataModule)
    DBMain: TIBDatabase;
    Transaction: TIBTransaction;
    qryUserId: TIBQuery;
    DBMainExt: TpFIBDatabase;
    TransactionExt: TpFIBTransaction;
    procedure DBMainAfterConnect(Sender: TObject);
    procedure DBMainAfterDisconnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    uName: string;
    uPass: string;
    uId: integer;
    procedure PopulateUserAccountFromForm;
    procedure PopulateUserAccountFromFile(ini: TIniFile);
    procedure GetUserId;
    procedure ConnectDB(cParams: TConnectionParams);
    procedure ConnectDBExt(cParams: TConnectionParams);
    function GetConnectionParams: TConnectionParams;
  public
    { Public declarations }
    procedure Connect;
    procedure Disconnect;
    property UserName: string read uName;
    property UserId: integer read uId;
  end;

var
  DM: TDM;

implementation

uses Unit_Main, Unit_Login;

{$R *.dfm}


procedure TDM.ConnectDB(cParams: TConnectionParams);
begin
  try
    DBMain.Close;
    DBMain.Params.Clear;
    DBMain.DatabaseName := cParams.DatabaseName;

    if (Self.uName <> '') and (Self.uPass <> '')then
    begin
      DBMain.Params.Add('user_name=' + Self.uName);
      DBMain.Params.Add('password=' + Self.uPass);
      DBMain.Params.Add('lc_ctype=WIN1251');
      DBMain.Open;
    end
    else
    begin
      MessageDlg('Имя пользователя и пароль не могут быть пустыми.', mtError, [mbAbort], 0);
    end;
  except
    on e: Exception do
    begin
      MessageDlg('Ошибка соединения с базой. ' + #10#13 + e.Message, mtError, [mbAbort], 0);
      DBMain.Close;
    end;
  end;
end;

procedure TDM.ConnectDBExt(cParams: TConnectionParams);
begin
  try
    DBMainExt.Close;
    DBMainExt.DBParams.Clear;
    DBMainExt.DatabaseName := cParams.DatabaseName;

    if (Self.uName <> '') and (Self.uPass <> '')then
    begin
      DBMainExt.DBParams.Add('user_name=' + Self.uName);
      DBMainExt.DBParams.Add('password=' + Self.uPass);
      DBMainExt.DBParams.Add('lc_ctype=WIN1251');
      DBMainExt.Open;
    end
    else
    begin
      MessageDlg('Имя пользователя и пароль не могут быть пустыми.', mtError, [mbAbort], 0);
    end;
  except
    on e: Exception do
    begin
      MessageDlg('Ошибка соединения с базой. ' + #10#13 + e.Message, mtError, [mbAbort], 0);
      DBMainExt.Close;
    end;
  end;

end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  Self.uName := '';
  Self.uPass := '';

  if DBMain.Connected then
    DBMain.Close;

  if DBMainExt.Connected then
    DBMainExt.Close;
end;

procedure TDM.DBMainAfterConnect(Sender: TObject);
begin
  FormMain.setConnStatus(true);
end;

procedure TDM.DBMainAfterDisconnect(Sender: TObject);
begin
  FormMain.setConnStatus(false);
end;

procedure TDM.Connect;
var
  cp: TConnectionParams;
begin
  cp := Self.GetConnectionParams;
  Self.ConnectDB(cp);
  Self.ConnectDBExt(cp);
  GetUserId;
end;


procedure TDM.Disconnect;
begin
  DBMain.Close;
  DBMainExt.Close;
end;

function TDM.GetConnectionParams: TConnectionParams;
var
  cp: TConnectionParams;
  ini : TIniFile;
begin
  cp := TConnectionParams.Create;
  ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'settings.ini');
  try
    cp.DatabaseName := ini.ReadString('main', 'db', '');
    if (ini.ValueExists('main', 'uname')) and (ini.ValueExists('main', 'upass')) then
    begin
      PopulateUserAccountFromFile(ini);
    end
    else
    begin
      PopulateUserAccountFromForm;
    end;
    except
      on e : Exception do
        begin
          MessageDlg('Ошибка чтения параметров сщединения с базой. ' + #10#13 + e.Message, mtError, [mbAbort], 0);
          ini.Free;
        end;
    end;
    ini.Free;
  result := cp;
end;

procedure TDM.GetUserId;
begin
  try
    qryUserId.Close;
    qryUserId.ParamByName('username').Value := Self.uName;
    qryUserId.Open;
    if qryUserId.RecordCount = 0 then
      raise Exception.Create('Пользователь не найден');

    Self.uId := qryUserId.FieldByName('id').AsInteger;
  except
    on e: Exception do
    begin
      MessageDlg('Пользователь не может работать в программме. ' + #10#13 + e.Message, mtError, [mbAbort], 0);
      Disconnect;
    end;
  end;
end;

procedure TDM.PopulateUserAccountFromFile(ini: TIniFile);
begin
  Self.uName := ini.ReadString('main', 'uname', '');
  Self.uPass := ini.ReadString('main', 'upass', '');
end;

procedure TDM.PopulateUserAccountFromForm;
var
  f: TfrmLogin;
begin
  f := nil;
  try
    f := TfrmLogin.Create(self);
    f.ShowModal;
    if f.NeedLogin = true then
    begin
      Self.uName := f.edtName.Text;
      Self.uPass := f.edtPass.Text;
    end;
  finally
    f.Free;
  end;

end;

end.


