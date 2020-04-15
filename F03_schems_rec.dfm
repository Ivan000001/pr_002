object F_schems_rec: TF_schems_rec
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_schems_rec'
  ClientHeight = 335
  ClientWidth = 298
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
    Left = 9
    Top = 8
    Width = 281
    Height = 257
    BorderStyle = bsSingle
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 107
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1093#1077#1084#1099
    end
    object Label2: TLabel
      Left = 24
      Top = 98
      Width = 13
      Height = 13
      Caption = #1058#1055
    end
    object Label3: TLabel
      Left = 24
      Top = 152
      Width = 117
      Height = 13
      Caption = #1057#1087#1086#1089#1086#1073' '#1087#1088#1080#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
    end
    object e_name: TEdit
      Left = 24
      Top = 27
      Width = 201
      Height = 21
      TabOrder = 0
    end
    object chb_res: TCheckBox
      Left = 24
      Top = 64
      Width = 145
      Height = 17
      Caption = #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1086' '#1089' '#1056#1069#1057
      TabOrder = 1
    end
    object cb_tp: TDBLookupComboboxEh
      Left = 24
      Top = 117
      Width = 145
      Height = 21
      DropDownBox.Rows = 25
      EditButtons = <>
      KeyField = 'id_tp_point'
      ListField = 'tp_name'
      ListSource = DM_.DS_cb_tp
      TabOrder = 2
      Visible = True
    end
    object cb_type_input: TComboBox
      Left = 24
      Top = 171
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        #1082' '#1096#1080#1085#1072#1084' '#1074' '#1058#1055
        #1042#1056#1065' '#1074#1085#1091#1090#1088#1080
        #1042#1056#1065' '#1089#1085#1072#1088#1091#1078#1080)
    end
    object BitBtn1: TBitBtn
      Left = 160
      Top = 216
      Width = 25
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 4
    end
  end
  object B_OK: TBitBtn
    Left = 215
    Top = 287
    Width = 75
    Height = 25
    Caption = 'B_OK'
    TabOrder = 1
    OnClick = B_OKClick
  end
  object BitBtn2: TBitBtn
    Left = 200
    Top = 224
    Width = 25
    Height = 25
    Caption = 'BitBtn2'
    TabOrder = 2
  end
end
