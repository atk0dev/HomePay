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
  cxClasses, cxGridCustomView, cxGrid, cxDBEdit, cxDBLookupComboBox, Menus,
  ComCtrls, ToolWin, ImgList, Unit_BaseForm, cxCurrencyEdit;

type
  TFormAllpay = class(TfrmBase)
    ds: TDataSource;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    qryUsl: TIBQuery;
    dsUsl: TDataSource;
    ceUseparams: TcxCheckBox;
    gridPaysDBTableView1: TcxGridDBTableView;
    gridPaysLevel1: TcxGridLevel;
    gridPays: TcxGrid;
    gridPaysDBTableView1P_YEAR: TcxGridDBColumn;
    gridPaysDBTableView1P_MONTH: TcxGridDBColumn;
    gridPaysDBTableView1P_MNAME: TcxGridDBColumn;
    gridPaysDBTableView1P_NAME: TcxGridDBColumn;
    gridPaysDBTableView1P_PLAN: TcxGridDBColumn;
    gridPaysDBTableView1P_FACT: TcxGridDBColumn;
    gridPaysDBTableView1pf: TcxGridDBColumn;
    cbbUsl: TcxComboBox;
    Panel2: TPanel;
    menuPlan: TPopupMenu;
    Add1: TMenuItem;
    View1: TMenuItem;
    ToolBar1: TToolBar;
    btnPlan: TToolButton;
    btnFact: TToolButton;
    menuFact: TPopupMenu;
    Add2: TMenuItem;
    Edit1: TMenuItem;
    ImageList1: TImageList;
    ImageList2: TImageList;
    qry: TIBQuery;
    qryP_YEAR: TIntegerField;
    qryP_MONTH: TIntegerField;
    qryP_MNAME: TIBStringField;
    qryP_NAME: TIBStringField;
    qryP_PAYNAME: TIntegerField;
    qryP_TIME: TIntegerField;
    qryPL_REST: TIBBCDField;
    qryP_PLAN: TIBBCDField;
    qryFT_REST: TIBBCDField;
    qryP_FACT: TIBBCDField;
    qryP_USERID: TIntegerField;
    qrypf: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ceUseparamsChange(Sender: TObject);
    procedure Add1Click(Sender: TObject);
    procedure View1Click(Sender: TObject);
    procedure Add2Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
    procedure LoadUsl;
  public
    { Public declarations }
    procedure RefreshData(); override;
  end;

var
  FormAllpay: TFormAllpay;

implementation

uses Unit_DM, Unit_PlanEdit, Unit_FactEdit, Unit_Main, Unit_PayFact,
  Unit_PayPlan;

{$R *.dfm}

procedure TFormAllpay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormAllpay.LoadData;
var
  bm : TBookmark;
begin
  bm := qry.GetBookmark;
  try
    qry.Close;
    qry.SQL.Clear;
    if (ceUseparams.Checked) then
    begin
      qry.SQL.Text :=
        'select v.p_year, v.p_month, v.p_mname, v.p_name, v.p_payname, v.p_time,'
        + '(select sum(r_pl.p_summa) from tbl_plan r_pl ' +
        'where r_pl.p_time < v.p_time and r_pl.p_payname=v.p_payname  and r_pl.userid=:userid) as pl_rest, '
        + 'sum(v.p_plan) as p_plan, ' +
        '(select sum(r_ft.p_summa) from tbl_fact r_ft ' +
        'where r_ft.p_time < v.p_time and r_ft.p_payname=v. p_payname and r_ft.userid=:userid) as ft_rest, '
        + 'sum(v.p_fact) as p_fact, v.p_userid from v_pay v where v.p_payname= :pn and v.p_userid = :userid ' +
        'group by v.p_year, v.p_month, v.p_mname, v.p_name, p_payname, v.p_time, v.p_userid '
        + 'order by v.p_year desc, v.p_month desc, v.p_name ';

      qry.ParamByName('pn').Value :=
        Integer(cbbUsl.Properties.Items.Objects[cbbUsl.SelectedItem]);

    end
    else
      qry.SQL.Text :=
        'select v.p_year, v.p_month, v.p_mname, v.p_name, v.p_payname, v.p_time,'
        + '(select sum(r_pl.p_summa) from tbl_plan r_pl ' +
        'where r_pl.p_time < v.p_time and r_pl.p_payname=v.p_payname and r_pl.userid=:userid) as pl_rest, '
        + 'sum(v.p_plan) as p_plan, ' +
        '(select sum(r_ft.p_summa) from tbl_fact r_ft ' +
        'where r_ft.p_time < v.p_time and r_ft.p_payname=v.p_payname and r_ft.userid=:userid) as ft_rest, '
        + 'sum(v.p_fact) as p_fact, v.p_userid from v_pay v where v.p_userid = :userid ' +
        'group by v.p_year, v.p_month, v.p_mname, v.p_name, p_payname, v.p_time, v.p_userid '
        + 'order by v.p_year desc, v.p_month desc, v.p_name ';

    qry.ParamByName('userid').Value := dm.UserId;
    qry.Open;

    if Length(bm) > 0 then
      if (bm[0] <> 0) and (bm[1] <> 0) and (bm[2] <> 0) and (bm[3] <> 0)then
      begin
        qry.GotoBookmark(bm);
      end;
  finally
    qry.FreeBookmark(bm);
  end;
end;

procedure TFormAllpay.LoadUsl;
begin
  qryUsl.Close;
  qryUsl.ParamByName('userid').Value := dm.UserId;
  qryUsl.Open;

  cbbUsl.Clear;
  while not qryUsl.Eof do
  begin
    cbbUsl.Properties.Items.AddObject(qryUsl.FieldByName('P_NAME').AsString,
      TObject(qryUsl.FieldByName('id').AsInteger));
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
  qrypf.Value := (qryPL_REST.Value + qryP_PLAN.Value) -  (qryFT_REST.Value + qryP_FACT.Value);
end;

procedure TFormAllpay.RefreshData;
begin
  inherited;
  LoadData;
end;

procedure TFormAllpay.SpeedButton1Click(Sender: TObject);
begin
  LoadData;
end;

procedure TFormAllpay.View1Click(Sender: TObject);
var
  i: Integer;
  f: TFormPayplan;
begin
  if qry.RecordCount > 0 then
  begin
    for i := 0 to FormMain.MDIChildCount - 1 do
      if FormMain.MDIChildren[i].Caption = 'План' then
        FormMain.MDIChildren[i].Close;
    f := TFormPayplan.Create(FormMain);
    f.Height := 400;
    f.Width := 1150;

    with f.gridPaysDBTableView1.DataController.Filter do
    begin
      BeginUpdate;
      try
        Root.Clear;
        Root.BoolOperatorKind := fboAnd;
        Root.AddItem(f.gridPaysDBTableView1TXT, foEqual,
          qry.FieldByName('P_MNAME').AsString, qry.FieldByName('P_MNAME')
          .AsString);
        Root.AddItem(f.gridPaysDBTableView1P_NAME, foEqual,
          qry.FieldByName('P_NAME').AsString, qry.FieldByName('P_NAME')
          .AsString);
        Active := True
      finally
        EndUpdate;
      end;
    end;
  end;
end;

procedure TFormAllpay.Add1Click(Sender: TObject);
begin
  if qry.RecordCount > 0 then
  begin
    FormPlanEdit.Caption := 'Редактировать план';
    FormPlanEdit.isAdd := True;
    FormPlanEdit.nameID := qry.FieldByName('P_PAYNAME').Value;
    FormPlanEdit.timeID := qry.FieldByName('p_time').Value;
    FormPlanEdit.ShowModal;
    LoadData;
  end;
end;

procedure TFormAllpay.Add2Click(Sender: TObject);
begin
  if qry.RecordCount > 0 then
  begin
    FormFactEdit.Caption := 'Редактировать факт';
    FormFactEdit.isAdd := True;
    FormFactEdit.nameID := qry.FieldByName('P_PAYNAME').Value;
    FormFactEdit.timeID := qry.FieldByName('p_time').Value;
    FormFactEdit.ShowModal;
    LoadData;
  end;
end;

procedure TFormAllpay.ceUseparamsChange(Sender: TObject);
begin
  cbbUsl.Enabled := ceUseparams.Checked;
end;

procedure TFormAllpay.Edit1Click(Sender: TObject);
var
  i: Integer;
  f: TFormPayFact;
begin
  if qry.RecordCount > 0 then
  begin
    for i := 0 to FormMain.MDIChildCount - 1 do
      if FormMain.MDIChildren[i].Caption = 'Факт' then
        FormMain.MDIChildren[i].Close;
    f := TFormPayFact.Create(FormMain);
    f.Height := 400;
    f.Width := 1150;

    with f.cxGrid1DBTableView1.DataController.Filter do
    begin
      BeginUpdate;
      try
        Root.Clear;
        Root.BoolOperatorKind := fboAnd;
        Root.AddItem(f.cxGrid1DBTableView1TXT, foEqual,
          qry.FieldByName('P_MNAME').AsString, qry.FieldByName('P_MNAME')
          .AsString);
        Root.AddItem(f.cxGrid1DBTableView1P_NAME, foEqual,
          qry.FieldByName('P_NAME').AsString, qry.FieldByName('P_NAME')
          .AsString);
        Active := True
      finally
        EndUpdate;
      end;
    end;
  end;

end;

end.
