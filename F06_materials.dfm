object F_materials: TF_materials
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_materials'
  ClientHeight = 575
  ClientWidth = 608
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
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 8
    Width = 481
    Height = 281
    DataSource = DM_.DS_materials
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
        FieldName = 'short_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1088#1086#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 162
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_material'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 214
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'add_act'
        Footers = <>
        KeyList.Strings = (
          '0'
          '1')
        PickList.Strings = (
          #1085#1077#1090
          #1076#1072)
        Title.Alignment = taCenter
        Title.Caption = #1074' '#1072#1082#1090#1077'?'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 16
    Top = 304
    Width = 489
    Height = 249
    DataSource = DM_.DS_materials_doc
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    RowHeight = 50
    TabOrder = 1
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDblClick = B_m_editClick
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090', '#1089#1077#1088#1090#1080#1092#1080#1082#1072#1090', '#1085#1086#1084#1077#1088#1072', '#1076#1072#1090#1099
        Width = 455
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object B_add: TBitBtn
    Left = 503
    Top = 47
    Width = 33
    Height = 25
    Caption = 'B_add'
    TabOrder = 2
    OnClick = B_addClick
  end
  object B_edit: TBitBtn
    Left = 503
    Top = 78
    Width = 33
    Height = 25
    Caption = 'B_edit'
    TabOrder = 3
    OnClick = B_editClick
  end
  object B_del: TBitBtn
    Left = 503
    Top = 109
    Width = 33
    Height = 25
    Caption = 'B_del'
    TabOrder = 4
    OnClick = B_delClick
  end
  object B_m_add: TBitBtn
    Left = 511
    Top = 304
    Width = 25
    Height = 25
    Caption = 'B_m_add'
    TabOrder = 5
    OnClick = B_m_addClick
  end
  object B_m_del: TBitBtn
    Left = 511
    Top = 366
    Width = 27
    Height = 25
    Caption = 'B_m_del'
    TabOrder = 6
    OnClick = B_m_delClick
  end
  object B_m_edit: TBitBtn
    Left = 511
    Top = 335
    Width = 25
    Height = 25
    Caption = 'B_m_edit'
    TabOrder = 7
    OnClick = B_m_editClick
  end
  object chb_active_material: TCheckBox
    Left = 503
    Top = 8
    Width = 97
    Height = 33
    Caption = #1053#1077#1072#1082#1090#1080#1074#1085#1099#1077' '#1079#1072#1087#1080#1089#1080
    TabOrder = 8
    WordWrap = True
    OnClick = chb_active_materialClick
  end
end
