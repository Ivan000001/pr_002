object F_tp_points_rec: TF_tp_points_rec
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_tp_points_rec'
  ClientHeight = 227
  ClientWidth = 304
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object B_OK: TBitBtn
    Left = 221
    Top = 191
    Width = 75
    Height = 25
    Caption = 'B_OK'
    TabOrder = 0
    OnClick = B_OKClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 288
    Height = 177
    BorderStyle = bsSingle
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 13
      Height = 13
      Caption = #1058#1055
    end
    object Label2: TLabel
      Left = 16
      Top = 58
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object Label3: TLabel
      Left = 16
      Top = 113
      Width = 64
      Height = 13
      Caption = 'GPS, '#1096#1080#1088#1080#1085#1072
    end
    object Label4: TLabel
      Left = 143
      Top = 113
      Width = 68
      Height = 13
      Caption = 'GPS, '#1076#1086#1083#1075#1086#1090#1072
    end
    object e_address: TEdit
      Left = 16
      Top = 77
      Width = 248
      Height = 21
      TabOrder = 1
    end
    object e_long: TEdit
      Left = 143
      Top = 132
      Width = 121
      Height = 21
      TabOrder = 3
      OnKeyPress = e_latKeyPress
    end
    object e_lat: TEdit
      Left = 16
      Top = 132
      Width = 121
      Height = 21
      TabOrder = 2
      OnKeyPress = e_latKeyPress
    end
    object e_tp: TEdit
      Left = 16
      Top = 31
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
end
