unit Unit_PlanEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, {GridsEh, }DBGridEh, StdCtrls, Mask,
  DBCtrlsEh, Buttons, ADODB,
  IBStoredProc, Grids, DBGridEhGrouping, GridsEh, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxCurrencyEdit,
  Unit_BaseForm, cxLabel, ExtCtrls, cxMemo;

type
  TFormPlanEdit = class(TfrmBase)
    qryTime: TIBQuery;
    qryName: TIBQuery;
    dsTime: TDataSource;
    dsName: TDataSource;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    spAdd: TIBStoredProc;
    spEdit: TIBStoredProc;
    Label2: TLabel;
    ceSumm: TcxCurrencyEdit;
    tePrim: TcxTextEdit;
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
    procedure tePrimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsTimeDataChange(Sender: TObject; Field: TField);
    procedure dsNameDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
    procedure ShowPrevPlannedPay;
  public
    { Public declarations }
    isAdd : bool;
    editID : integer;
    timeID : integer;
    nameID : integer;
    summ : Currency;
  end;

var
  FormPlanEdit: TFormPlanEdit;

implementation

uses Unit_DM, Unit_PayPlan;

{$R *.dfm}

procedure TFormPlanEdit.LoadData;
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

procedure TFormPlanEdit.dsNameDataChange(Sender: TObject; Field: TField);
begin
  ShowPrevPlannedPay;
end;

procedure TFormPlanEdit.dsTimeDataChange(Sender: TObject; Field: TField);
begin
  ShowPrevPlannedPay;
end;

procedure TFormPlanEdit.FormCreate(Sender: TObject);
begin
  LoadData;
end;

procedure TFormPlanEdit.ShowPrevPlannedPay;
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
    qryPlan.ParamByName('timeid').Value := qryTime.FieldByName('id').Value - 1;
    qryPlan.ParamByName('payid').Value := qryName.FieldByName('id').Value;
    qryPlan.ParamByName('userid').Value := dm.UserId;
    qryPlan.Open;
    if qryPlan.RecordCount > 0 then
    begin
      sumPlan := qryPlan.FieldByName('PrevSum').AsFloat;
    end;
    msg := Format('В прошлом месяце запланировано [%.2f] для платежа: [%s]',
             [sumPlan,
              qryName.FieldByName('P_NAME').AsString]);
    mmoMessage.Text := msg;
  end;
end;

procedure TFormPlanEdit.SpeedButton1Click(Sender: TObject);
begin
  if isAdd then
    begin
      spAdd.Close;
      spAdd.ParamByName('PTIME').Value := qryTime.FieldByName('id').Value;
      spAdd.ParamByName('PNAME').Value := qryName.FieldByName('id').Value;
      spAdd.ParamByName('PSUMM').Value := ceSumm.Value;
      spAdd.ParamByName('txt').Value := tePrim.Text;
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
      spEdit.ParamByName('txt').Value := tePrim.Text;
      spEdit.ParamByName('userid').Value := dm.UserId;
      spEdit.ExecProc;
    end;

  FormPlanEdit.Close;
end;

procedure TFormPlanEdit.SpeedButton2Click(Sender: TObject);
begin
  spAdd.Close;
  FormPlanEdit.Close;
end;

procedure TFormPlanEdit.SpeedButton3Click(Sender: TObject);
begin
    if qryPlan.RecordCount > 0 then
    begin
      ceSumm.Text := FloatToStr(qryPlan.FieldByName('PrevSum').AsFloat);
    end;
end;

procedure TFormPlanEdit.FormShow(Sender: TObject);
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

procedure TFormPlanEdit.ceSummKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SpeedButton1.Click;
end;

procedure TFormPlanEdit.tePrimKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    SpeedButton1.Click;

end;

end.
