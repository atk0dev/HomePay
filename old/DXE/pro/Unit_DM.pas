unit Unit_DM;

interface

uses
  SysUtils, Classes, DB, IBDatabase, Dialogs, inifiles, forms;

type
  TDM = class(TDataModule)
    DBMain: TIBDatabase;
    transaction: TIBTransaction;
    procedure DBMainAfterConnect(Sender: TObject);
    procedure DBMainAfterDisconnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Connect;
    procedure Disconnect;
  end;

var
  DM: TDM;

implementation

uses Unit_Main;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  if DBMain.Connected then
    DBMain.Close;
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
  ini : TIniFile;
begin
  ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'settings.ini');
  try
    DBMain.Close;
    DBMain.Params.Clear;
    DBMain.DatabaseName := ini.ReadString('main', 'db', '');
    DBMain.Params.Add('user_name=' + ini.ReadString('main', 'uname', ''));
    DBMain.Params.Add('password=' + ini.ReadString('main', 'upass', ''));
    DBMain.Params.Add('lc_ctype=WIN1251');
    DBMain.Open;

  except
    on e : Exception do
      begin
        MessageDlg('Ошибка соединения с базой. #10#13' + e.Message,
              mtError, [mbAbort], 0);
        Disconnect;
        ini.Free;
      end;
  end;
  ini.Free;


end;


procedure TDM.Disconnect;
begin
  DBMain.Close;
end;

end.


