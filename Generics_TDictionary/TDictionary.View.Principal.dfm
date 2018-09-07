object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 396
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 40
    Top = 13
    Width = 135
    Height = 25
    Caption = 'Add'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 44
    Width = 135
    Height = 25
    Caption = 'TryGetValue'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 40
    Top = 75
    Width = 135
    Height = 25
    Caption = 'Remove'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 40
    Top = 106
    Width = 135
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 40
    Top = 137
    Width = 135
    Height = 25
    Caption = 'ContainsKey'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 40
    Top = 168
    Width = 135
    Height = 25
    Caption = 'ContainsValue'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 40
    Top = 199
    Width = 135
    Height = 25
    Caption = 'AddOrSetValue'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 40
    Top = 230
    Width = 135
    Height = 25
    Caption = 'Lista Key'
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 40
    Top = 261
    Width = 135
    Height = 25
    Caption = 'Lista Value'
    TabOrder = 8
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 40
    Top = 292
    Width = 135
    Height = 25
    Caption = 'Clear'
    TabOrder = 9
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 40
    Top = 323
    Width = 135
    Height = 25
    Caption = 'OnKeyNotify'
    TabOrder = 10
    OnClick = Button11Click
  end
  object edtCPF: TEdit
    Left = 190
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object edtNome: TEdit
    Left = 317
    Top = 13
    Width = 223
    Height = 21
    TabOrder = 12
  end
  object Memo1: TMemo
    Left = 190
    Top = 40
    Width = 350
    Height = 339
    TabOrder = 13
  end
  object Button12: TButton
    Left = 40
    Top = 354
    Width = 135
    Height = 25
    Caption = 'OnValueNotify'
    TabOrder = 14
    OnClick = Button12Click
  end
end
