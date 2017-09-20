unit Unit_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, StdCtrls, ActnList, ImgList;

type
  TfrmLogin = class(TForm)
    Image1: TImage;
    btnLogin: TSpeedButton;
    btnCancel: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    edtName: TcxTextEdit;
    edtPass: TcxTextEdit;
    ActionList1: TActionList;
    ImageList1: TImageList;
    ActionLogin: TAction;
    ActionCancel: TAction;
    procedure EditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActionLoginExecute(Sender: TObject);
    procedure ActionCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NeedLogin: boolean;
  end;

//var
//  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.ActionCancelExecute(Sender: TObject);
begin
  Self.NeedLogin := false;
  Self.Close;
end;

procedure TfrmLogin.ActionLoginExecute(Sender: TObject);
begin
  Self.NeedLogin := true;
  Self.Close;
end;

procedure TfrmLogin.EditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    begin
      ActionLogin.Execute;
    end;
  if Key = 27 then
    begin
      ActionCancel.Execute;
    end;
end;

end.
