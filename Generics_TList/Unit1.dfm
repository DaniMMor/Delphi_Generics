object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 274
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 25
    Top = 75
    Width = 75
    Height = 25
    Caption = 'add'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 25
    Top = 106
    Width = 75
    Height = 25
    Caption = 'del'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 25
    Top = 137
    Width = 75
    Height = 25
    Caption = 'listar'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 25
    Top = 168
    Width = 75
    Height = 25
    Caption = 'capacity'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 25
    Top = 199
    Width = 75
    Height = 25
    Caption = 'count'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 25
    Top = 230
    Width = 75
    Height = 25
    Caption = 'OnNotify'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Edit1: TEdit
    Left = 25
    Top = 35
    Width = 75
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 106
    Top = 35
    Width = 185
    Height = 220
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
  end
end
