unit Unit_Payname;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, {GridsEh,} DBGridEh, ExtCtrls,
  DBCtrls, IBUpdateSQL, StdCtrls, Buttons, Grids, DBGridEhGrouping, GridsEh, FIBDataSet, pFIBDataSet, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBGrids, cxLabel, cxTextEdit;

type
  TFormPayname = class(TForm)
    dsetPays: TpFIBDataSet;
    dsrcPays: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1P_DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1P_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1P_USERID: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dsetPaysBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPayname: TFormPayname;

implementation

uses Unit_DM, Unit_Main;

{$R *.dfm}

procedure TFormPayname.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsetPays.ApplyUpdates;
  Action := caFree;
end;

procedure TFormPayname.FormCreate(Sender: TObject);
begin
  if dsetPays.Active then
    dsetPays.Close;
  dsetPays.ParamByName('p_userid').Value := DM.UserId;
  dsetPays.Open;

end;

procedure TFormPayname.FormDestroy(Sender: TObject);
begin
  dsetPays.Close;
end;

procedure TFormPayname.dsetPaysBeforePost(DataSet: TDataSet);
begin
  DataSet.FindField('P_USERID').Value := DM.UserId;
end;

end.
