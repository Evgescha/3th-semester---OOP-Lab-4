object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 213
  ClientWidth = 196
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 30
    Height = 13
    Caption = #1063#1080#1089#1083#1086
  end
  object Label2: TLabel
    Left = 40
    Top = 80
    Width = 92
    Height = 13
    Caption = #1048#1089#1093#1086#1076#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072
  end
  object Label4: TLabel
    Left = 8
    Top = 145
    Width = 24
    Height = 13
    Caption = #1048#1090#1086#1075
  end
  object Label5: TLabel
    Left = 8
    Top = 164
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 54
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 57
    Top = 35
    Width = 75
    Height = 25
    Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080
    TabOrder = 1
  end
  object RadioButton1: TRadioButton
    Left = 16
    Top = 99
    Width = 32
    Height = 17
    Caption = '2'
    TabOrder = 2
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 54
    Top = 99
    Width = 33
    Height = 17
    Caption = '4'
    TabOrder = 3
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 93
    Top = 99
    Width = 27
    Height = 17
    Caption = '6'
    TabOrder = 4
    OnClick = RadioButton3Click
  end
  object RadioButton4: TRadioButton
    Left = 16
    Top = 122
    Width = 33
    Height = 17
    Caption = '8'
    TabOrder = 5
    OnClick = RadioButton4Click
  end
  object RadioButton5: TRadioButton
    Left = 54
    Top = 122
    Width = 33
    Height = 17
    Caption = '10'
    Checked = True
    TabOrder = 6
    TabStop = True
    OnClick = RadioButton5Click
  end
  object RadioButton6: TRadioButton
    Left = 93
    Top = 122
    Width = 32
    Height = 17
    Caption = '16'
    TabOrder = 7
    OnClick = RadioButton6Click
  end
  object Button2: TButton
    Left = 113
    Top = 164
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 8
    OnClick = Button2Click
  end
end
