unit Unit_FactEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBStoredProc, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Mask, DBCtrlsEh, {GridsEh, }DBGridEh, Buttons,
  Grids, DBGridEhGrouping, GridsEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxCurrencyEdit,
  Unit_BaseForm, ExtCtrls, cxLabel, cxMemo;

type
  TFormFactEdit = class(TfrmBase)
    qryTime: TIBQuery;
    dsTime: TDataSource;
    qryName: TIBQuery;
    dsName: TDataSource;
    spAdd: TIBStoredProc;
    spEdit: TIBStoredProc;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ceSumm: TcxCurrencyEdit;
    Panel1: TPanel;
    qryPlan: TIBQuery;
    SpeedButton3: TSpeedButton;
    mmoMessage: TcxMemo;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ceSummKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsTimeDataChange(Sender: TObject; Field: TField);
    procedure dsNameDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
    procedure ShowPlannedPay;
  public
    { Public declarations }
    isAdd : bool;
    editID : integer;
    timeID : integer;
    nameID : integer;
    summ : Currency;
  end;

var
  FormFactEdit: TFormFactEdit;

implementation

uses Unit_DM, Unit_PayFact;

{$R *.dfm}

procedure TFormFactEdit.LoadData;
begin
  if DM.DBMain.Connected then
    begin
      qryTime.Close;
      qryName.Close;

      qryTime.Open;
      qryName.ParamByName('userid').Value := dm.UserId;
      qryName.Open;
    end;
end;

procedure TFormFactEdit.dsNameDataChange(Sender: TObject; Field: TField);
begin
  ShowPlannedPay;
end;

procedure TFormFactEdit.dsTimeDataChange(Sender: TObject; Field: TField);
begin
 ShowPlannedPay;
end;

procedure TFormFactEdit.FormCreate(Sender: TObject);
begin
  LoadData;
end;

procedure TFormFactEdit.ShowPlannedPay;
var
  msg: string;
  sumPlan : double;
begin
  mmoMessage.Text := '';
  msg := '';
  sumPlan := 0;
  if qryTime.Active and qryName.Active then
  begin
    qryPlan.Close;
    qryPlan.ParamByName('timeid').Value := qryTime.FieldByName('id').Value;
    qryPlan.ParamByName('payid').Value := qryName.FieldByName('id').Value;
    qryPlan.ParamByName('userid').Value := dm.UserId;
    qryPlan.Open;
    if qryPlan.RecordCount > 0 then
    begin
      sumPlan := qryPlan.FieldByName('PrevSum').AsFloat;
    end;
    msg := Format('В этом месяце [%s %s] запланировано [%.2f] для платежа: [%s]',
             [qryTime.FieldByName('txt').AsString,
              qryTime.FieldByName('t_year').AsString,
              sumPlan,
              qryName.FieldByName('P_NAME').AsString]);
    mmoMessage.Text := msg;
  end;
end;

procedure TFormFactEdit.SpeedButton1Click(Sender: TObject);
begin
  if isAdd then
    begin
      spAdd.Close;
      spAdd.ParamByName('PTIME').Value := qryTime.FieldByName('id').Value;
      spAdd.ParamByName('PNAME').Value := qryName.FieldByName('id').Value;
      spAdd.ParamByName('PSUMM').Value := ceSumm.Value;
      spAdd.ParamByName('userid').Value := dm.UserId;
      spAdd.ExecProc;
    end
  else
    begin
      spEdit.Close;
      spEdit.ParamByName('pid').Value := editID;
      spEdit.ParamByName('PTIME').Value := qryTime.FieldByName('id').Value;
      spEdit.ParamByName('PNAME').Value := qryName.FieldByName('id').Value;
      spEdit.ParamByName('PSUMM').Value := ceSumm.Value;
      spEdit.ParamByName('userid').Value := dm.UserId;
      spEdit.ExecProc;
    end;

  FormFactEdit.Close;

end;

procedure TFormFactEdit.SpeedButton2Click(Sender: TObject);
begin
  spAdd.Close;
  FormFactEdit.Close;

end;

procedure TFormFactEdit.SpeedButton3Click(Sender: TObject);
begin
    if qryPlan.RecordCount > 0 then
    begin
      ceSumm.Text := FloatToStr(qryPlan.FieldByName('PrevSum').AsFloat);
    end;
end;

procedure TFormFactEdit.FormShow(Sender: TObject);
begin
  LoadData;
  ShowCurrentMonth(qryTime, 't_year', 't_month');
  if isAdd then
    begin
      ceSumm.Value := 0;
      if (timeID <> 0) and (nameID <> 0) then
      begin
        qryTime.Locate('id', timeID, [loCaseInsensitive]);
        qryName.Locate('id', nameID, [loCaseInsensitive]);
      end;
    end
  else
    begin
      ceSumm.Value := summ;
      qryTime.Locate('id', timeID, [loCaseInsensitive]);
      qryName.Locate('id', nameID, [loCaseInsensitive]);
    end;

end;

procedure TFormFactEdit.ceSummKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SpeedButton1.Click;
end;

end.
