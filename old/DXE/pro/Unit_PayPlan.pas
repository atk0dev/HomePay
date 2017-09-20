unit Unit_PayPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery,
  Grids, DBGrids, ComCtrls, ToolWin,
  IBStoredProc, ImgList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid;

type
  TFormPayplan = class(TForm)
    qry: TIBQuery;
    ds: TDataSource;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    spDel: TIBStoredProc;
    ImageList1: TImageList;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1P_TIME: TcxGridDBColumn;
    cxGrid1DBTableView1P_PAYNAME: TcxGridDBColumn;
    cxGrid1DBTableView1P_SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1T_MONTH: TcxGridDBColumn;
    cxGrid1DBTableView1T_YEAR: TcxGridDBColumn;
    cxGrid1DBTableView1TXT: TcxGridDBColumn;
    cxGrid1DBTableView1P_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1P_TXT: TcxGridDBColumn;
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
