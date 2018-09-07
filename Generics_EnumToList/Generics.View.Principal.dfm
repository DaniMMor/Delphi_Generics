object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 293
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 202
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Mes'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 283
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Dia'
    TabOrder = 3
    OnClick = Button4Click
  end
  object ComboBox1: TComboBox
    Left = 202
    Top = 133
    Width = 145
    Height = 21
    TabOrder = 4
    Text = 'ComboBox1'
  end
end
