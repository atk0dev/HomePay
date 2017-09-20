unit Unit_Month;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, {GridsEh, }DBGridEh, Grids,
  DBGridEhGrouping, GridsEh;

type
  TFormMonth = class(TForm)
    qry: TIBQuery;
    ds: TDataSource;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMonth: TFormMonth;

implementation

uses Unit_DM;

{$R *.dfm}

procedure TFormMonth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormMonth.FormCreate(Sender: TObject);
begin
  qry.Close;
  qry.Open;
end;

end.
