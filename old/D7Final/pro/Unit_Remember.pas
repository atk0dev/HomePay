unit Unit_Remember;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, IBCustomDataSet, IBQuery, DateUtils,
  {GridsEh, }DBGridEh;

type
  TForm_Remember = class(TForm)
    lblToday: TLabel;
    Label1: TLabel;
    qry: TIBQuery;
    ds: TDataSource;
    DBGridEh1: TDBGridEh;
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

procedure TForm_Remember.DoAllActions;
var
  dt : TDate;
begin
  dt := now();
  lblToday.Caption := DateToStr(dt);

  qry.Close;
  qry.Params.ParamByName('y').Value := YearOf(dt);
  qry.Params.ParamByName('m').Value := MonthOf(dt);
  qry.Open;

end;

end.
