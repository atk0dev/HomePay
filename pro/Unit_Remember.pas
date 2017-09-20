unit Unit_Remember;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, IBCustomDataSet, IBQuery, DateUtils,
  {GridsEh, }DBGridEh, DBGridEhGrouping, GridsEh, ExtCtrls, Buttons, jpeg;

type
  TForm_Remember = class(TForm)
    lblToday: TLabel;
    Label1: TLabel;
    qry: TIBQuery;
    ds: TDataSource;
    grdPays: TDBGridEh;
    Panel1: TPanel;
    btnClose: TSpeedButton;
    imgOk: TImage;
    lblMessage: TLabel;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DoAllActions();
  end;

var
  Form_Remember: TForm_Remember;

implementation

uses Unit_DM;

{$R *.dfm}

procedure TForm_Remember.btnCloseClick(Sender: TObject);
begin
  qry.Close;
  Close;
end;

procedure TForm_Remember.DoAllActions;
var
  dt : TDate;
begin
  dt := now();
  lblToday.Caption := DateToStr(dt);

  qry.Close;
  qry.Params.ParamByName('y').Value := YearOf(dt);
  qry.Params.ParamByName('m').Value := MonthOf(dt);
  qry.Params.ParamByName('p_userid').Value := dm.UserId;
  qry.Open;

  if qry.RecordCount > 0 then
  begin
    imgOk.Visible := false;
    imgOk.Enabled := false;
    imgOk.Align := alNone;
    grdPays.Visible := true;
    grdPays.Enabled := true;
    grdPays.Align := alClient;
    lblMessage.Caption := 'Необходимо заплатить:';
  end
  else
  begin
    imgOk.Visible := true;
    imgOk.Enabled := true;
    imgOk.Align := alClient;
    grdPays.Visible := false;
    grdPays.Enabled := false;
    grdPays.Align := alNone;
    lblMessage.Caption := 'Ничего платить не надо!';
  end;

end;

end.
