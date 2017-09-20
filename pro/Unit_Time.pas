unit Unit_Time;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBUpdateSQL, IBQuery, {GridsEh, }DBGridEh,
  ExtCtrls, Buttons, DBCtrls, Grids, DBGridEhGrouping, GridsEh;

type
  TFormTime = class(TForm)
    qry: TIBQuery;
    upd: TIBUpdateSQL;
    ds: TDataSource;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  FormTime: TFormTime;

implementation

uses Unit_DM;

{$R *.dfm}

procedure TFormTime.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qry.ApplyUpdates;
  Action := caFree;
end;

procedure TFormTime.SpeedButton1Click(Sender: TObject);
begin
  qry.ApplyUpdates;
  RefreshData;
end;

procedure TFormTime.SpeedButton2Click(Sender: TObject);
begin
  RefreshData;
end;

procedure TFormTime.FormCreate(Sender: TObject);
begin
  RefreshData;
end;

procedure TFormTime.RefreshData;
begin
  qry.Close;
  qry.Open;
end;

end.
