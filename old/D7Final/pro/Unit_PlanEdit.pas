unit Unit_PlanEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, {GridsEh, }DBGridEh, StdCtrls, Mask,
  DBCtrlsEh, dxCntner, dxEditor, dxExEdtr, dxEdLib, Buttons, ADODB,
  IBStoredProc, Grids;

type
  TFormPlanEdit = class(TForm)
    qryTime: TIBQuery;
    qryName: TIBQuery;
    dsTime: TDataSource;
    dsName: TDataSource;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    ceSumm: TdxCurrencyEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    spAdd: TIBStoredProc;
    spEdit: TIBStoredProc;
    Label2: TLabel;
    tePrim: TdxEdit;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ceSummKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tePrimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure LoadData;
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
      qryName.Open;
    end;
end;

procedure TFormPlanEdit.FormCreate(Sender: TObject);
begin
  LoadData;
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
      spEdit.ExecProc;
    end;

  FormPlanEdit.Close;
end;

procedure TFormPlanEdit.SpeedButton2Click(Sender: TObject);
begin
  spAdd.Close;
  FormPlanEdit.Close;
end;

procedure TFormPlanEdit.FormShow(Sender: TObject);
begin
  LoadData;
  if isAdd then
    begin
      ceSumm.Value := 0;
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
