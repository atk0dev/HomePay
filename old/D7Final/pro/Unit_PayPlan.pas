unit Unit_PayPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBTL, Grids, DBGrids, dxDBGrid, ComCtrls, ToolWin, dxDBTLCl,
  dxGrClms, IBStoredProc, ImgList;

type
  TFormPayplan = class(TForm)
    qry: TIBQuery;
    ds: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    dxDBGrid1Column5: TdxDBGridCurrencyColumn;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    spDel: TIBStoredProc;
    ImageList1: TImageList;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxDBGrid1Column7: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
  public
    { Public declarations }
  end;

var
  FormPayplan: TFormPayplan;

implementation

uses Unit_DM, Unit_PlanEdit;

{$R *.dfm}

procedure TFormPayplan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormPayplan.LoadData;
begin
  qry.Close;
  qry.Open;
end;

procedure TFormPayplan.FormCreate(Sender: TObject);
begin
  LoadData;
end;

procedure TFormPayplan.ToolButton1Click(Sender: TObject);
begin
  LoadData;
end;

procedure TFormPayplan.ToolButton2Click(Sender: TObject);
var
 bm : TBookmark;
begin
//  add
  bm := qry.GetBookmark;
  FormPlanEdit.Caption := 'Добавить';
  FormPlanEdit.isAdd := true;
  FormPlanEdit.ShowModal;
  LoadData;
  qry.GotoBookmark(bm);
  qry.FreeBookmark(bm);

end;

procedure TFormPayplan.ToolButton3Click(Sender: TObject);
var
 bm : TBookmark;
begin
  bm := qry.GetBookmark;
  FormPlanEdit.Caption := 'Редактировать';
  FormPlanEdit.isAdd := false;

  FormPlanEdit.editID := qry.FieldByName('id').Value;
  FormPlanEdit.timeID := qry.FieldByName('p_time').Value;
  FormPlanEdit.nameID := qry.FieldByName('p_payname').Value;
  FormPlanEdit.summ := qry.FieldByName('p_summa').Value;


  FormPlanEdit.ShowModal;
  LoadData;

  qry.GotoBookmark(bm);
  qry.FreeBookmark(bm);
end;

procedure TFormPayplan.ToolButton4Click(Sender: TObject);
begin
 if MessageDlg('Удалить платеж № ' + qry.FieldByName('id').AsString,
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    spDel.Close;
    spDel.ParamByName('pid').Value := qry.FieldByName('id').Value;
    spDel.ExecProc;
    LoadData;
  end;
end;

end.
