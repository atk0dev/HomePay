unit Unit_PayFact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBStoredProc, IBCustomDataSet, IBQuery, dxDBTLCl, dxGrClms;

type
  TFormPayFact = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ImageList1: TImageList;
    dxDBGrid1: TdxDBGrid;
    qry: TIBQuery;
    spDel: TIBStoredProc;
    ds: TDataSource;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridCurrencyColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
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
