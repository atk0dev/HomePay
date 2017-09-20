unit Unit_PayFact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin,
  DB, IBStoredProc, IBCustomDataSet, IBQuery, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TFormPayFact = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ImageList1: TImageList;
    qry: TIBQuery;
    spDel: TIBStoredProc;
    ds: TDataSource;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
  public
    { Public declarations }
  end;

var
  FormPayFact: TFormPayFact;

implementation

uses Unit_DM, Unit_FactEdit;

{$R *.dfm}

procedure TFormPayFact.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormPayFact.LoadData;
begin
  qry.Close;
  qry.Open;
end;

procedure TFormPayFact.FormCreate(Sender: TObject);
begin
  LoadData;
end;

procedure TFormPayFact.ToolButton1Click(Sender: TObject);
begin
  LoadData;
end;

procedure TFormPayFact.ToolButton3Click(Sender: TObject);
var
  bm : TBookmark;
begin
//  add
  bm := qry.GetBookmark;
  FormFactEdit.Caption := 'Добавить';
  FormFactEdit.isAdd := true;
  FormFactEdit.ShowModal;
  LoadData;

  qry.GotoBookmark(bm);
  qry.FreeBookmark(bm);
end;

procedure TFormPayFact.ToolButton4Click(Sender: TObject);
var
  bm : TBookmark;
begin
  bm := qry.GetBookmark;

  FormFactEdit.Caption := 'Редактировать';
  FormFactEdit.isAdd := false;

  FormFactEdit.editID := qry.FieldByName('id').Value;
  FormFactEdit.timeID := qry.FieldByName('p_time').Value;
  FormFactEdit.nameID := qry.FieldByName('p_payname').Value;
  FormFactEdit.summ := qry.FieldByName('p_summa').Value;


  FormFactEdit.ShowModal;
  LoadData;

  qry.GotoBookmark(bm);
  qry.FreeBookmark(bm);

end;

procedure TFormPayFact.ToolButton5Click(Sender: TObject);
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
