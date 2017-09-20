unit Unit_Allpay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery,
  Buttons, ExtCtrls,
  Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxCheckBox, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDBEdit, cxDBLookupComboBox;

type
  TFormAllpay = class(TForm)
    qry: TIBQuery;
    ds: TDataSource;
    qryP_YEAR: TIntegerField;
    qryP_MONTH: TIntegerField;
    qryP_MNAME: TIBStringField;
    qryP_NAME: TIBStringField;
    qryP_PLAN: TIBBCDField;
    qryP_FACT: TIBBCDField;
    qrypf: TCurrencyField;
    qryPL_REST: TIBBCDField;
    qryFT_REST: TIBBCDField;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    qryUsl: TIBQuery;
    dsUsl: TDataSource;
    ceUseparams: TcxCheckBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1P_YEAR: TcxGridDBColumn;
    cxGrid1DBTableView1P_MONTH: TcxGridDBColumn;
    cxGrid1DBTableView1P_MNAME: TcxGridDBColumn;
    cxGrid1DBTableView1P_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1P_PLAN: TcxGridDBColumn;
    cxGrid1DBTableView1P_FACT: TcxGridDBColumn;
    cxGrid1DBTableView1pf: TcxGridDBColumn;
    cbbUsl: TcxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
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

      qry.ParamByName('pn').Value := Integer(cbbUsl.Properties.Items.Objects[cbbUsl.SelectedItem]);

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

  cbbUsl.Clear;
  while not qryUsl.Eof do
  begin
    cbbUsl.Properties.Items.AddObject(qryUsl.FieldByName('P_NAME').AsString, TObject(qryUsl.FieldByName('id').AsInteger));
    qryUsl.Next;
  end;
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

procedure TFormAllpay.SpeedButton1Click(Sender: TObject);
begin
  LoadData;
end;

procedure TFormAllpay.ceUseparamsChange(Sender: TObject);
begin
  cbbUsl.Enabled := ceUseparams.Checked;
end;

end.
