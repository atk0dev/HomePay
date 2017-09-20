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
  cxCurrencyEdit,
  Unit_BaseForm, Buttons;

type
  TFormLast = class(TfrmBase)
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
    Panel2: TPanel;
    pnlRight: TPanel;
    pnlLeft: TPanel;
    SpeedButton1: TSpeedButton;
    edtDolg: TcxCurrencyEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure dsDateDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure LoadDate;
    procedure LoadData;
    procedure LoadCurrentBalance;
  public
    { Public declarations }
    procedure RefreshData(); override;
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

procedure TFormLast.RefreshData;
begin
  inherited;
  LoadData;
  LoadCurrentBalance;
end;

procedure TFormLast.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  LoadData;
  LoadCurrentBalance;
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
  qry.ParamByName('userid').Value := dm.UserId;
  qry.Open;
  qry.GotoBookmark(bm);
  qry.FreeBookmark(bm);
end;

procedure TFormLast.cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  ARec : TRect;
  i: integer;
begin
  inherited;
  ARec := AViewInfo.Bounds;
  i:=cxGrid2DBTableView1.GetColumnByFieldName('dolg_curr').Index;
  if AViewInfo.GridRecord.Values[i] > 0 then
  begin
    ACanvas.Font.Color:= clRed;
    ACanvas.Font.Style := [fsBold];
  end;
  ACanvas.FillRect(ARec);
end;

procedure TFormLast.dsDateDataChange(Sender: TObject; Field: TField);
begin
  LoadData;
  LoadCurrentBalance;
end;

procedure TFormLast.FormCreate(Sender: TObject);
begin
  LoadDate;
  ShowCurrentMonth(qryDate, 't_year', 't_month');
end;

procedure TFormLast.LoadCurrentBalance;
begin
  qryNeedPay.Close;
  qryNeedPay.ParamByName('tm').Value := qryDate.fieldbyname('id').Value;
  qryNeedPay.ParamByName('userid').Value := dm.UserId;
  qryNeedPay.Open;
  edtNeedPay.Text := FloatToStr(qryNeedPay.FieldByName('sum').AsFloat);

  qryAlreadyPay.Close;
  qryAlreadyPay.ParamByName('tm').Value := qryDate.fieldbyname('id').Value;
  qryAlreadyPay.ParamByName('userid').Value := dm.UserId;
  qryAlreadyPay.Open;
  edtAlreadyPay.Text := FloatToStr(qryAlreadyPay.FieldByName('sum').AsFloat);

  edtDolg.Text := FloatToStr(qryNeedPay.FieldByName('sum').AsFloat - qryAlreadyPay.FieldByName('sum').AsFloat);
end;

end.
