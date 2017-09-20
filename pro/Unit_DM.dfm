object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 342
  Width = 394
  object DBMain: TIBDatabase
    DatabaseName = 'localhost:d:\work\HomePay\source\trunk\pro\exe\HOMEPAYDB.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = Transaction
    ServerType = 'IBServer'
    AfterConnect = DBMainAfterConnect
    AfterDisconnect = DBMainAfterDisconnect
    Left = 72
    Top = 24
  end
  object Transaction: TIBTransaction
    DefaultDatabase = DBMain
    Left = 132
    Top = 36
  end
  object qryUserId: TIBQuery
    Database = DBMain
    Transaction = Transaction
    SQL.Strings = (
      'select id from tbl_users where username=:username')
    Left = 24
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'username'
        ParamType = ptUnknown
      end>
  end
  object DBMainExt: TpFIBDatabase
    DBName = 'localhost:d:\work\HomePay\source\trunk\pro\exe\HOMEPAYDB.GDB'
    DBParams.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1251')
    DefaultTransaction = TransactionExt
    SQLDialect = 1
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 136
    Top = 164
  end
  object TransactionExt: TpFIBTransaction
    DefaultDatabase = DBMainExt
    TimeoutAction = TARollback
    Left = 208
    Top = 192
  end
end
