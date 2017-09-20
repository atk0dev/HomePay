unit Unit_EvMonPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBUpdateSQL, ExtCtrls, DBCtrls,
  Grids, DBGrids, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl,
  dxGrClms;

type
  TFormEvmonpay = class(TForm)
    qry: TIBQuery;
    ds: TDataSource;
    DBNavigator1: TDBNavigator;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    upd: TIBUpdateSQL;
    dxDBGrid1Column6: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEvmonpay: TFormEvmonpay;

implementation

uses Unit_DM;

{$R *.dfm}

procedure TFormEvmonpay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qry.ApplyUpdates;
  Action := caFree;
end;

procedure TFormEvmonpay.FormCreate(Sender: TObject);
begin
  qry.Close;
  qry.Open;

end;

procedure TFormEvmonpay.qryBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('p_name').Value := 'Любая хня';
end;

end.
