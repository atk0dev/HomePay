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
  ActnList;

type
  TFormEvmonpay = class(TForm)
    qryMondatoryList: TIBQuery;
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
    Button1: TButton;
    Button2: TButton;
    qryDoMondatory: TIBQuery;
    qryDoNotMondatory: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actDoMondatoryExecute(Sender: TObject);
    procedure actDoNotMondatoryExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  qryDoMondatory.ExecSQL;

  GetNotMondatoryPayList;
  GetMondatoryPayList;

end;

procedure TFormEvmonpay.actDoNotMondatoryExecute(Sender: TObject);
begin
  //do pay in qryMondatoryList - Not Mondatory
  qryDoNotMondatory.ParamByName('id').Value := qryMondatoryList.FieldByName('id').Value;
  qryDoNotMondatory.ExecSQL;

  GetNotMondatoryPayList;
  GetMondatoryPayList;

end;

procedure TFormEvmonpay.Button1Click(Sender: TObject);
begin
  actDoMondatory.Execute;
end;

procedure TFormEvmonpay.Button2Click(Sender: TObject);
begin
  actDoNotMondatory.Execute;
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

procedure TFormEvmonpay.GetMondatoryPayList;
begin
  qryMondatoryList.Close;
  qryMondatoryList.Open;

end;

procedure TFormEvmonpay.GetNotMondatoryPayList;
begin
  qryNotMondatoryList.Close;
  qryNotMondatoryList.Open;
end;

end.
