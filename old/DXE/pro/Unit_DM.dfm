object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 342
  Width = 394
  object DBMain: TIBDatabase
    DatabaseName = 'F:\work\HomePay\db\HOMEPAYDB.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = transaction
    AfterConnect = DBMainAfterConnect
    AfterDisconnect = DBMainAfterDisconnect
    Left = 72
    Top = 24
  end
  object transaction: TIBTransaction
    DefaultDatabase = DBMain
    Left = 168
    Top = 64
  end
end
