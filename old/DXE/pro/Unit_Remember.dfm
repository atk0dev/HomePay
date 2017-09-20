object Form_Remember: TForm_Remember
  Left = 430
  Top = 192
  BorderStyle = bsDialog
  Caption = #1053#1072#1087#1086#1084#1080#1085#1072#1083#1082#1072
  ClientHeight = 363
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblToday: TLabel
    Left = 64
    Top = 8
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 45
    Height = 13
    Caption = #1057#1077#1075#1086#1076#1085#1103':'
  end
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 40
    Width = 545
    Height = 313
    DataGrouping.GroupLevels = <>
    DataSource = ds
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'P_NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
        Width = 500
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object qry: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    SQL.Strings = (
      'select ev.id, pn.p_name'
      'from evmonpay ev, tbl_payname pn'
      'where pn.id=evmonpay.id and'
      '      ev.id not in'
      '      ('
      '      select e.ID'
      '      from evmonpay e, tbl_fact f'
      '      where f.p_payname=e.id'
      '      and f.p_time ='
      
        '          (select id from tbl_time t where t.t_year=:y and t.t_m' +
        'onth=:m)'
      '      )'
      'order by pn.p_name')
    Left = 72
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'y'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'm'
        ParamType = ptUnknown
      end>
  end
  object ds: TDataSource
    DataSet = qry
    Left = 72
    Top = 288
  end
end
