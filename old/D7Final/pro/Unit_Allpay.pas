unit Unit_Allpay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, Buttons, ExtCtrls, dxEdLib,
  dxEditor, dxExGrEd, dxExELib, dxLayout, Grids, DBGrids;

type
  TFormAllpay = class(TForm)
    qry: TIBQuery;
    ds: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridCurrencyColumn;
    dxDBGrid1Column6: TdxDBGridCurrencyColumn;
    qryP_YEAR: TIntegerField;
    qryP_MONTH: TIntegerField;
    qryP_MNAME: TIBStringField;
    qryP_NAME: TIBStringField;
    qryP_PLAN: TIBBCDField;
    qryP_FACT: TIBBCDField;
    qrypf: TCurrencyField;
    dxDBGrid1Column7: TdxDBGridCurrencyColumn;
    qryPL_REST: TIBBCDField;
    qryFT_REST: TIBBCDField;
    colPlRest: TdxDBGridCurrencyColumn;
    colFtRest: TdxDBGridCurrencyColumn;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    ceUseparams: TdxCheckEdit;
    dxDBExtLookupEdit1: TdxDBExtLookupEdit;
    qryUsl: TIBQuery;
    dsUsl: TDataSource;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGridLayoutList1Item1: TdxDBGridLayout;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ceUseparamsChange(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
    procedure LoadUsl;
  public
    { Public declarations }
  end;

var
  FormAllpay: TFormAllpay;

implementation

uses Unit_DM;

{$R *.dfm}

procedure TFormAllpay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormAllpay.LoadData;
begin
  qry.Close;
  qry.SQL.Clear;
  if (ceUseparams.Checked) then
    begin
      qry.SQL.Text :=
      'select v.p_year, v.p_month, v.p_mname, v.p_name, ' +
      '(select sum(r_pl.p_summa) from tbl_plan r_pl ' +
      'where r_pl.p_time < v.p_time and r_pl.p_payname=v.p_payname) as pl_rest, ' +
      'sum(v.p_plan) as p_plan, ' +
      '(select sum(r_ft.p_summa) from tbl_fact r_ft ' +
      'where r_ft.p_time < v.p_time and r_ft.p_payname=v.p_payname) as ft_rest, ' +
      'sum(v.p_fact) as p_fact ' +
      'from v_pay v where v.p_payname= :pn ' +
      'group by v.p_year, v.p_month, v.p_mname, v.p_name ' +
      'order by v.p_year desc, v.p_month desc, v.p_name ';

      qry.ParamByName('pn').Value := qryUsl.FieldByName('id').Value;

    end
  else
    qry.SQL.Text :=
    'select v.p_year, v.p_month, v.p_mname, v.p_name, ' +
    '(select sum(r_pl.p_summa) from tbl_plan r_pl ' +
    'where r_pl.p_time < v.p_time and r_pl.p_payname=v.p_payname) as pl_rest, ' +
    'sum(v.p_plan) as p_plan, ' +
    '(select sum(r_ft.p_summa) from tbl_fact r_ft ' +
    'where r_ft.p_time < v.p_time and r_ft.p_payname=v.p_payname) as ft_rest, ' +
    'sum(v.p_fact) as p_fact ' +
    'from v_pay v ' +
    'group by v.p_year, v.p_month, v.p_mname, v.p_name ' +
    'order by v.p_year desc, v.p_month desc, v.p_name ';

  qry.Open;
end;

procedure TFormAllpay.LoadUsl;
begin
  qryUsl.Close;
  qryUsl.Open;
end;

procedure TFormAllpay.FormCreate(Sender: TObject);
begin
  LoadData;
  LoadUsl;
end;

procedure TFormAllpay.qryCalcFields(DataSet: TDataSet);
begin
  qrypf.Value := (qryPL_REST.Value + qryP_PLAN.Value) -
                 (qryFT_REST.Value + qryP_FACT.Value);
end;

procedure TFormAllpay.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value : Variant;
begin
{
  if ANode.HasChildren then
    exit;
  if AColumn = dxDBGrid1Column7 then
    begin
      Value := ANode.Values[AColumn.Index];
      if Value > 0 then
        AColor := clRed;
    end;
 }
end;

procedure TFormAllpay.SpeedButton1Click(Sender: TObject);
begin
  LoadData;
end;

procedure TFormAllpay.ceUseparamsChange(Sender: TObject);
begin
  dxDBExtLookupEdit1.Enabled := ceUseparams.Checked;
end;

end.
