object f_docs_rec: Tf_docs_rec
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'f_docs_rec'
  ClientHeight = 338
  ClientWidth = 208
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 193
    Height = 289
    BorderStyle = bsSingle
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 13
      Height = 13
      Caption = #1058#1059
    end
    object Label2: TLabel
      Left = 16
      Top = 62
      Width = 83
      Height = 13
      Caption = #8470' '#1091#1074#1077#1076#1086#1084#1083#1077#1085#1080#1103
    end
    object Label3: TLabel
      Left = 16
      Top = 108
      Width = 51
      Height = 13
      Caption = #8470' '#1079#1072#1103#1074#1082#1080
    end
    object Label4: TLabel
      Left = 16
      Top = 154
      Width = 87
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089' '#1076#1086#1075#1086#1074#1086#1088#1072
    end
    object e_tu: TEdit
      Left = 16
      Top = 35
      Width = 153
      Height = 21
      TabOrder = 0
    end
    object e_notification: TEdit
      Left = 16
      Top = 81
      Width = 153
      Height = 21
      TabOrder = 1
    end
    object e_req: TEdit
      Left = 16
      Top = 127
      Width = 153
      Height = 21
      TabOrder = 2
    end
    object cb_state: TDBComboBoxEh
      Left = 16
      Top = 173
      Width = 153
      Height = 21
      DynProps = <>
      EditButtons = <>
      Items.Strings = (
        ''
        #1085#1072' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1080
        #1072#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085)
      KeyItems.Strings = (
        '0'
        '1'
        '2')
      TabOrder = 3
      Visible = True
    end
  end
  object BitBtn1: TBitBtn
    Left = 126
    Top = 303
    Width = 75
    Height = 25
    Caption = 'B_OK'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
