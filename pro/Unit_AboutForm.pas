unit Unit_AboutForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons, StdCtrls, DB, IBCustomDataSet, IBQuery;

type
  TfrmAbout = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    edtAppVer: TLabeledEdit;
    edtDbVer: TLabeledEdit;
    qryGetVersion: TIBQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure PopulateVersion;
    function GetExeVersion: string;
    function GetDbVersion: string;
  public
    { Public declarations }
  end;

implementation

uses Unit_DM;

{$R *.dfm}

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
  PopulateVersion;
end;

procedure TfrmAbout.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key=27 then
    self.Close;
end;

function TfrmAbout.GetDbVersion: string;
begin
  if qryGetVersion.Active = True then
  begin
    qryGetVersion.Close;
  end;

  qryGetVersion.Open;
  Result := qryGetVersion.FieldByName('paramvalue').AsString;
  qryGetVersion.Close;
end;

function TfrmAbout.GetExeVersion: string;
var
  Size, Size2: DWord;
  Pt, Pt2: Pointer;
begin
  Size := GetFileVersionInfoSize(PChar(ParamStr(0)), Size2);
  if Size > 0 then
  begin
    GetMem(Pt, Size);
    try
      GetFileVersionInfo(PChar(ParamStr(0)), 0, Size, Pt);
      VerQueryValue(Pt, '\', Pt2, Size2);
      with TVSFixedFileInfo(Pt2^) do
      begin
        Result := IntToStr(HiWord(dwFileVersionMS)) + '.' +
          IntToStr(LoWord(dwFileVersionMS)) + '.' +
          IntToStr(HiWord(dwFileVersionLS)) + '.' +
          IntToStr(LoWord(dwFileVersionLS));
      end;
    finally
      FreeMem(Pt);
    end;
  end;
end;

procedure TfrmAbout.PopulateVersion;
begin
  edtAppVer.Text := GetExeVersion;

  if dm.UserId <> 0 then
  begin
    edtDbVer.Text := GetDbVersion;
  end
  else
  begin
    edtDbVer.Text := 'Версия базы не доступна, т.к. соединение не установлено.';
  end;
end;

procedure TfrmAbout.SpeedButton1Click(Sender: TObject);
begin
  Self.Close;
end;

end.
