object FormTime: TFormTime
  Left = 192
  Top = 107
  Width = 511
  Height = 381
  Caption = #1042#1088#1077#1084#1103
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
    Top = 65
    Width = 503
    Height = 289
    Align = alClient
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
    SortLocal = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Courier New'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Color = clCream
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #8470
      end
      item
        DropDownBox.Columns = <
          item
          end>
        EditButtons = <>
        FieldName = 'T_MONTH'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1052#1077#1089#1103#1094
      end
      item
        Color = clCream
        EditButtons = <>
        FieldName = 'TXT'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1052#1077#1089#1103#1094
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'T_YEAR'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1043#1086#1076
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 503
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 232
      Top = 0
      Width = 57
      Height = 57
      Flat = True
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B000000000000000000000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66666666666666
        6666666666666666666666666666666666666666666666666666666666666666
        6666666666666666666666666666666666666666666666666666666666666666
        6666666666666666666666666666666666666666666666666666666666666666
        6666666666666666666666666666666666666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6666666666666666666666666666666666666666666666666666
        6666666666666666666666666666666666666666666666666666666666666666
        6666666666666666666666666666666666666666666666666666666666666666
        6666666666666666666666666666666666666666666666666666666666666666
        66666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33000000000000000000000000
        0000000000666666996666669999996666669999996666669999996666669999
        9966666699999966996699999999996666669999996666669999996666669966
        9966999999666666999999669966999999666666999999669966666666336666
        6633000000000000000000000000000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF333333333333663300333333000000666633663366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6633336666339999990000003300000000000000000000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333000033333333003300
        0000993333666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66666699336699
        9999000000000000000033000000000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF330000333333333333330000000000666666663366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6633666666339999993300000000000033003300000000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333333000033333300
        0000663366666633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666633663366CC
        9966000033000000000000000000000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663300330033333333330033000000666633993366FFFFFFFFFFFF6633
        0066330066330066330066330066330066330066330066330066330066330066
        3300663300663300663300663300663300663300663300663300663300663300
        663300FFFFFFFFFFFF6633666666339999990000000000003300000000000000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33003333333333330033333300
        0000663333666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66666699336699
        9999330000000000000000000000000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF333333663333330033333300000000666666663366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6633336666339999990000000000003333000000000000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33330033003333333366003300
        0000663366666633FFFFFFFFFFFF663300663300663300663300663300663300
        6633006633006633006633006633006633006633006633006633006633006633
        00663300663300663300663300663300663300FFFFFFFFFFFF666666663366CC
        9999000000330033000000000000000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663333333333663300333333000000666633993366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6633666666339999993300000000000033003300330000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33003333333333003333333300
        0000663333666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66663399336699
        9999000000000033330000000000000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663333333300663333333333000000663366663366FFFFFFFFFFFF6633
        0066330066330066330066330066330066330066330066330066330066330066
        3300663300663300663300663300663300663300663300663300663300663300
        663300FFFFFFFFFFFF6633666666339999993300003333000000000000330000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333366333333003333333300
        0000663366666633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666663333CC
        9999000000000033000000330000000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663333333333333333663300000000666633663366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6633666666339999990000003333003300000033330000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333003366333333333300
        0000663333666666FFFFFFFFFFFF663300663300663300663300663300663300
        6633006633006633006633006633006633006633006633006633006633006633
        00663300663300663300663300663300663300FFFFFFFFFFFF66663399336699
        9999330000000000000033000000000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663333333333660033333333000000666666993366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF663366666633CC99990033003300330000003333000000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333366333333333333333300
        0000663366666633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66666666333399
        9999330033000000333300000033000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663333333300660033333333000000666633663366FFFFFFFFFFFF6633
        0066330066330066330066330066330066330066330066330066330066330066
        3300663300663300663300663300663300663300663300663300663300663300
        663300FFFFFFFFFFFF663366666633CC99993300000033003300333300000000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333366333333333366333300
        0000663333666633FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66663366336699
        9999330033000000333333000000000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663333333333663333333333000000666666993333FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF663366666633CC99990033003300003300000033330000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33333366333333333333003300
        0000666666666633CC99CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99CC66663366336699
        9999330033333300000033330000000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663333663333663333663333000000663333663366666633FF99CCFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCC99CC666633663366666633CC99990033003300333333000033000000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66333333003333333366333300
        0000663366666666663366666633663366666666993333666666663366666633
        9933666666336633666666669933666666669933666666336633666666339933
        6666666699333366666699333366666666333366666699336666663366336699
        9966330033000000330033330000000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF3333336633336633333333336633330000006633666666336633666666
        3366336666663366336666663366336666663366336666666666333366663366
        3366666633663366666633663366666666663333666666663333666666663366
        66663366336666663366336699CC993300333333003300330033003300330000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66333366333333333366333333
        3333663333000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000033003333
        3300000033333300330033333300000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF6633333333336633336633336633333333336633336633336633333333
        3366003333333366333333333366003366333333333366330033003366333333
        3333330033663300333333330033333300333333333300330033333333333300
        3333333333333300003300333333003333333300003300330033003333330000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66333366336633333366333333
        3333660033333333663333333333663333333333660033333333663333333333
        3333333300333333333333333333333300003333333333336600333333006633
        3333003333003333333333330033003333003333330033003333333333003300
        3300330033333300330033000000000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF6633333333336633336633336633336633333333336633333333336633
        3366333333333333333333333366003333330066333333333366003333333333
        3333663333330033333333333333330033333300330033333300330033333333
        3333003300333333333333003300003333333333003300333333003300330000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66333366333366333333336666
        3333333333663333663366333333663333333333663333663333663333333333
        6633333333336633333333333333336633003333333333006633333300006633
        3333333366333333333333333333000033333333003333330033003333330033
        0033330033333333330033003300000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663366333333663333663333663333000000CC9999999966CC99999999
        99999999999966999999999999999999999999999999999966999999CC999999
        9999999999999999999999999999999999999999999966999999999999CC9999
        3333333333003300333333333300333333333333003300003333003300330000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66333366333366333333333300
        0000663366666666663366666633999999333333330033333333330000333333
        3300003300333300333333003300333333003300333333333300003333333300
        00333333330033333333330033003300CC999933003333333333330033003333
        3300330033333333330033333333000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663333666633663366663333000000666666663333666633993366FFFF
        FFCC9999999999CCCCCCCC99CCCCCCCCFFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        99CCCCCC99CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC99CC99CCFFCC99330033
        9999666633333333003300333333003300333333333300003333003300330000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66333366336633333366333300
        0000663366666666663366666666FFFFFFCC9999CC9999CC9999CCCCCCCC99CC
        CCCCCCCCCCCCFF99CCCCCCCCCCCCCCCCCCCCFFCCCCCCCCCC663333FFFFFFFFFF
        FFFFFFFFFFFFFFCCCCCCCCCCCC33333399999933333333003333333333333333
        3333330000333333330033333300000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663333663333663333663333000000666633993333666633666666FFFF
        FFCC9999999999CC9999CC9999CCCCCCCCCC99CCCCCCCCCCCCFFCCCCCCCCCCCC
        CCCCCCCCCCCCCCCC000000663366666633666666FFFFFFCCCCCCCCCCCC330000
        9999993333003333333300003333333300003333333333333300003333330000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66333366336666333366336600
        0000663366666666663366666633FFFFFFCC9999CC9999999999CC99999999CC
        CC99CCCCCC99CC99CCCCCCCCCCCCCCCCCCCCFF99CCCCCCCC0000006666333366
        66663333FFFFFFCCCCCCFF99CC33333399999933003366333333333333003333
        3333330033333300330033333300000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663333666633663333663333000000666666663333666633663366FFFF
        FF999999999999CC9999CCCC99CC9999CCCC99CC99CCCCCC99CC99CCFFCCCCCC
        CCCCCCCCCCCCCCCC000000666666663366336666FFFFFFCCCCCCCCCC99330033
        CC99663333333333003300333333006633333300003333333333333300330000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66336666333366336666333300
        0000663366666666993366666633FFFFFF999999CC6666999999CC6699999999
        CC9999CC99CCCCCCCCCCCC99CC99CCCCCCCCFFCCCCCCCCCC0000006633663366
        33663366FFFFFFCCCCCCFFCCCC00333399999933003366333333333333333333
        0033333333333333330000333333000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF666633663333663333663333000000666633663366666633993366FFFF
        FF999999999999CC9966999999CC9999999999CCCC99CC9999CC99CCCCCCCCCC
        CCCCCCCC99CCCCCC000000336666666666666633FFFFFFCCCCCCCCCCCC330000
        CCCC993333333333003300336633003333333333003300333333336633000000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66333366333366666666333300
        0000663366666633663366666633FFFFFFCC9999CC9999999999999966CC9999
        CC6699999999CC999999CC99CC99CCCCCCCCCC99CCCCCC990000006633666666
        33333366FFFFFFCCCCCCCCCCCC33003399999933003366333333333333003333
        3333660033333300333333330033000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663333663366663333663333000000666666993366666633663366FFFF
        FFCC9999CC9999999999CC9999999966999999CC9999CC9999CC9999CC9999CC
        CCCCCCCCCCCCCCCC000000666666333366666633FFFFFFCCCCCCCCCC99330033
        9999666633333333333300336633003333333333333333333300333333000000
        00666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66333366336666333366333300
        0000663366666633663366666666FFFFFFCCCCCCCC99CCCC9999999999CC6699
        999966999999CC9999999999CC9999CC9999CC99CCCCCC990000003366666666
        33666666FFFFFFCC9999CCCCCC33333399999933333366333333333333333333
        0033663333330000333333333333000000666666FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF663333666666663333663366000000666633663366666633996633FFFF
        FFCCCCCCCCCC99CC99CCCCCC99999999999999CC6699999999CC9999999999CC
        9999CCCC99CC99CC000000000000000000000000336666CCCC99CC9999330033
        999966663333333333330033663300333333333333333333663300000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66333399333366663366333300
        0000663366666666663366666666FFFFFFCCCCCCFFCCCCCCCC99CC9999CC9999
        CC9999999966999966CC9999CC9999999999CC9999CC9999CC9999CC99999999
        99CC9999CC9999CC999999999933333399999933333333333366333333333333
        0033663333330000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC6666CCCC99CC99CCFFCC99CC9999FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666633
        FFFFFFFFFFFFFFFFCCFFFFFFFFFFFFFFFFCCFFFFFF333333FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 288
      Top = 0
      Width = 57
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
      OnClick = SpeedButton2Click
    end
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 0
      Width = 220
      Height = 57
      DataSource = ds
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbCancel, nbRefresh]
      Flat = True
      TabOrder = 0
    end
  end
  object qry: TIBQuery
    Database = DM.DBMain
    Transaction = DM.transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select tbl_time.ID, T_MONTH, T_YEAR, tbl_month.txt'
      ''
      
        'from TBL_TIME left join tbl_month on tbl_month.id=tbl_time.t_mon' +
        'th'
      ''
      'order by tbl_time.t_year desc, tbl_time.t_month')
    UpdateObject = upd
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TIME'
    Left = 28
    Top = 132
  end
  object upd: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  T_MONTH,'
      '  T_YEAR'
      'from TBL_TIME '
      'where'
      '  ID = :ID')
    ModifySQL.Strings = (
      'update TBL_TIME'
      'set'
      '  T_MONTH = :T_MONTH,'
      '  T_YEAR = :T_YEAR'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into TBL_TIME'
      '  (T_MONTH, T_YEAR)'
      'values'
      '  (:T_MONTH, :T_YEAR)')
    DeleteSQL.Strings = (
      'delete from TBL_TIME'
      'where'
      '  ID = :OLD_ID')
    Left = 92
    Top = 136
  end
  object ds: TDataSource
    DataSet = qry
    Left = 164
    Top = 140
  end
end