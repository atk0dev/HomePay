object DM: TDM
  OldCreateOrder = False
  Left = 192
  Top = 107
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
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    AfterConnect = DBMainAfterConnect
    AfterDisconnect = DBMainAfterDisconnect
    Left = 72
    Top = 24
  end
  object transaction: TIBTransaction
    Active = False
    DefaultDatabase = DBMain
    AutoStopAction = saNone
    Left = 168
    Top = 64
  end
end
