object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 135
  ClientWidth = 192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 80
    Width = 177
    Height = 28
    Caption = 'Password Strength'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtPassword: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 0
    OnChange = passwordStrenght
  end
  object pbStrenght: TProgressBar
    Left = 8
    Top = 48
    Width = 150
    Height = 17
    TabOrder = 1
  end
  object Button1: TButton
    Left = 296
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
  end
end
