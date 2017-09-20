object FormEvmonpay: TFormEvmonpay
  Left = 453
  Top = 236
  Caption = #1054#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1077#1078#1077#1084#1077#1089#1103#1095#1085#1099#1077' '#1087#1083#1072#1090#1077#1078#1080
  ClientHeight = 469
  ClientWidth = 702
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 24
    Top = 240
    Width = 426
    Height = 224
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.SkinName = 'Office2007Green'
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsMondatoryList
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'ID'
        PropertiesClassName = 'TcxLabelProperties'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
      end
      object cxGrid1DBTableView1P_NAME: TcxGridDBColumn
        Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
        DataBinding.FieldName = 'P_NAME'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 300
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 0
    Width = 577
    Height = 225
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.SkinName = 'Office2007Green'
    object cxGrid2DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsNotMindatoryList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid2DBTableView1ID: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
      end
      object cxGrid2DBTableView1P_NAME: TcxGridDBColumn
        Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
        DataBinding.FieldName = 'P_NAME'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 300
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object Button1: TButton
    Left = 592
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 536
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
  object qryMondatoryList: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    AutoCalcFields = False
    CachedUpdates = True
    ParamCheck = False
    SQL.Strings = (
      'select e.ID, p.p_name'
      'from EVMONPAY e, tbl_payname p'
      'where e.id=p.id')
    Left = 56
    Top = 296
  end
  object dsMondatoryList: TDataSource
    DataSet = qryMondatoryList
    Left = 56
    Top = 344
  end
  object qryNotMondatoryList: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    SQL.Strings = (
      'select pn.id, pn.p_name'
      'from tbl_payname pn'
      'where pn.id not in (select id from evmonpay)')
    Left = 56
    Top = 48
  end
  object dsNotMindatoryList: TDataSource
    DataSet = qryNotMondatoryList
    Left = 48
    Top = 104
  end
  object ActionList1: TActionList
    Left = 448
    Top = 40
    object actDoMondatory: TAction
      Caption = 'DoMondatory'
      OnExecute = actDoMondatoryExecute
    end
    object actDoNotMondatory: TAction
      Caption = 'DoNotMondatory'
      OnExecute = actDoNotMondatoryExecute
    end
  end
  object qryDoMondatory: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    SQL.Strings = (
      'insert into evmonpay (id) values (:id)')
    Left = 616
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object qryDoNotMondatory: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    SQL.Strings = (
      'delete from evmonpay where id = :id')
    Left = 568
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
end
