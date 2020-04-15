object F_gbu_rec: TF_gbu_rec
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_gbu_rec'
  ClientHeight = 267
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 449
    Height = 217
    BorderStyle = bsSingle
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 58
      Height = 13
      Caption = #8470' '#1059#1095#1072#1089#1090#1082#1072
    end
    object Label2: TLabel
      Left = 16
      Top = 54
      Width = 134
      Height = 13
      Caption = #1040#1076#1088#1077#1089' '#1082' '#1073#1083#1080#1078#1072#1081#1096#1077#1081' '#1090#1086#1095#1082#1077
    end
    object Label3: TLabel
      Left = 16
      Top = 100
      Width = 80
      Height = 13
      Caption = #1044#1072#1085#1085#1099#1077' '#1086#1090' '#1054#1054#1058
    end
    object Label4: TLabel
      Left = 16
      Top = 146
      Width = 59
      Height = 13
      Caption = #1044#1083#1080#1085#1072', '#1087'.'#1084'.'
    end
    object Label5: TLabel
      Left = 168
      Top = 146
      Width = 80
      Height = 13
      Caption = #1055#1083#1086#1097#1072#1076#1100', '#1082#1074'.'#1084'.'
    end
    object e_num: TEdit
      Left = 16
      Top = 27
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object e_address: TEdit
      Left = 16
      Top = 73
      Width = 409
      Height = 21
      TabOrder = 1
    end
    object e_len: TEdit
      Left = 16
      Top = 165
      Width = 121
      Height = 21
      TabOrder = 2
      OnKeyPress = e_lenKeyPress
    end
    object e_squ: TEdit
      Left = 168
      Top = 165
      Width = 121
      Height = 21
      TabOrder = 3
      OnKeyPress = e_lenKeyPress
    end
    object cb_oot: TDBLookupComboboxEh
      Left = 16
      Top = 119
      Width = 409
      Height = 21
      DropDownBox.Rows = 25
      EditButtons = <>
      KeyField = 'id_oot'
      ListField = 'ls_items'
      ListSource = DM_.DS_gbu_oot
      TabOrder = 4
      Visible = True
    end
  end
  object B_OK: TBitBtn
    Left = 382
    Top = 231
    Width = 75
    Height = 25
    Caption = 'B_OK'
    TabOrder = 1
    OnClick = B_OKClick
  end
end
