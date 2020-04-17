object F_bus_list: TF_bus_list
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_bus_list'
  ClientHeight = 597
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 8
    Top = 538
    Width = 393
    Height = 17
    DataField = 'address'
  end
  object DBText2: TDBText
    Left = 424
    Top = 538
    Width = 201
    Height = 17
    DataField = 'name_schema'
  end
  object DBGridEh2: TDBGridEh
    Left = 8
    Top = 35
    Width = 1089
    Height = 489
    DataSource = DM_.DS_oot
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDblClick = B_editClick
    OnDrawColumnCell = DBGridEh2DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'd_short_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1054#1082#1088#1091#1075
        Width = 50
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_gr_streets'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1059#1083#1080#1094#1072
        Width = 150
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'nn_oot'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1054#1054#1058
        Width = 50
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_oot'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1054#1054#1058
        Width = 231
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'direction'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
        Width = 70
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'id_tu'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1058#1059
        Width = 120
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_exe_short'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
        Width = 90
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'agreed_res'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1093#1077#1084#1072' '#1089#1086#1075#1083'.'
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'tp_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1058#1055
        Width = 120
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'type_input'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1052#1077#1089#1090#1086' '#1087#1086#1076#1082#1083
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object cb_districts: TDBLookupComboboxEh
    Left = 16
    Top = 8
    Width = 105
    Height = 21
    EditButtons = <>
    KeyField = 'id_district'
    ListField = 'd_short_name'
    ListSource = DM_.DS_cb_districts
    TabOrder = 1
    Visible = True
  end
  object cb_gr_streets: TDBLookupComboboxEh
    Left = 127
    Top = 8
    Width = 201
    Height = 21
    DropDownBox.Rows = 20
    EditButtons = <>
    KeyField = 'id_gr_street'
    ListField = 'name_gr_streets'
    ListSource = DM_.DS_cb_gr_streets
    TabOrder = 2
    Visible = True
  end
  object B_add: TBitBtn
    Left = 896
    Top = 530
    Width = 25
    Height = 25
    Caption = 'B_add'
    TabOrder = 3
    OnClick = B_addClick
  end
  object B_del: TBitBtn
    Left = 959
    Top = 530
    Width = 26
    Height = 25
    Caption = 'B_del'
    TabOrder = 4
    OnClick = B_delClick
  end
  object B_edit: TBitBtn
    Left = 927
    Top = 530
    Width = 26
    Height = 25
    Caption = 'B_edit'
    TabOrder = 5
    OnClick = B_editClick
  end
  object cb_exe: TDBLookupComboboxEh
    Left = 688
    Top = 8
    Width = 105
    Height = 21
    EditButtons = <>
    KeyField = 'id_exe'
    ListField = 'name_exe_short'
    ListSource = DM_.DS_cb_exe
    TabOrder = 6
    Visible = True
  end
  object cb_schema_check: TDBLookupComboboxEh
    Left = 800
    Top = 8
    Width = 57
    Height = 21
    EditButtons = <>
    KeyField = 'id_check'
    ListField = 'descr'
    ListSource = DM_.DS_cb_schema_check
    TabOrder = 7
    Visible = True
  end
  object cb_ready: TDBLookupComboboxEh
    Left = 880
    Top = 8
    Width = 121
    Height = 21
    EditButtons = <>
    KeyField = 'id_check'
    ListField = 'descr'
    ListSource = DM_.DS_cb_ready
    TabOrder = 8
    Visible = True
  end
  object B_f_apply: TButton
    Left = 1022
    Top = 8
    Width = 75
    Height = 25
    Caption = 'B_f_apply'
    TabOrder = 9
    OnClick = B_f_applyClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 578
    Width = 1103
    Height = 19
    Panels = <>
  end
  object B_pid: TBitBtn
    Left = 1024
    Top = 536
    Width = 33
    Height = 25
    Caption = 'B_pid'
    TabOrder = 11
    OnClick = B_pidClick
  end
end
