object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'MainForm1'
  ClientHeight = 504
  ClientWidth = 681
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 485
    Width = 681
    Height = 19
    Panels = <
      item
        Text = 'Last open child form:'
        Width = 120
      end
      item
        Width = 50
      end>
    ExplicitTop = 402
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 32
    object N1: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '
      Default = True
      object N2: TMenuItem
        Caption = #1054#1076#1085#1086
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1042#1090#1086#1088#1086#1077
        OnClick = N3Click
      end
    end
  end
end
