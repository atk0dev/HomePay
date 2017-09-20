unit Unit_Last;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, IBCustomDataSet, IBQuery, dxExEdtr,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxEditor, dxEdLib;

type
  TFormLast = class(TForm)
    qry: TIBQuery;
    ds: TDataSource;
    dxDBGrid1: TdxDBGrid;
    qryID: TIntegerField;
    qryP_NAME: TIBStringField;
    qryPL_PREV: TIBBCDField;
    qryFT_PREV: TIBBCDField;
    qryPL_CURR: TIBBCDField;
    qryFT_CURR: TIBBCDField;
    qrydolg_before: TCurrencyField;
    qrydolg_curr: TCurrencyField;
    col_Usluga: TdxDBGridColumn;
    col_plprev: TdxDBGridCurrencyColumn;
    col_ftprev: TdxDBGridCurrencyColumn;
    col_dolgprev: TdxDBGridCurrencyColumn;
    col_plcurr: TdxDBGridCurrencyColumn;
    col_ftcurr: TdxDBGridCurrencyColumn;
    col_dolgcurr: TdxDBGridCurrencyColumn;
    Panel1: TPanel;
    dxDBGrid2: TdxDBGrid;
    qryDate: TIBQuery;
    dsDate: TDataSource;
    dxDBGrid2Column1: TdxDBGridColumn;
    dxDBGrid2Column2: TdxDBGridColumn;
    dxDBGrid2Column3: TdxDBGridColumn;
    Label1: TLabel;
    Label2: TLabel;
    edtNeedPay: TdxEdit;
    edtAlreadyPay: TdxEdit;
    qryNeedPay: TIBQuery;
    qryAlreadyPay: TIBQuery;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dsDateDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure LoadDate;
    procedure LoadData;
    procedure ShowCurrentMonth;
    procedure LoadCurrentBalance;
  public
    { Public declarations }
  end;

var
  FormLast: TFormLast;

implementation

uses Unit_DM, DateUtils;

{$R *.dfm}

procedure TFormLast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormLast.qryCalcFields(DataSet: TDataSet);
begin
  qrydolg_before.Value := qryPL_PREV.Value - qryFT_PREV.Value;
  qrydolg_curr.Value := qrydolg_before.Value + qryPL_CURR.Value - qryFT_CURR.Value;

end;

procedure TFormLast.LoadDate;
begin
  qryDate.Close;
  qryDate.Open;
end;


procedure TFormLast.LoadData;
var
  bm : TBookmark;
begin
  bm := qry.GetBookmark;
  qry.Close;
  qry.ParamByName('tm').Value := qryDate.fieldbyname('id').Value;
  qry.Open;
  qry.GotoBookmark(bm);
  qry.FreeBookmark(bm);
end;

procedure TFormLast.dsDateDataChange(Sender: TObject; Field: TField);
begin
  LoadData;
  LoadCurrentBalance;
end;

procedure TFormLast.FormCreate(Sender: TObject);
begin
  LoadDate;
  ShowCurrentMonth;
end;

procedure TFormLast.ShowCurrentMonth;
var
  dt : TDateTime;
begin
  dt := Date;

  qryDate.First;
  while not qryDate.Eof do
    begin
      if (qryDate.FieldByName('t_year').AsInteger = YearOf(dt)) and
         (qryDate.FieldByName('t_month').AsInteger = MonthOf(dt)) then
        exit
      else
        qryDate.Next;
    end;
end;

procedure TFormLast.LoadCurrentBalance;
begin
  qryNeedPay.Close;
  qryNeedPay.ParamByName('tm').Value := qryDate.fieldbyname('id').Value;
  qryNeedPay.Open;
  edtNeedPay.Text := IntToStr(qryNeedPay.FieldByName('sum').AsInteger);

  qryAlreadyPay.Close;
  qryAlreadyPay.ParamByName('tm').Value := qryDate.fieldbyname('id').Value;
  qryAlreadyPay.Open;
  edtAlreadyPay.Text := IntToStr(qryAlreadyPay.FieldByName('sum').AsInteger);

end;

end.
