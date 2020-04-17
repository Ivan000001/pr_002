object F_pid_list: TF_pid_list
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'F_pid_list'
  ClientHeight = 763
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 55
    Top = 24
    Width = 243
    Height = 17
    DataField = 'name_oot'
    DataSource = DM_.DS_oot
  end
  object DBText2: TDBText
    Left = 336
    Top = 24
    Width = 65
    Height = 17
    DataField = 'direction'
    DataSource = DM_.DS_oot
  end
  object DBText3: TDBText
    Left = 16
    Top = 47
    Width = 273
    Height = 17
    DataField = 'address'
    DataSource = DM_.DS_oot
  end
  object DBText4: TDBText
    Left = 16
    Top = 24
    Width = 33
    Height = 17
    DataField = 'd_short_name'
    DataSource = DM_.DS_oot
  end
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 80
    Width = 473
    Height = 481
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
