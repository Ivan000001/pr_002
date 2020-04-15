object F_tp_points: TF_tp_points
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_tp_points'
  ClientHeight = 681
  ClientWidth = 502
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
    Left = 8
    Top = 8
    Width = 441
    Height = 649
    DataSource = DM_.DS_tp_points
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDblClick = B_editClick
    Columns = <
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
        DynProps = <>
        EditButtons = <>
        FieldName = 'address_point'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 285
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object b_add: TBitBtn
    Left = 464
    Top = 8
    Width = 25
    Height = 25
    Caption = 'b_add'
    TabOrder = 1
    OnClick = b_addClick
  end
  object B_edit: TBitBtn
    Left = 464
    Top = 48
    Width = 25
    Height = 25
    Caption = 'B_edit'
    TabOrder = 2
    OnClick = B_editClick
  end
  object B_del: TBitBtn
    Left = 464
    Top = 88
    Width = 25
    Height = 25
    Caption = 'B_del'
    TabOrder = 3
    OnClick = B_delClick
  end
end
