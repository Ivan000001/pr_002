object F_pid_list_add: TF_pid_list_add
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_pid_list_add'
  ClientHeight = 387
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 409
    Height = 361
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'pr_code'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076
        Width = 35
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'descr'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 339
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
