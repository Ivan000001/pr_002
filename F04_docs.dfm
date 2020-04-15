object f_docs: Tf_docs
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'f_docs'
  ClientHeight = 423
  ClientWidth = 671
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
  object b_add: TBitBtn
    Left = 488
    Top = 16
    Width = 25
    Height = 25
    Caption = 'B_add'
    TabOrder = 1
    OnClick = b_addClick
  end
  object b_edit: TBitBtn
    Left = 488
    Top = 64
    Width = 25
    Height = 25
    Caption = 'B_edit'
    TabOrder = 2
    OnClick = b_editClick
  end
  object b_del: TBitBtn
    Left = 488
    Top = 104
    Width = 25
    Height = 25
    Caption = 'B_del'
    TabOrder = 3
    OnClick = b_delClick
  end
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 466
    Height = 393
    DataSource = DM_.DS_docs
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDblClick = b_editClick
    Columns = <
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
        FieldName = 'id_notifications'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1091#1074#1077#1076#1086#1084#1083#1077#1085#1080#1103
        Width = 100
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'id_requests'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1079#1072#1103#1074#1082#1080
        Width = 100
      end
      item
        Alignment = taCenter
        DynProps = <>
        EditButtons = <>
        FieldName = 'desct_state'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1072#1090#1091#1089' '#1076#1086#1075#1086#1074#1086#1088#1072
        Width = 108
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
