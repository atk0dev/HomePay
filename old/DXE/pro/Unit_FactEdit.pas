unit Unit_FactEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBStoredProc, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Mask, DBCtrlsEh, {GridsEh, }DBGridEh, Buttons,
  Grids, DBGridEhGrouping, GridsEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxCurrencyEdit;

type
  TFormFactEdit = class(TForm)
    qryTime: TIBQuery;
    dsTime: TDataSource;
    qryName: TIBQuery;
    dsName: TDataSource;
    spAdd: TIBStoredProc;
    spEdit: TIBStoredProc;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ceSumm: TcxCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ceSummKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure LoadData;
  public
    { Public declarations }
    isAdd : bool;
    editID : integer;
    timeID : integer;
    nameID : integer;
    summ : Currency;
    
  end;

var
  FormFactEdit: TFormFactEdit;

implementation

uses Unit_DM, Unit_PayFact;

{$R *.dfm}

procedure TFormFactEdit.LoadData;
begin
  if DM.DBMain.Connected then
    begin
      qryTime.Close;
      qryName.Close;

      qryTime.Open;
      qryName.Open;
    end;
end;

procedure TFormFactEdit.FormCreate(Sender: TObject);
begin
  LoadData;
end;

procedure TFormFactEdit.SpeedButton1Click(Sender: TObject);
begin
  if isAdd then
    begin
      spAdd.Close;
      spAdd.ParamByName('PTIME').Value := qryTime.FieldByName('id').Value;
      spAdd.ParamByName('PNAME').Value := qryName.FieldByName('id').Value;
      spAdd.ParamByName('PSUMM').Value := ceSumm.Value;
      spAdd.ExecProc;
    end
  else
    begin
      spEdit.Close;
      spEdit.ParamByName('pid').Value := editID;
      spEdit.ParamByName('PTIME').Value := qryTime.FieldByName('id').Value;
      spEdit.ParamByName('PNAME').Value := qryName.FieldByName('id').Value;
      spEdit.ParamByName('PSUMM').Value := ceSumm.Value;
      spEdit.ExecProc;
    end;

  FormFactEdit.Close;

end;

procedure TFormFactEdit.SpeedButton2Click(Sender: TObject);
begin
  spAdd.Close;
  FormFactEdit.Close;

end;

procedure TFormFactEdit.FormShow(Sender: TObject);
begin
  LoadData;
  if isAdd then
    begin
      ceSumm.Value := 0;
    end
  else
    begin
      ceSumm.Value := summ;
      qryTime.Locate('id', timeID, [loCaseInsensitive]);
      qryName.Locate('id', nameID, [loCaseInsensitive]);
    end;

end;

procedure TFormFactEdit.ceSummKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    SpeedButton1.Click;
end;

end.
