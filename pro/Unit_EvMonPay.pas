unit Unit_EvMonPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBUpdateSQL, ExtCtrls, DBCtrls,
  Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBLookupComboBox, cxLabel, cxNavigator, cxDBNavigator, cxSplitter, StdCtrls,
  ActnList, cxContainer, cxImage, jpeg;

type
  TFormEvmonpay = class(TForm)
    dsMondatoryList: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1P_NAME: TcxGridDBColumn;
    qryNotMondatoryList: TIBQuery;
    dsNotMindatoryList: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1P_NAME: TcxGridDBColumn;
    ActionList1: TActionList;
    actDoMondatory: TAction;
    actDoNotMondatory: TAction;
    qryDoMondatory: TIBQuery;
    qryDoNotMondatory: TIBQuery;
    Panel1: TPanel;
    imgTop: TcxImage;
    imgBottom: TcxImage;
    Panel2: TPanel;
    Splitter1: TSplitter;
    qryMondatoryList: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actDoMondatoryExecute(Sender: TObject);
    procedure actDoNotMondatoryExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure imgTopClick(Sender: TObject);
    procedure imgBottomClick(Sender: TObject);
    procedure qryNotMondatoryListAfterOpen(DataSet: TDataSet);
    procedure qryMondatoryListAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure GetNotMondatoryPayList;
    procedure GetMondatoryPayList;
  public
    { Public declarations }
  end;

var
  FormEvmonpay: TFormEvmonpay;

implementation

uses Unit_DM;

{$R *.dfm}

procedure TFormEvmonpay.actDoMondatoryExecute(Sender: TObject);
begin
  //do pay in qryNotMindatoryList - Mondatory
  qryDoMondatory.ParamByName('id').Value := qryNotMondatoryList.FieldByName('id').Value;
  qryDoMondatory.ParamByName('p_userid').Value := DM.UserId;
  qryDoMondatory.ExecSQL;

  GetNotMondatoryPayList;
  GetMondatoryPayList;

end;

procedure TFormEvmonpay.actDoNotMondatoryExecute(Sender: TObject);
begin
  //do pay in qryMondatoryList - Not Mondatory
  qryDoNotMondatory.ParamByName('id').Value := qryMondatoryList.FieldByName('id').Value;
  qryDoNotMondatory.ParamByName('p_userid').Value := DM.UserId;
  qryDoNotMondatory.ExecSQL;

  GetNotMondatoryPayList;
  GetMondatoryPayList;

end;

procedure TFormEvmonpay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormEvmonpay.FormCreate(Sender: TObject);
begin
  GetNotMondatoryPayList;
  GetMondatoryPayList;
end;

procedure TFormEvmonpay.FormResize(Sender: TObject);
begin
  imgTop.Height := Round(self.Height / 2);
end;

procedure TFormEvmonpay.GetMondatoryPayList;
begin
  qryMondatoryList.Close;
  qryMondatoryList.ParamByName('p_userid').Value := DM.UserId;
  qryMondatoryList.Open;
end;

procedure TFormEvmonpay.GetNotMondatoryPayList;
begin
  qryNotMondatoryList.Close;
  qryNotMondatoryList.ParamByName('p_userid').Value := DM.UserId;
  qryNotMondatoryList.Open;
end;

procedure TFormEvmonpay.imgBottomClick(Sender: TObject);
begin
  if qryMondatoryList.RecordCount > 0 then
    actDoNotMondatory.Execute;
end;

procedure TFormEvmonpay.imgTopClick(Sender: TObject);
begin
  if qryNotMondatoryList.RecordCount > 0 then
    actDoMondatory.Execute;
end;

procedure TFormEvmonpay.qryMondatoryListAfterOpen(DataSet: TDataSet);
begin
  if qryMondatoryList.RecordCount > 0 then
  begin
    imgBottom.Enabled := true;
    imgBottom.Visible := true;
  end
  else
  begin
    imgBottom.Enabled := false;
    imgBottom.Visible := false;
  end;
end;

procedure TFormEvmonpay.qryNotMondatoryListAfterOpen(DataSet: TDataSet);
begin
  if qryNotMondatoryList.RecordCount > 0 then
  begin
    imgTop.Enabled := true;
    imgTop.Visible := true;
  end
  else
  begin
    imgTop.Enabled := false;
    imgTop.Visible := false;
  end;
end;

end.
