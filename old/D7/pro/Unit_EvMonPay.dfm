object FormEvmonpay: TFormEvmonpay
  Left = 453
  Top = 236
  Width = 527
  Height = 360
  Caption = #1054#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1077#1078#1077#1084#1077#1089#1103#1095#1085#1099#1077' '#1087#1083#1072#1090#1077#1078#1080
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
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 519
    Height = 25
    DataSource = ds
    Align = alTop
    Flat = True
    TabOrder = 0
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 25
    Width = 519
    Height = 308
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = ds
    Filter.Criteria = {00000000}
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    ShowPreviewGrid = False
    object dxDBGrid1Column1: TdxDBGridColumn
      Caption = #8470' '#1055#1083#1072#1090
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ID'
    end
    object dxDBGrid1Column6: TdxDBGridColumn
      Caption = #1059#1089#1083#1091#1075#1072
      ReadOnly = True
      Width = 400
      BandIndex = 0
      RowIndex = 0
      FieldName = 'P_NAME'
    end
  end
  object qry: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    AutoCalcFields = False
    BeforePost = qryBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = False
    SQL.Strings = (
      'select e.ID, p.p_name'
      'from EVMONPAY e, tbl_payname p'
      'where e.id=p.id')
    UpdateObject = upd
    Left = 72
    Top = 64
  end
  object ds: TDataSource
    DataSet = qry
    Left = 176
    Top = 40
  end
  object upd: TIBUpdateSQL
    RefreshSQL.Strings = (
      'select e.ID, p.p_name'
      'from EVMONPAY e, tbl_payname p'
      'where e.id=p.id'
      'and'
      '  e.ID = :ID')
    ModifySQL.Strings = (
      'update EVMONPAY'
      'set'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into EVMONPAY'
      '  (ID)'
      'values'
      '  (:ID)')
    DeleteSQL.Strings = (
      'delete from EVMONPAY'
      'where'
      '  ID = :OLD_ID')
    Left = 312
    Top = 208
  end
end
