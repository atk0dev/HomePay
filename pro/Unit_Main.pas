unit Unit_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ActnList, Menus, ImgList, StdCtrls, ExtCtrls;

type
  TFormMain = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ActionList1: TActionList;
    Action_Connect: TAction;
    ToolButton3: TToolButton;
    pmSprav: TPopupMenu;
    Action_Month: TAction;
    ActionMonth1: TMenuItem;
    Action_Payname: TAction;
    ActionPayname1: TMenuItem;
    Action_Time: TAction;
    ActionTime1: TMenuItem;
    ToolButton4: TToolButton;
    pmSumms: TPopupMenu;
    Action_Plan: TAction;
    Action_Fact: TAction;
    ActionPlan1: TMenuItem;
    ActionFact1: TMenuItem;
    ImageList1: TImageList;
    ToolButton5: TToolButton;
    Action_Close: TAction;
    ToolButton6: TToolButton;
    Action_Allpay: TAction;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    Action_Last: TAction;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    Action_Evmonpay: TAction;
    N1: TMenuItem;
    Action_Remember: TAction;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    actAbout: TAction;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    GroupBox1: TGroupBox;
    lstMessages: TListBox;
    ActionCheckNewVersion: TAction;
    tmrDelayActions: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action_ConnectExecute(Sender: TObject);
    procedure Action_MonthExecute(Sender: TObject);
    procedure Action_PaynameExecute(Sender: TObject);
    procedure Action_TimeExecute(Sender: TObject);
    procedure Action_PlanExecute(Sender: TObject);
    procedure Action_FactExecute(Sender: TObject);
    procedure Action_CloseExecute(Sender: TObject);
    procedure Action_AllpayExecute(Sender: TObject);
    procedure Action_LastExecute(Sender: TObject);
    procedure Action_EvmonpayExecute(Sender: TObject);
    procedure Action_RememberExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure ActionCheckNewVersionExecute(Sender: TObject);
    procedure tmrDelayActionsTimer(Sender: TObject);
  private
    { Private declarations }
    procedure SetActionsStatus(isEnabled: boolean);
  public
    { Public declarations }
    procedure setConnStatus(isconn : bool);
    procedure RefreshDataInForm(formCaption: string);
  end;

var
  FormMain: TFormMain;

implementation

uses Unit_DM, Unit_Month, Unit_Payname, Unit_Time, Unit_PayPlan,
  Unit_PayFact, Unit_Allpay, Unit_Last, Unit_EvMonPay,
  Unit_Remember, Unit_BaseForm, Unit_AboutForm;

{$R *.dfm}


procedure TFormMain.setConnStatus(isconn : bool);
begin
  if (isconn) then
    begin
      StatusBar1.Panels[0].Text := 'Пользователь: ' + DM.UserName;
      SetActionsStatus(true);
      Action_Connect.Enabled := false;
    end
  else
    begin
      StatusBar1.Panels[0].Text := 'Ошибка подключения';
      SetActionsStatus(false);
      Action_Connect.Enabled := true;
    end;
end;


procedure TFormMain.tmrDelayActionsTimer(Sender: TObject);
begin
  tmrDelayActions.Enabled := false;
  ActionCheckNewVersion.Execute;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.Disconnect;
end;

procedure TFormMain.RefreshDataInForm(formCaption: string);
var
  i : integer;
begin
  for i:=0 to FormMain.MDIChildCount - 1 do
    if FormMain.MDIChildren[i].Caption = formCaption then
      (FormMain.MDIChildren[i] as TfrmBase).RefreshData;
end;

procedure TFormMain.SetActionsStatus(isEnabled: boolean);
begin
  Action_Month.Enabled := isEnabled;
  Action_Payname.Enabled := isEnabled;
  Action_Time.Enabled := isEnabled;
  Action_Plan.Enabled := isEnabled;
  Action_Fact.Enabled := isEnabled;
  Action_Connect.Enabled := True;
  Action_Allpay.Enabled := isEnabled;
  Action_Last.Enabled := isEnabled;
  Action_Evmonpay.Enabled := isEnabled;
  Action_Remember.Enabled := isEnabled;
end;

procedure TFormMain.Action_ConnectExecute(Sender: TObject);
begin
  DM.Connect;
end;

procedure TFormMain.Action_MonthExecute(Sender: TObject);
var
  i : integer;
  f : TFormMonth;
begin
// show month form
  for i:=0 to FormMain.MDIChildCount - 1 do
    if FormMain.MDIChildren[i].Caption = 'Месяцы' then
      FormMain.MDIChildren[i].Close;
  f := TFormMonth.Create(FormMain);
  f.Width := 200;
  f.Height := 350;

end;

procedure TFormMain.Action_PaynameExecute(Sender: TObject);
var
  i : integer;
  f : TFormPayname;
begin
 // show payname form
  for i:=0 to FormMain.MDIChildCount - 1 do
    if FormMain.MDIChildren[i].Caption = 'Платежи' then
      FormMain.MDIChildren[i].Close;
  f := TFormPayname.Create(FormMain);
  f.Width := 700;
  f.Height := 300;

end;

procedure TFormMain.Action_TimeExecute(Sender: TObject);
var
  i : integer;
  f : TFormTime;
begin
// time
  for i:=0 to FormMain.MDIChildCount - 1 do
    if FormMain.MDIChildren[i].Caption = 'Время' then
      FormMain.MDIChildren[i].Close;
  f := TFormTime.Create(FormMain);
  f.Width := 500;
  f.Height := 400;


end;

procedure TFormMain.Action_PlanExecute(Sender: TObject);
var
  i : integer;
  f : TFormPayplan;
begin
// plan
  for i:=0 to FormMain.MDIChildCount - 1 do
    if FormMain.MDIChildren[i].Caption = 'План' then
      FormMain.MDIChildren[i].Close;
  f := TFormPayplan.Create(FormMain);
  f.Height := 400;
  f.Width := 1150;


end;

procedure TFormMain.Action_FactExecute(Sender: TObject);
var
  i : integer;
  f : TFormPayFact;
begin
  // fact
  for i:=0 to FormMain.MDIChildCount - 1 do
    if FormMain.MDIChildren[i].Caption = 'Факт' then
      FormMain.MDIChildren[i].Close;
  f := TFormPayFact.Create(FormMain);
  f.Height := 400;
  f.Width := 1150;

end;

procedure TFormMain.Action_CloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.actAboutExecute(Sender: TObject);
var
  frmAbout : TfrmAbout;
begin
  frmAbout := TfrmAbout.Create(self);
  frmAbout.ShowModal;
  frmAbout.Free;
end;

procedure TFormMain.ActionCheckNewVersionExecute(Sender: TObject);
begin
  lstMessages.Items.Add('No new version available.');
end;

procedure TFormMain.Action_AllpayExecute(Sender: TObject);
var
  i : integer;
  f : TFormAllPay;
begin
// Платежи
  for i:=0 to FormMain.MDIChildCount - 1 do
    if FormMain.MDIChildren[i].Caption = 'Платежи' then
      FormMain.MDIChildren[i].Close;
  f := TFormAllpay.Create(FormMain);
  f.Height := 400;
  f.Width := 950;

end;

procedure TFormMain.Action_LastExecute(Sender: TObject);
var
  i : integer;
  f : TFormLast;
begin
//  На сегодня
  for i:=0 to FormMain.MDIChildCount - 1 do
    if FormMain.MDIChildren[i].Caption = 'На сегодня' then
      FormMain.MDIChildren[i].Close;
  f := TFormLast.Create(FormMain);
  f.Height := 500;
  f.Width := 950;

end;

procedure TFormMain.Action_EvmonpayExecute(Sender: TObject);
var
  i : integer;
  f : TFormEvmonpay;
begin
  for i:=0 to FormMain.MDIChildCount-1 do
    if FormMain.MDIChildren[i].Caption = 'Обязательные ежемесячные платежи' then
      FormMain.MDIChildren[i].Close;
 f := TFormEvmonpay.Create(FormMain);
 f.Height := 400;
 f.Width := 500;

end;

procedure TFormMain.Action_RememberExecute(Sender: TObject);
begin
  Form_Remember.DoAllActions();
  Form_Remember.ShowModal;
end;

end.
