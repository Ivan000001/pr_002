object F_pid_list: TF_pid_list
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_pid_list'
  ClientHeight = 393
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 64
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 394
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 16
    Top = 43
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object l_id_oot: TLabel
    Left = 431
    Top = 24
    Width = 3
    Height = 13
    Visible = False
  end
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 80
    Width = 409
    Height = 289
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    Columns = <
      item
        Alignment = taCenter
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
  object B_add: TBitBtn
    Left = 431
    Top = 80
    Width = 33
    Height = 33
    Caption = 'B_add'
    TabOrder = 1
    OnClick = B_addClick
  end
  object B_del: TBitBtn
    Left = 431
    Top = 119
    Width = 33
    Height = 33
    Caption = 'B_del'
    TabOrder = 2
    OnClick = B_delClick
  end
  object B_exe: TBitBtn
    Left = 431
    Top = 158
    Width = 33
    Height = 33
    Caption = 'B_exe'
    TabOrder = 3
  end
end
