object FormLast: TFormLast
  Left = 263
  Top = 179
  Caption = #1053#1072' '#1089#1077#1075#1086#1076#1085#1103
  ClientHeight = 446
  ClientWidth = 679
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 679
    Height = 169
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 292
      Top = 12
      Width = 162
      Height = 13
      Caption = #1053#1072#1076#1086' '#1079#1072#1087#1083#1072#1090#1080#1090#1100' '#1074' '#1101#1090#1086#1084' '#1084#1077#1089#1103#1094#1077':'
    end
    object Label2: TLabel
      Left = 300
      Top = 36
      Width = 153
      Height = 13
      Caption = #1059#1078#1077' '#1079#1072#1087#1083#1072#1090#1080#1083' '#1074' '#1101#1090#1086#1084' '#1084#1077#1089#1103#1094#1077':'
    end
    object lbl1: TLabel
      Left = 564
      Top = 12
      Width = 20
      Height = 13
      Caption = #1075#1088#1085'.'
    end
    object lbl2: TLabel
      Left = 564
      Top = 36
      Width = 20
      Height = 13
      Caption = #1075#1088#1085'.'
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 273
      Height = 169
      Align = alLeft
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDate
        DataController.DetailKeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1ID: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'ID'
        end
        object cxGrid1DBTableView1T_MONTH: TcxGridDBColumn
          DataBinding.FieldName = 'T_MONTH'
          Visible = False
        end
        object cxGrid1DBTableView1TXT: TcxGridDBColumn
          Caption = #1052#1077#1089#1103#1094
          DataBinding.FieldName = 'TXT'
        end
        object cxGrid1DBTableView1T_YEAR: TcxGridDBColumn
          Caption = #1043#1086#1076
          DataBinding.FieldName = 'T_YEAR'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object edtNeedPay: TcxCurrencyEdit
      Left = 460
      Top = 9
      TabOrder = 1
      Width = 98
    end
    object edtAlreadyPay: TcxCurrencyEdit
      Left = 464
      Top = 56
      TabOrder = 2
      Width = 121
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 169
    Width = 679
    Height = 277
    Align = alClient
    TabOrder = 1
    object cxGrid2DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid2DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid2DBTableView1P_NAME: TcxGridDBColumn
        Caption = #1059#1089#1083#1091#1075#1072
        DataBinding.FieldName = 'P_NAME'
      end
      object cxGrid2DBTableView1PL_PREV: TcxGridDBColumn
        Caption = #1055#1083#1072#1085' '#1085#1072' '#1085#1072#1095#1072#1083#1086
        DataBinding.FieldName = 'PL_PREV'
      end
      object cxGrid2DBTableView1FT_PREV: TcxGridDBColumn
        Caption = #1060#1072#1082#1090' '#1085#1072' '#1085#1072#1095#1072#1083#1086
        DataBinding.FieldName = 'FT_PREV'
      end
      object cxGrid2DBTableView1dolg_prev: TcxGridDBColumn
        Caption = #1044#1086#1083#1075' '#1085#1072' '#1085#1072#1095#1072#1083#1086
        DataBinding.FieldName = 'dolg_prev'
      end
      object cxGrid2DBTableView1PL_CURR: TcxGridDBColumn
        Caption = #1055#1083#1072#1085' '#1090#1077#1082
        DataBinding.FieldName = 'PL_CURR'
      end
      object cxGrid2DBTableView1FT_CURR: TcxGridDBColumn
        Caption = #1060#1072#1082#1090' '#1090#1077#1082
        DataBinding.FieldName = 'FT_CURR'
      end
      object cxGrid2DBTableView1dolg_curr: TcxGridDBColumn
        Caption = #1044#1086#1083#1075' '#1074#1089#1077#1075#1086
        DataBinding.FieldName = 'dolg_curr'
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object qry: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    OnCalcFields = qryCalcFields
    Active = True
    SQL.Strings = (
      ''
      'select pn.id, pn.p_name,'
      
        '(select sum(p_summa) from tbl_plan where p_time<:tm and p_paynam' +
        'e=pn.id) as pl_prev,'
      
        '(select sum(p_summa) from tbl_fact where p_time<:tm and p_paynam' +
        'e=pn.id) as ft_prev,'
      
        '(select sum(p_summa) from tbl_plan where p_time=:tm and p_paynam' +
        'e=pn.id) as pl_curr,'
      
        '(select sum(p_summa) from tbl_fact where p_time=:tm and p_paynam' +
        'e=pn.id) as ft_curr'
      ''
      ''
      ''
      'from tbl_payname pn'
      'order by pn.p_name')
    Left = 216
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tm'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tm'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tm'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tm'
        ParamType = ptUnknown
      end>
    object qryID: TIntegerField
      FieldName = 'ID'
      Origin = 'TBL_PAYNAME.ID'
      Required = True
    end
    object qryP_NAME: TIBStringField
      FieldName = 'P_NAME'
      Origin = 'TBL_PAYNAME.P_NAME'
      Required = True
      Size = 50
    end
    object qryPL_PREV: TIBBCDField
      FieldName = 'PL_PREV'
      Precision = 18
      Size = 2
    end
    object qryFT_PREV: TIBBCDField
      FieldName = 'FT_PREV'
      Precision = 18
      Size = 2
    end
    object qryPL_CURR: TIBBCDField
      FieldName = 'PL_CURR'
      Precision = 18
      Size = 2
    end
    object qryFT_CURR: TIBBCDField
      FieldName = 'FT_CURR'
      Precision = 18
      Size = 2
    end
    object qrydolg_before: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dolg_prev'
      Calculated = True
    end
    object qrydolg_curr: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dolg_curr'
      Calculated = True
    end
  end
  object ds: TDataSource
    DataSet = qry
    Left = 272
    Top = 168
  end
  object qryDate: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    Active = True
    SQL.Strings = (
      ''
      'select tm.id, tm.t_month, mn.txt, tm.t_year'
      'from tbl_time tm, tbl_month mn'
      'where tm.t_month=mn.id'
      'order by tm.id desc')
    Left = 100
    Top = 248
  end
  object dsDate: TDataSource
    DataSet = qryDate
    OnDataChange = dsDateDataChange
    Left = 144
    Top = 256
  end
  object qryNeedPay: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    SQL.Strings = (
      'select sum(p_summa) from tbl_plan where p_time = :tm')
    Left = 360
    Top = 236
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tm'
        ParamType = ptUnknown
      end>
  end
  object qryAlreadyPay: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    SQL.Strings = (
      'select sum(p_summa) from tbl_fact where p_time = :tm')
    Left = 356
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tm'
        ParamType = ptUnknown
      end>
  end
end
