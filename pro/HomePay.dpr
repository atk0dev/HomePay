program HomePay;

uses
  Forms,
  Unit_Main in 'Unit_Main.pas' {FormMain},
  Unit_DM in 'Unit_DM.pas' {DM: TDataModule},
  Unit_Month in 'Unit_Month.pas' {FormMonth},
  Unit_Payname in 'Unit_Payname.pas' {FormPayname},
  Unit_Time in 'Unit_Time.pas' {FormTime},
  Unit_PayPlan in 'Unit_PayPlan.pas' {FormPayplan},
  Unit_PlanEdit in 'Unit_PlanEdit.pas' {FormPlanEdit},
  Unit_PayFact in 'Unit_PayFact.pas' {FormPayFact},
  Unit_FactEdit in 'Unit_FactEdit.pas' {FormFactEdit},
  Unit_Allpay in 'Unit_Allpay.pas' {FormAllpay},
  Unit_Last in 'Unit_Last.pas' {FormLast},
  Unit_EvMonPay in 'Unit_EvMonPay.pas' {FormEvmonpay},
  Unit_Remember in 'Unit_Remember.pas' {Form_Remember},
  Unit_BaseForm in 'Unit_BaseForm.pas' {frmBase},
  Unit_AboutForm in 'Unit_AboutForm.pas' {frmAbout},
  Unit_Login in 'Unit_Login.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormPlanEdit, FormPlanEdit);
  Application.CreateForm(TFormFactEdit, FormFactEdit);
  Application.CreateForm(TForm_Remember, Form_Remember);
  //Application.CreateForm(TfrmLogin, frmLogin);
  //Application.CreateForm(TfrmNewYear, frmNewYear);
  //  Application.CreateForm(TfrmAbout, frmAbout);
  //  Application.CreateForm(TfrmBase, frmBase);
  //  Application.CreateForm(TFormEvmonpay, FormEvmonpay);
  //  Application.CreateForm(TFormKvit, FormKvit);
  //  Application.CreateForm(TFormLast, FormLast);
  //  Application.CreateForm(TFormAllpay, FormAllpay);
  //  Application.CreateForm(TFormPayFact, FormPayFact);
  //  Application.CreateForm(TFormPayplan, FormPayplan);
  //  Application.CreateForm(TFormTime, FormTime);
  //  Application.CreateForm(TFormPayname, FormPayname);
  //  Application.CreateForm(TFormMonth, FormMonth);
  Application.Run;
end.
