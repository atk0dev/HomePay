object FormAllpay: TFormAllpay
  Left = 221
  Top = 190
  Width = 764
  Height = 410
  Caption = #1055#1083#1072#1090#1077#1078#1080
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
    Top = 57
    Width = 756
    Height = 326
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
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = [fsBold]
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoUseBookmarks]
    OptionsView = [edgoAutoCalcPreviewLines, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    OnCustomDrawCell = dxDBGrid1CustomDrawCell
    object dxDBGrid1Column1: TdxDBGridColumn
      Caption = #1043#1086#1076
      HeaderAlignment = taCenter
      Width = 50
      BandIndex = 0
      RowIndex = 0
      FieldName = 'P_YEAR'
    end
    object dxDBGrid1Column2: TdxDBGridColumn
      Caption = #8470' '#1084#1077#1089
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'P_MONTH'
    end
    object dxDBGrid1Column3: TdxDBGridColumn
      Caption = #1052#1077#1089#1103#1094
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'P_MNAME'
    end
    object dxDBGrid1Column4: TdxDBGridColumn
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      HeaderAlignment = taCenter
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'P_NAME'
    end
    object colPlRest: TdxDBGridCurrencyColumn
      Caption = #1055#1083' '#1086#1089#1090
      HeaderAlignment = taCenter
      Visible = False
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PL_REST'
      Nullable = False
    end
    object dxDBGrid1Column5: TdxDBGridCurrencyColumn
      Caption = #1055#1083#1072#1085
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'P_PLAN'
      Nullable = False
    end
    object colFtRest: TdxDBGridCurrencyColumn
      Caption = #1060#1090' '#1086#1089#1090
      HeaderAlignment = taCenter
      Visible = False
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FT_REST'
      Nullable = False
    end
    object dxDBGrid1Column6: TdxDBGridCurrencyColumn
      Caption = #1060#1072#1082#1090
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'P_FACT'
      Nullable = False
    end
    object dxDBGrid1Column7: TdxDBGridCurrencyColumn
      Caption = #1055#1083'-'#1060#1090
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'p-f'
      Nullable = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 65
      Height = 57
      Flat = True
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B000000000000000000000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF428E422A5D2AFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A8E
        2A8AC369002D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF5A8E425AC342000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF427D2A9ADB
        8A5AC35A002D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A46
        2A005D002A5D2A005D002A462A005D002A5D2A005D002A462A005D002A5D2AFF
        FFFFFFFFFFFFFFFFFFFFFF428E429ADB9A5AC35A002D00002D00002D00002D00
        002D00002D002A462AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF005D002A5D2A429E2A5AAB425AB6425AB6425ACF425AC35A
        8AE7698ADB7A9AFF8AABF38A005D00FFFFFFFFFFFFFFFFFF2A8E2A8ADB8A9ADB
        8A8ACF7A5AC34269C35A5AC3425AAB4242AB42429E422A8E2A2A5D00005D00FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005D002A7D2A2A8E2A428E
        4242AB425AAB4242B6425AAB425AC35A69CF697ADB698ADB7A9AFF8A002D00FF
        FFFFFFFFFFFFFFFF2A7D2AABDB9AABDB9A8ADB7A7AC3695AC35A5AB65A42B642
        5AAB5A42AB42428E422A9E2A2A6E2A005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF2A5D002A6E2A2A7D2A428E2A429E2A429E4242AB425AAB425AB6425AC35A
        5AC3427ACF698AE7698ADB7A004600FFFFFFFFFFFF5A8E429AFF7AB2E79AABE7
        9A9ADB8A7ADB697AC3695AC35A5AB65A5AB6425AAB4242AB42428E42429E2A2A
        6E2A2A5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A7D2A0046002A6E2A427D422A8E2A428E
        42429E42429E4242AB425AAB5A42B6425AB65A69CF5A7ADB697ADB692A5D2AFF
        FFFFFFFFFF428E42C3F3B2B2F3ABABE7AB9AE78A8ADB8A7ACF6969C3695AC35A
        5AB65A42B642429E42429E42428E422A8E2A2A6E2A005D00FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42
        7D2A002D002A6E2A2A7D2A428E2A429E2A429E4242AB2A5AAB4242B6425AB642
        5AC34269C35A69DB5A69DB5A005D00FFFFFF5A8E2AABFF8AC3FFABC3F3B2ABF3
        9AABE79A9AE77A8ADB7A7ADB697ACF695AC3425AB64242B6425AAB42429E2A42
        8E2A2A7D002A5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF2A7D2A42AB42002D002A6E2A2A6E2A2A8E2A428E
        422A9E2A429E4242AB425AAB4242B6425AB65A5AC3425AC35A5ACF5A2A462AFF
        FFFF427D2A9AFF8AC3F3B2B2F3ABB2F3ABABF39A9ADB9A8ADB7A8ACF7A69CF69
        69C3695AC3425AB65A42AB42429E42428E2A427D2A2A6E2A2A462AFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A7D2A5A
        C35A002D002A46002A7D00427D2A428E2A428E42429E2A5A9E4242AB425AAB42
        42B6425AB6425AC34269CF5A005D00FFFFFFFFFFFF5A8E42C3FFABC3F3B2C3FF
        ABB2F3ABABE79AABDB8A8ADB7A7ACF7A69CF5A69C35A5AC3425AB64242AB2A42
        9E42428E2A427D2A005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF428E427AC3695AC342427D42002D002A6E2A2A7D2A427D
        422A8E2A429E4242AB42429E4242AB425AAB5A42B6425AB65A5AC35A2A5D2AFF
        FFFFFFFFFF2A7D2AABF38AC3FFC3C3F3B2B2F3ABB2E7AB9AE79A9ADB8A7ADB7A
        7ACF695AC35A5AB65A42B6425AAB4242AB42428E422A8E2A427D2A005D00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A8E425AC3425A
        C35A5AC3422A2D00005D002A6E2A2A8E2A428E2A429E2A429E4242AB2A5AAB42
        5AB6425AB64242B6425AB642005D00FFFFFFFFFFFFFFFFFF5A9E42CBFFC3C3FF
        B2C3F3B2B2FFABB2F3ABABF39AABE78A7ADB6969CF695AC3425AB64242B6425A
        AB42429E2A427D2A2A8E2A2A5D2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5A8E4242AB425AB65A5AC3425AB65A2A8E2A0000002A6E2A2A6E
        2A2A8E2A428E42429E42429E4242AB425AAB4242B6425AAB4242B6422A462AFF
        FFFFFFFFFFFFFFFF5A8E429AFF8ACBF3C3C3FFC3C3F3B2B2F3ABB2F3AB9AE79A
        9ADB9A7ADB7A69C3695AC3425AB65A42AB42428E422A8E2A427D422A7D2A2A5D
        2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A8E425AC35A5AC3425A
        C35A5AC3425AC35A002D002A46002A5D002A5D2A005D002A5D002A5D002A5D2A
        2A7D2A427D2A2A8E2A427D2A2A7D2AFFFFFFFFFFFFFFFFFFFFFFFF5A8E42CBFF
        B2CBFFC3005D002A5D002A5D00427D2A005D00427D2A2A8E2A427D2A2A7D2A42
        7D2A2A5D002A5D2A005D00427D2A2A5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF428E42429E425AC35A5AC35A5AC3425AB65A5AC35A428E42002D00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF428E42ABF38AC3FFC3002D00FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF2A7D2A428E4242AB425AAB5A42AB42427D2A005D002A46
        2A005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF427D2A5AC34269C35A5ACF425A
        C35A5AC3425AC35A5AC342002D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A8E
        2AC3F3B2002D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF427D2A5AC34269
        B65A5AC3425AB6425AB6425AB64242AB2A2A5D00FFFFFFFFFFFFFFFFFFFFFFFF
        5A8E4242AB4269C35A5AC35A69C35A5AC3425AB65A5AC3425AB65A2A8E2A002D
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF5A8E42C3FFC3000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF427D2A42AB4269C36969C35A69C3695AC35A5AB65A5AB6425AAB
        4242AB422A462AFFFFFFFFFFFFFFFFFF2A7D2A69C35A69CF5A69C35A5AC3425A
        C35A5AC3425AC35A5AC3425AC35A002D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF5A8E42005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A8E2A69C35A69CF5A7A
        CF697ACF697ACF6969CF5A69C35A5AB6425A9E42005D00FFFFFFFFFFFF428E42
        429E4269CF6969C3695ACF5A69C35A5AC3425AB65A5AC35A5AC35A5AC342427D
        42005D00FFFFFFFFFFFFFFFFFF005D002A5D2AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF428E422A5D2AFFFFFFFFFFFFFFFFFF
        FFFFFF2A7D2A429E4269CF6969CF6969DB697ACF7A69CF697ACF6969CF5A69B6
        695AC35A4A824A005D00FFFFFF5A8E427ADB697ADB6969DB5A69CF5A69CF5A69
        C35A5ACF425AC35A5AC3425AC35A5AC3422A5D002A8E2A2A5D2A005D005A9E42
        005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF427D2A5ACF4269C35A69CF5A7A
        CF6969DB697ADB697ADB697ACF6969CF5A69B65A69C35A2A5D2AFFFFFF428E42
        9ADB8A7ADB697ADB7A69CF6969CF6969CF5A69C35A5AC35A5AB65A5AC3425AB6
        5A5AC3422A462A5AC3425AB65A2A7D2A2A7D2AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        2A7D2A42AB4269C35A5AC35A69C35A69CF5A7ACF6969CF697ADB6969CF697ADB
        6969CF5A69C369005D00FFFFFF5A8E428AE77A9ADB8A9AE77A8ADB697ADB5A7A
        CF6969CF5A69CF5A5ACF5A69C35A5AC3425AC35A5AC3425AC35A42AB422A5D2A
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A7D2A5AB6425AC35A5AB65A5AC34269
        C35A69CF5A7ACF6969CF5A7ACF697ACF697ADB6969CF5A2A5D00FFFFFF428E42
        ABE79A9AE78A9ADB8A7ADB7A8ADB7A7ADB697ACF6969CF6969CF695ACF5A69C3
        5A5AC35A5AC35A5AC3422A462AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A7D2A
        429E4242C3425AB65A42B6425AB65A5AC35A69C35A5AC35A69C36969CF5A69C3
        6969CF6969C369005D00FFFFFFFFFFFF5A9E42ABE79A9AE78A9ADB8A8AE77A8A
        DB7A7ADB697ADB697ADB697ACF6969CF5A69C35A5AC342427D2A2A8E2AFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF427D2A5AB6425AB64242B6425AB6425AC3425A
        B65A5AC34269C35A5ACF5A69C35A5ACF5A69C369005D00FFFFFFFFFFFFFFFFFF
        5A8E429AE78AABE79A9AE78A9ADB9A8AE78A8ADB7A7ADB7A8ADB7A7ADB697ACF
        6969CF5A69B669005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF427D2A42B642
        5AAB5A42B6425AAB4242B6425AAB5A42B6425AB65A5AC3425AB65A5AC35A5AB6
        5A5AC35A2A462AFFFFFFFFFFFFFFFFFFFFFFFF5A8E42B2F3ABABE79AABF39AAB
        E79A9AE78A9AE78A8AE77A8ADB7A7ADB697ACF69005D00FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF2A8E2A5A9E4242B6425AB6425AB6425AB64242B6425A
        B6425AB6425AB65A5AB6425AB65A5AC3422A5D2AFFFFFFFFFFFFFFFFFFB7C3B7
        2A4600004600C3F3B2B2E7ABB2E7ABABF39AABE7AB9AE79A9AE79A8AE77A8ADB
        8A2A7D2A427D2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A7D2A
        427D2A42AB425AAB5A42B6425AAB5A42B6425AAB5A42B6425AB65A42B642429E
        42005D00FFFFFFFFFFFF005D002A46007ACF69C3F3B2C3F3B2C3F3B2C3F3B2C3
        F3B2B2F3ABB2E79A9AE78A9AE78A7AE7692A5D00FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF427D2A2A8E2A5A9E425AB6425A
        B64242B6425AB6425AB6425AB642005D00FFFFFFFFFFFFFFFFFF7AC369B2F3B2
        C3F3B2C3F3B2C3F3B2B2F3B2C3F3B2C3F3B2C3F3B2ABF39A9ADB9A9AE78A2A2D
        0087A787FFFFFFFFFFFFFFFFFFFFFFFF2A7D2AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF2A7D2A2A7D2A42AB425AAB4242B6425AAB5A42AB422A5D
        2AFFFFFFFFFFFFFFFFFF5A8E425A8E425A8E425A8E425A8E425A8E425A8E425A
        8E425A8E425A8E425A8E425A8E425A8E42FFFFFFFFFFFFFFFFFF2A8E2A2A5D2A
        005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42
        7D2A2A8E2A5A9E4242B6422A5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF427D2A005D00429E4242B6425AB65A005D00FFFFFFFFFFFFFFFFFFFF
        FFFF2A462A005D002A5D2A005D002A462A005D002A5D2A005D002A462A005D00
        2A5D2A005D002A462A005D00FFFFFFFFFFFFFFFFFF2A7D2A427D2A005D00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF2A8E2A2A5D0042AB425AB64242B6425AB642
        5AB6422A5D2AFFFFFFFFFFFFFFFFFFFFFFFF2A8E2A2A5D00005D00429E4242B6
        425AB6425ACF425AC35A5ACF425AC35A5ADB5A69DB5A5ADB425A9E42005D00FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A7D2A005D00429E
        4242B6425AB65A42B6425AAB4242B6425AAB5A2A8E2A002D00FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF005D002A5D2A42B6425AB65A5AC3425AB65A5AC342
        5AC35A5ACF5A69DB5A5ADB5A2A7D2A2A7D2AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF2A8E2A2A5D2A42AB2A5AC35A5AC3425AB65A5AC3425AB6425AB6425AB642
        5AB6425AB642002D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A5D
        005AAB4242B6425AB6425AC3425AC35A5ACF4269CF5A5ADB5A69DB5A5ADB5A2A
        5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A7D2A5AC35A7ACF7A69CF695ACF5A5AC3
        5A5AC3425AB65A42C3425AB65A42B6425AB65A42B642427D42002D00FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF005D00427D42429E425AAB4242B6425AAB5A42B642
        5AB65A5ACF425AC35A5ADB5A69DB5A42B6422A462AFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF2A8E2A8ACF7A7ADB697ACF6969CF5A69C35A5AC3425AB65A5AC3425AB642
        5AC3425AB6425AB6422A2D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A5D2A2A8E
        2A429E4242B6425AAB4242B6425AB6425AC3425AC35A5ACF4269C35A5ACF425A
        C35A2A8E2A427D2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF427D2A8ADB8A9ADB8A7ACF697AC3
        6969CF5A69C3695AC35A69B65A5AC3425AB65A5AB6425AB65A2A8E2A000000FF
        FFFFFFFFFFFFFFFF2A462A2A7D2A427D42429E42429E4242AB425AAB4242B642
        5AAB5A42B6425AB65A42C3425AC35A5AC3425AAB42005D00FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF5A8E429AE78A9ADB8A8ADB7A7ACF7A69CF5A7ACF6969CF5A69C35A
        5AC34269B65A5AC3425AB65A002D00FFFFFFFFFFFFFFFFFF005D00427D2A429E
        2A429E4242AB2A5AAB4242B6425AAB4242B6425AB6425AB6425AB64242B64269
        C35A5ACF425AB642005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF428E42ABE7ABABE79A9ADB
        9A8ADB8A8ACF7A7ADB7A7ACF7A69CF6969C3695AC35A5AB65A42B642428E4200
        2D00FFFFFF005D002A6E2A2A7D2A427D42429E2A429E4242AB42429E4242AB42
        5AAB4242B6425AAB5A42B6425AAB5A005D002A462A42B642427D2A2A7D2AFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF5A9E42C3F3B2B2F3ABABE79AABE78A9ADB8A8ADB7A8ACF7A
        69CF5A69CF695ACF5A69C35A5AC342002D00FFFFFF2A5D002A7D2A427D2A2A8E
        2A428E2A429E2A429E4242AB2A5AAB4242AB425AAB4242B6425AB642005D00FF
        FFFF2A8E2A2A5D00005D002A5D2A2A8E2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A8E42C3F3B2C3F3
        C3B2F3B2B2E7ABABE79AABDB9A8ADB8A8ACF7A7ACF697ACF695ACF5A5AB65A2A
        8E2A002D002A6E2A2A6E2A2A7D2A427D2A2A8E2A428E42428E2A429E42429E42
        429E4242AB425AAB4242B6422A462AFFFFFFFFFFFFFFFFFF2A7D2A005D00427D
        2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF5A8E42C3F3B2C3F3B2C3F3B2C3E7B2B2F3ABABE7AB
        9AE78A9ADB8A8ADB7A7ACF6969CF5A69CF5A002D002A6E2A2A6E00426E2A2A7D
        2A427D2A2A8E2A428E2A429E2A429E4242AB2A5A9E4242B6422A5D2AFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF428E42ABF3
        8AB2F3B2C3F3B2B2F3B2C3F3C3B2F3B2B2E7B2ABE79A9ADB9A8ADB7A7ACF7A69
        CF695AC35A002D002A6E2A2A7D2A2A6E2A2A7D2A427D2A2A8E2A427D422A8E2A
        428E42429E42429E42005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF5A8E2AABFF8AC3F3B2C3F3B2C3F3B2C3F3B2
        C3F3B2CBF3C3B2F3ABABE79A9AE78A7ACF695ACF425AC35A002D002A6E2A2A7D
        002A6E2A2A7D2A427D2A2A8E2A427D2A2A8E2A428E42005D00FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF428E425A8E42C3F3B2C3F3B2B2F3B2C3F3B2C3F3B2C3F3B2B2F3ABB2F3B2AB
        E79A7ACF695ACF5A5AB65A002D00002D002A6E2A2A6E2A2A6E2A427D2A2A8E2A
        2A462A005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A8E425A8E425A8E42
        5A8E425A8E425A8E425A8E425A8E425A8E425A8E42427D2A2A7D2A427D2A2A8E
        2A2A5D2A005D002A5D002A5D002A5D2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton1Click
    end
    object ceUseparams: TdxCheckEdit
      Left = 104
      Top = 16
      Width = 65
      Style.ButtonStyle = btsHotFlat
      Style.Shadow = False
      TabOrder = 0
      Alignment = taRightJustify
      Caption = #1059#1089#1083#1091#1075#1072
      OnChange = ceUseparamsChange
      StoredValues = 1
    end
    object dxDBExtLookupEdit1: TdxDBExtLookupEdit
      Left = 168
      Top = 16
      Width = 225
      Enabled = False
      Style.BorderStyle = xbsFlat
      Style.ButtonStyle = btsHotFlat
      TabOrder = 1
      DataField = 'P_NAME'
      DataSource = dsUsl
      DBGridLayout = dxDBGridLayoutList1Item1
    end
  end
  object qry: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    OnCalcFields = qryCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select v.p_year, v.p_month, v.p_mname, v.p_name,'
      ''
      ' (select sum(r_pl.p_summa) from tbl_plan r_pl'
      
        '  where r_pl.p_time < v.p_time and r_pl.p_payname=v.p_payname) a' +
        's pl_rest,'
      ''
      ' sum(v.p_plan) as p_plan,'
      ''
      ' (select sum(r_ft.p_summa) from tbl_fact r_ft'
      
        '  where r_ft.p_time < v.p_time and r_ft.p_payname=v.p_payname) a' +
        's ft_rest,'
      ''
      ' sum(v.p_fact) as p_fact'
      ''
      ''
      'from v_pay v'
      ''
      'group by v.p_year, v.p_month, v.p_mname, v.p_name'
      'order by v.p_year desc, v.p_month desc, v.p_name')
    Left = 88
    Top = 64
    object qryP_YEAR: TIntegerField
      FieldName = 'P_YEAR'
    end
    object qryP_MONTH: TIntegerField
      FieldName = 'P_MONTH'
    end
    object qryP_MNAME: TIBStringField
      FieldName = 'P_MNAME'
    end
    object qryP_NAME: TIBStringField
      FieldName = 'P_NAME'
      Size = 50
    end
    object qryP_PLAN: TIBBCDField
      FieldName = 'P_PLAN'
      Precision = 18
      Size = 2
    end
    object qryP_FACT: TIBBCDField
      FieldName = 'P_FACT'
      Precision = 18
      Size = 1
    end
    object qrypf: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'p-f'
      Calculated = True
    end
    object qryPL_REST: TIBBCDField
      FieldName = 'PL_REST'
      Precision = 18
      Size = 2
    end
    object qryFT_REST: TIBBCDField
      FieldName = 'FT_REST'
      Precision = 18
      Size = 2
    end
  end
  object ds: TDataSource
    DataSet = qry
    Left = 136
    Top = 88
  end
  object qryUsl: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select ID, P_NAME from TBL_PAYNAME'
      'order by ID')
    Left = 416
    Top = 8
  end
  object dsUsl: TDataSource
    DataSet = qryUsl
    Left = 464
    Top = 8
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 504
    Top = 16
    object dxDBGridLayoutList1Item1: TdxDBGridLayout
      Data = {
        9C020000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C64060249440D53756D6D6172794772
        6F7570730E001053756D6D617279536570617261746F7206022C200A44617461
        536F757263650710466F726D416C6C7061792E647355736C0F46696C7465722E
        43726974657269610A0400000000000000094F7074696F6E7344420B10656467
        6F43616E63656C4F6E457869740D6564676F43616E44656C6574650D6564676F
        43616E496E73657274116564676F43616E4E617669676174696F6E116564676F
        436F6E6669726D44656C657465126564676F4C6F6164416C6C5265636F726473
        106564676F557365426F6F6B6D61726B73000B4F7074696F6E73566965770B13
        6564676F42616E6448656164657257696474680D6564676F526F7753656C6563
        740D6564676F5573654269746D617000000F546478444247726964436F6C756D
        6E07436F6C756D6E3109416C69676E6D656E740708746143656E746572074361
        7074696F6E120100000016210F486561646572416C69676E6D656E7407087461
        43656E74657208526561644F6E6C7909055769647468021E0942616E64496E64
        6578020008526F77496E6465780200094669656C644E616D6506024944125375
        6D6D617279466F6F7465724669656C640602494400000F546478444247726964
        436F6C756D6E07436F6C756D6E320743617074696F6E1206000000230441043B
        044304330430040F486561646572416C69676E6D656E740708746143656E7465
        7208526561644F6E6C790905576964746803C8000942616E64496E6465780200
        08526F77496E6465780200094669656C644E616D650606505F4E414D45000000}
    end
  end
end
