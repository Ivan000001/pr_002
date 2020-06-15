object F_oot_rec: TF_oot_rec
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_oot_rec'
  ClientHeight = 473
  ClientWidth = 672
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
    Width = 393
    Height = 409
    BorderStyle = bsSingle
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 9
      Width = 31
      Height = 13
      Caption = #1054#1082#1088#1091#1075
    end
    object Label2: TLabel
      Left = 143
      Top = 9
      Width = 31
      Height = 13
      Caption = #1059#1083#1080#1094#1072
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 31
      Height = 13
      Caption = #1053#1086#1084#1077#1088
    end
    object label4: TLabel
      Left = 16
      Top = 102
      Width = 73
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object label5: TLabel
      Left = 279
      Top = 102
      Width = 66
      Height = 13
      Caption = #1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
    end
    object Label6: TLabel
      Left = 16
      Top = 148
      Width = 13
      Height = 13
      Caption = #1058#1059
    end
    object Label7: TLabel
      Left = 16
      Top = 200
      Width = 64
      Height = 13
      Caption = 'GPS, '#1096#1080#1088#1080#1085#1072
    end
    object Label8: TLabel
      Left = 152
      Top = 200
      Width = 68
      Height = 13
      Caption = 'GPS, '#1076#1086#1083#1075#1086#1090#1072
    end
    object Label9: TLabel
      Left = 16
      Top = 248
      Width = 134
      Height = 13
      Caption = #1040#1076#1088#1077#1089' '#1082' '#1073#1083#1080#1078#1072#1081#1096#1077#1081' '#1090#1086#1095#1082#1080
    end
    object Label10: TLabel
      Left = 15
      Top = 294
      Width = 65
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1089#1093#1077#1084#1099
    end
    object Label11: TLabel
      Left = 16
      Top = 340
      Width = 66
      Height = 13
      Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
    end
    object Label18: TLabel
      Left = 120
      Top = 56
      Width = 75
      Height = 13
      Caption = #1058#1080#1087' '#1087#1072#1074#1080#1083#1100#1086#1085#1072
    end
    object E_nn_oot: TEdit
      Left = 16
      Top = 75
      Width = 73
      Height = 21
      TabOrder = 2
    end
    object e_name: TEdit
      Left = 16
      Top = 121
      Width = 257
      Height = 21
      TabOrder = 3
    end
    object cb_dist: TComboBox
      Left = 279
      Top = 121
      Width = 66
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        #1074' '#1094'.'
        #1086#1090' '#1094'.')
    end
    object cb_districts: TDBLookupComboboxEh
      Left = 16
      Top = 28
      Width = 121
      Height = 21
      EditButtons = <>
      KeyField = 'id_district'
      ListField = 'd_short_name'
      TabOrder = 0
      Visible = True
    end
    object cb_gr_streets: TDBLookupComboboxEh
      Left = 143
      Top = 28
      Width = 226
      Height = 21
      DropDownBox.Rows = 25
      EditButtons = <>
      KeyField = 'id_gr_street'
      ListField = 'name_gr_streets'
      TabOrder = 1
      Visible = True
    end
    object cb_exe: TDBLookupComboboxEh
      Left = 15
      Top = 359
      Width = 121
      Height = 21
      EditButtons = <>
      KeyField = 'id_exe'
      ListField = 'name_exe_short'
      TabOrder = 8
      Visible = True
    end
    object e_lat: TEdit
      Left = 16
      Top = 219
      Width = 121
      Height = 21
      TabOrder = 5
      OnKeyPress = e_latKeyPress
    end
    object e_long: TEdit
      Left = 152
      Top = 219
      Width = 121
      Height = 21
      TabOrder = 6
      OnKeyPress = e_latKeyPress
    end
    object e_address: TEdit
      Left = 16
      Top = 267
      Width = 353
      Height = 21
      TabOrder = 7
    end
    object cb_tu: TDBLookupComboboxEh
      Left = 16
      Top = 168
      Width = 257
      Height = 21
      DropDownBox.Rows = 25
      EditButtons = <>
      KeyField = 'id_doc'
      ListField = 'id_tu'
      TabOrder = 9
      Visible = True
    end
    object cb_schems: TDBLookupComboboxEh
      Left = 15
      Top = 313
      Width = 257
      Height = 21
      DropDownBox.Rows = 25
      EditButtons = <>
      KeyField = 'id_schema'
      ListField = 'name_schema'
      TabOrder = 10
      Visible = True
    end
    object cb_type_oot: TDBComboBoxEh
      Left = 120
      Top = 75
      Width = 89
      Height = 21
      DynProps = <>
      EditButtons = <>
      Items.Strings = (
        '3.1'
        '4.1'
        '5.1'
        '2.2'
        '2.3'
        '1.3 '#1092#1083#1072#1075)
      TabOrder = 11
      Visible = True
    end
  end
  object Panel2: TPanel
    Left = 409
    Top = 8
    Width = 250
    Height = 409
    BorderStyle = bsSingle
    TabOrder = 1
    object Label12: TLabel
      Left = 16
      Top = 36
      Width = 132
      Height = 13
      Caption = #1055#1083#1072#1085' '#1087#1086' '#1074#1099#1073#1088#1086#1089#1091' '#1055#1053#1044', '#1096#1090
    end
    object Label13: TLabel
      Left = 16
      Top = 112
      Width = 71
      Height = 13
      Caption = #1058#1088#1072#1085#1096#1077#1080', '#1087'.'#1084'.'
    end
    object Label14: TLabel
      Left = 16
      Top = 158
      Width = 102
      Height = 13
      Caption = #1047#1072#1083#1086#1078#1077#1085#1086' '#1055#1053#1044', '#1087'.'#1084'.'
    end
    object Label15: TLabel
      Left = 16
      Top = 204
      Width = 101
      Height = 13
      Caption = #1055#1088#1086#1083#1086#1078#1077#1085#1086' '#1050#1051', '#1087'.'#1084'.'
    end
    object Label16: TLabel
      Left = 16
      Top = 250
      Width = 116
      Height = 13
      Caption = #1057#1084#1086#1085#1090#1080#1088#1086#1074#1072#1085#1086' '#1042#1051', '#1087'.'#1084'.'
    end
    object Label17: TLabel
      Left = 16
      Top = 296
      Width = 120
      Height = 13
      Caption = #1057#1084#1086#1085#1090#1080#1088#1086#1074#1072#1085#1086' '#1042#1056#1065', '#1096#1090
    end
    object chb_ready: TCheckBox
      Left = 16
      Top = 8
      Width = 153
      Height = 17
      Caption = #1042' '#1088#1072#1073#1086#1090#1077
      TabOrder = 0
    end
    object e_p_output: TEdit
      Left = 16
      Top = 55
      Width = 65
      Height = 21
      TabOrder = 1
    end
    object cb_where_output: TDBComboBoxEh
      Left = 96
      Top = 55
      Width = 121
      Height = 21
      DynProps = <>
      EditButtons = <>
      Items.Strings = (
        #1085#1077#1090
        #1074' '#1075#1072#1079#1086#1085
        #1074' '#1086#1087#1086#1088#1091)
      KeyItems.Strings = (
        '0'
        '1'
        '2')
      TabOrder = 2
      Visible = True
    end
    object e_trench: TEdit
      Left = 16
      Top = 131
      Width = 121
      Height = 21
      TabOrder = 3
      OnKeyPress = e_trenchKeyPress
    end
    object e_laythepipe: TEdit
      Left = 16
      Top = 177
      Width = 121
      Height = 21
      TabOrder = 4
      OnKeyPress = e_trenchKeyPress
    end
    object e_lay_cl: TEdit
      Left = 16
      Top = 223
      Width = 121
      Height = 21
      TabOrder = 5
      OnKeyPress = e_trenchKeyPress
    end
    object e_montage_al: TEdit
      Left = 16
      Top = 269
      Width = 121
      Height = 21
      TabOrder = 6
      OnKeyPress = e_trenchKeyPress
    end
    object e_count_vrsh: TEdit
      Left = 16
      Top = 315
      Width = 121
      Height = 21
      TabOrder = 7
      OnKeyPress = e_count_vrshKeyPress
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 361
      Width = 97
      Height = 17
      Caption = #1056#1072#1073#1086#1090#1099' '#1079#1072#1074#1077#1088#1096#1077#1085#1099
      TabOrder = 8
    end
  end
  object B_OK: TBitBtn
    Left = 584
    Top = 432
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = B_OKClick
  end
end
