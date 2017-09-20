object FormPayname: TFormPayname
  Left = 404
  Top = 305
  Caption = #1055#1083#1072#1090#1077#1078#1080
  ClientHeight = 473
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 757
    Height = 473
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 87
    ExplicitTop = 92
    ExplicitWidth = 542
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsrcPays
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'ID'
        PropertiesClassName = 'TcxLabelProperties'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle1
        Width = 50
      end
      object cxGrid1DBTableView1P_NAME: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'P_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle2
        Width = 300
      end
      object cxGrid1DBTableView1P_DESCR: TcxGridDBColumn
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        DataBinding.FieldName = 'P_DESCR'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle2
        Width = 350
      end
      object cxGrid1DBTableView1P_USERID: TcxGridDBColumn
        DataBinding.FieldName = 'P_USERID'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dsetPays: TpFIBDataSet
    UpdateSQL.Strings = (
      'update TBL_PAYNAME'
      'set'
      '  P_DESCR = :P_DESCR,'
      '  P_NAME = :P_NAME,'
      '  P_USERID = :P_USERID'
      'where'
      '  ID = :OLD_ID')
    DeleteSQL.Strings = (
      'delete from TBL_PAYNAME'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TBL_PAYNAME'
      '  (P_DESCR, P_NAME, P_USERID)'
      'values'
      '  (:P_DESCR, :P_NAME, :P_USERID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  P_DESCR,'
      '  P_NAME,'
      '  P_USERID'
      'from TBL_PAYNAME '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select ID, P_DESCR, P_NAME, p_userid from TBL_PAYNAME'
      'where tbl_payname.p_userid=:p_userid'
      'order by id')
    AutoUpdateOptions.KeyFields = 'ID'
    Active = True
    BeforePost = dsetPaysBeforePost
    Transaction = DM.TransactionExt
    Database = DM.DBMainExt
    AutoCommit = True
    Left = 64
    Top = 28
  end
  object dsrcPays: TDataSource
    DataSet = dsetPays
    Left = 128
    Top = 40
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 220
    Top = 36
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clGray
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMoneyGreen
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
end
