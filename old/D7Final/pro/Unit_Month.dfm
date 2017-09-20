object FormMonth: TFormMonth
  Left = 287
  Top = 287
  Width = 196
  Height = 229
  Caption = #1052#1077#1089#1103#1094#1099
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 188
    Height = 202
    Align = alClient
    AllowedOperations = []
    DataSource = ds
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Courier New'
        Title.Font.Style = [fsBold]
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'TXT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1052#1077#1089#1103#1094
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Courier New'
        Title.Font.Style = [fsBold]
        Width = 100
      end>
  end
  object qry: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select ID, TXT from TBL_MONTH')
    Left = 56
    Top = 16
  end
  object ds: TDataSource
    DataSet = qry
    Left = 112
    Top = 16
  end
end
