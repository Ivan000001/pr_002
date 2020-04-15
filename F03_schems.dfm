object F_schems: TF_schems
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_schems'
  ClientHeight = 632
  ClientWidth = 1122
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
    Left = 516
    Top = 143
    Width = 601
    Height = 17
    DataField = 'address'
    DataSource = DM_.DS_schems_oot
  end
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 473
    Height = 329
    DataSource = DM_.DS_schems
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDblClick = B_editClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_schema'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1093#1077#1084#1099
        Width = 148
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
  object DBGridEh2: TDBGridEh
    Left = 516
    Top = 8
    Width = 601
    Height = 129
    DataSource = DM_.DS_schems_oot
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDrawColumnCell = DBGridEh2DrawColumnCell
    Columns = <
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
        FieldName = 'nn_oot'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1054#1054#1058
        Width = 50
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
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object B_add: TBitBtn
    Left = 487
    Top = 8
    Width = 23
    Height = 25
    Caption = 'B_add'
    TabOrder = 2
    OnClick = B_addClick
  end
  object B_edit: TBitBtn
    Left = 487
    Top = 39
    Width = 23
    Height = 25
    Caption = 'B_edit'
    TabOrder = 3
    OnClick = B_editClick
  end
  object B_del: TBitBtn
    Left = 487
    Top = 70
    Width = 23
    Height = 25
    Caption = 'B_del'
    TabOrder = 4
    OnClick = B_delClick
  end
  object BitBtn4: TBitBtn
    Left = 487
    Top = 216
    Width = 25
    Height = 25
    Caption = 'BitBtn4'
    TabOrder = 5
  end
  object B_link: TBitBtn
    Left = 985
    Top = 166
    Width = 25
    Height = 25
    Caption = 'B_link'
    TabOrder = 6
  end
  object B_unlink: TBitBtn
    Left = 1016
    Top = 165
    Width = 25
    Height = 25
    Caption = 'B_unlink'
    TabOrder = 7
    OnClick = B_unlinkClick
  end
  object DBGridEh3: TDBGridEh
    Left = 8
    Top = 343
    Width = 945
    Height = 266
    DataSource = DM_.DS_gbu
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 8
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDblClick = B_g_editClick
    OnDrawColumnCell = DBGridEh3DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'gbu_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1059#1095#1072#1089#1090#1082#1072
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'address_point'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1040#1076#1088#1077#1089' '#1082' '#1073#1083#1080#1078#1072#1081#1096#1077#1081' '#1090#1086#1095#1082#1077
        Width = 222
      end
      item
        Alignment = taRightJustify
        DynProps = <>
        EditButtons = <>
        EditMask = '#.00'
        FieldName = 'len'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1083#1080#1085#1072', '#1087'.'#1084'.'
        Width = 80
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'squ'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055#1083#1086#1097#1072#1076#1100', '#1082#1074'.'#1084'.'
        Width = 80
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_req'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1103#1074#1082#1080
        Width = 76
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
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object B_g_add: TBitBtn
    Left = 972
    Top = 343
    Width = 25
    Height = 25
    Caption = 'B_g_add'
    TabOrder = 9
    OnClick = B_g_addClick
  end
  object B_g_edit: TBitBtn
    Left = 972
    Top = 374
    Width = 25
    Height = 25
    Caption = 'B_g_edit'
    TabOrder = 10
    OnClick = B_g_editClick
  end
  object B_g_del: TBitBtn
    Left = 972
    Top = 405
    Width = 25
    Height = 25
    Caption = 'B_g_del'
    TabOrder = 11
    OnClick = B_g_delClick
  end
  object BitBtn5: TBitBtn
    Left = 972
    Top = 463
    Width = 25
    Height = 25
    Caption = 'BitBtn5'
    TabOrder = 12
    OnClick = BitBtn5Click
  end
end
