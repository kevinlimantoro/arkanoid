object Form1: TForm1
  Left = 298
  Top = 109
  Width = 689
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 32
    Top = 352
    Width = 249
    Height = 73
    ColCount = 4
    Enabled = False
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
    ColWidths = (
      26
      34
      91
      77)
  end
  object Button1: TButton
    Left = 576
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Play'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 24
    Top = 8
    Width = 625
    Height = 337
    TabOrder = 2
    object Shape1: TShape
      Left = 248
      Top = 288
      Width = 89
      Height = 25
    end
    object Shape2: TShape
      Left = 0
      Top = 0
      Width = 25
      Height = 25
      Shape = stCircle
    end
  end
  object ScrollBar1: TScrollBar
    Left = 288
    Top = 368
    Width = 121
    Height = 17
    Min = 1
    PageSize = 0
    Position = 20
    TabOrder = 3
    OnChange = ScrollBar1Change
  end
  object ColorBox1: TColorBox
    Left = 424
    Top = 368
    Width = 145
    Height = 22
    ItemHeight = 16
    TabOrder = 4
    OnChange = ColorBox1Change
  end
  object Button2: TButton
    Left = 472
    Top = 408
    Width = 73
    Height = 17
    Caption = 'stop'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 8
    Top = 416
  end
end
