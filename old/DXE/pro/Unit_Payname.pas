unit Unit_Payname;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, {GridsEh,} DBGridEh, ExtCtrls,
  DBCtrls, IBUpdateSQL, StdCtrls, Buttons, Grids, DBGridEhGrouping, GridsEh;

type
  TFormPayname = class(TForm)
    qry: TIBQuery;
    ds: TDataSource;
    DBGridEh1: TDBGridEh;
    DBNavigator1: TDBNavigator;
    upd: TIBUpdateSQL;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  qry.ApplyUpdates;
  Action := caFree;
end;

procedure TFormPayname.SpeedButton1Click(Sender: TObject);
begin
  qry.ApplyUpdates;
end;

procedure TFormPayname.FormCreate(Sender: TObject);
begin
  qry.Close;
  qry.Open;
end;

end.
