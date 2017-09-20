unit Unit_InPlat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DB, IBCustomDataSet, IBQuery, ExtCtrls, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls;

type
  TFormKvit = class(TForm)
    dxDBGrid1: TdxDBGrid;
    col_Usluga: TdxDBGridColumn;
    col_plprev: TdxDBGridCurrencyColumn;
    col_ftprev: TdxDBGridCurrencyColumn;
    col_dolgprev: TdxDBGridCurrencyColumn;
    col_plcurr: TdxDBGridCurrencyColumn;
    col_ftcurr: TdxDBGridCurrencyColumn;
    col_dolgcurr: TdxDBGridCurrencyColumn;
    Panel1: TPanel;
    gridDate: TdxDBGrid;
    gridDateColumn1: TdxDBGridColumn;
    gridDateColumn2: TdxDBGridColumn;
    gridDateColumn3: TdxDBGridColumn;
    qry: TIBQuery;
    qryID: TIntegerField;
    qryP_NAME: TIBStringField;
    qryPL_PREV: TIBBCDField;
    qryFT_PREV: TIBBCDField;
    qryPL_CURR: TIBBCDField;
    qryFT_CURR: TIBBCDField;
    qrydolg_before: TCurrencyField;
    qrydolg_curr: TCurrencyField;
    ds: TDataSource;
    qryDate: TIBQuery;
    dsDate: TDataSource;
    qrydolg1: TCurrencyField;
    col_dolg1: TdxDBGridCurrencyColumn;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dsDateDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure LoadDate;
    procedure LoadData;
  public
    { Public declarations }
  end;

var
  FormKvit: TFormKvit;

implementation

uses Unit_DM, DateUtils;

{$R *.dfm}

procedure TFormKvit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormKvit.qryCalcFields(DataSet: TDataSet);
begin
  qrydolg_before.Value := qryPL_PREV.Value - qryFT_PREV.Value;
  qrydolg_curr.Value := qrydolg_before.Value + qryPL_CURR.Value - qryFT_CURR.Value;
  qrydolg1.Value := qrydolg_before.Value - qryFT_CURR.Value;
end;

procedure TFormKvit.LoadDate;
begin
  qryDate.Close;
  qryDate.Open;
end;

procedure TFormKvit.LoadData;
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

procedure TFormKvit.dsDateDataChange(Sender: TObject; Field: TField);
begin
  LoadData;
end;

procedure TFormKvit.FormCreate(Sender: TObject);
begin
  LoadDate;

end;


end.
