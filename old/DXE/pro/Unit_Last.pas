unit Unit_Last;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, IBCustomDataSet, IBQuery, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxContainer, cxTextEdit,
  cxCurrencyEdit;

type
  TFormLast = class(TForm)
    qry: TIBQuery;
    ds: TDataSource;
    qryID: TIntegerField;
    qryP_NAME: TIBStringField;
    qryPL_PREV: TIBBCDField;
    qryFT_PREV: TIBBCDField;
    qryPL_CURR: TIBBCDField;
    qryFT_CURR: TIBBCDField;
    qrydolg_before: TCurrencyField;
    qrydolg_curr: TCurrencyField;
    Panel1: TPanel;
    qryDate: TIBQuery;
    dsDate: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    qryNeedPay: TIBQuery;
    qryAlreadyPay: TIBQuery;
    lbl1: TLabel;
    lbl2: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1T_MONTH: TcxGridDBColumn;
    cxGrid1DBTableView1TXT: TcxGridDBColumn;
    cxGrid1DBTableView1T_YEAR: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1P_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1PL_PREV: TcxGridDBColumn;
    cxGrid2DBTableView1FT_PREV: TcxGridDBColumn;
    cxGrid2DBTableView1PL_CURR: TcxGridDBColumn;
    cxGrid2DBTableView1FT_CURR: TcxGridDBColumn;
    cxGrid2DBTableView1dolg_prev: TcxGridDBColumn;
    cxGrid2DBTableView1dolg_curr: TcxGridDBColumn;
    edtNeedPay: TcxCurrencyEdit;
    edtAlreadyPay: TcxCurrencyEdit;
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
