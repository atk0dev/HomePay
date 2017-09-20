object FormKvit: TFormKvit
  Left = 223
  Top = 182
  Width = 956
  Height = 480
  Caption = #1050#1072#1082' '#1074' '#1082#1074#1080#1090#1072#1085#1094#1080#1080
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
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 73
    Width = 948
    Height = 380
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ID'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = ds
    Filter.Criteria = {00000000}
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -13
    HeaderFont.Name = 'Courier New'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    object col_Usluga: TdxDBGridColumn
      Caption = #1059#1089#1083#1091#1075#1072
      HeaderAlignment = taCenter
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'P_NAME'
    end
    object col_plprev: TdxDBGridCurrencyColumn
      Caption = #1055#1083#1072#1085' '#1085#1072' '#1085#1072#1095#1072#1083#1086
      HeaderAlignment = taCenter
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PL_PREV'
      Nullable = False
    end
    object col_ftprev: TdxDBGridCurrencyColumn
      Caption = #1060#1072#1082#1090' '#1085#1072' '#1085#1072#1095#1072#1083#1086
      HeaderAlignment = taCenter
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FT_PREV'
      Nullable = False
    end
    object col_dolgprev: TdxDBGridCurrencyColumn
      Caption = #1044#1086#1083#1075' '#1085#1072' '#1085#1072#1095#1072#1083#1086
      HeaderAlignment = taCenter
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'dolg_prev'
      Nullable = False
    end
    object col_plcurr: TdxDBGridCurrencyColumn
      Caption = #1055#1083#1072#1085' '#1090#1077#1082'.'
      HeaderAlignment = taCenter
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PL_CURR'
      Nullable = False
    end
    object col_ftcurr: TdxDBGridCurrencyColumn
      Caption = #1060#1072#1082#1090' '#1090#1077#1082'.'
      HeaderAlignment = taCenter
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FT_CURR'
      Nullable = False
    end
    object col_dolgcurr: TdxDBGridCurrencyColumn
      Caption = #1044#1086#1083#1075' '#1074#1089#1077#1075#1086
      HeaderAlignment = taCenter
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'dolg_curr'
      Nullable = False
    end
    object col_dolg1: TdxDBGridCurrencyColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'dolg1'
      Nullable = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 948
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 488
      Top = 24
      Width = 105
      Height = 13
      Caption = 'sssssssssssssssssssss'
    end
    object gridDate: TdxDBGrid
      Left = 0
      Top = 0
      Width = 249
      Height = 73
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = dsDate
      Filter.Criteria = {00000000}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -13
      HeaderFont.Name = 'Courier New'
      HeaderFont.Style = [fsBold]
      LookAndFeel = lfFlat
      OptionsDB = [edgoCancelOnExit, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object gridDateColumn1: TdxDBGridColumn
        Caption = #8470
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object gridDateColumn2: TdxDBGridColumn
        Alignment = taCenter
        Caption = #1052#1077#1089#1103#1094
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TXT'
      end
      object gridDateColumn3: TdxDBGridColumn
        Caption = #1043#1086#1076
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'T_YEAR'
      end
    end
  end
  object qry: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    OnCalcFields = qryCalcFields
    BufferChunks = 1000
    CachedUpdates = False
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
    object qrydolg1: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dolg1'
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
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      ''
      'select tm.id, tm.t_month, mn.txt, tm.t_year'
      'from tbl_time tm, tbl_month mn'
      'where tm.t_month=mn.id'
      'order by tm.id desc')
    Left = 288
    Top = 8
  end
  object dsDate: TDataSource
    DataSet = qryDate
    OnDataChange = dsDateDataChange
    Left = 344
    Top = 24
  end
end
