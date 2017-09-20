unit Unit_BaseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, db, IBQuery, DateUtils;

type
  TfrmBase = class(TForm)
  private
    { Private declarations }

  public
    { Public declarations }
    procedure ShowCurrentMonth(q: TIBQuery; strYear, strMonth: string);
    procedure RefreshData(); virtual; abstract;
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

{ TfrmBase }


procedure TfrmBase.ShowCurrentMonth(q: TIBQuery; strYear, strMonth: string);
var
  dt : TDateTime;
begin
  dt := Date;

  q.First;
  while not q.Eof do
    begin
      if (q.FieldByName(strYear).AsInteger = YearOf(dt)) and
         (q.FieldByName(strMonth).AsInteger = MonthOf(dt)) then
        exit
      else
        q.Next;
    end;
end;

end.
