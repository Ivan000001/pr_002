object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'MainForm'
  ClientHeight = 186
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object B_bus_list: TBitBtn
    Left = 40
    Top = 16
    Width = 75
    Height = 57
    Caption = 'bus_list'
    TabOrder = 0
    OnClick = B_bus_listClick
  end
  object B_tp_point: TBitBtn
    Left = 121
    Top = 16
    Width = 75
    Height = 57
    Caption = 'B_tp_point'
    TabOrder = 1
    OnClick = B_tp_pointClick
  end
  object B_schema: TBitBtn
    Left = 200
    Top = 16
    Width = 75
    Height = 57
    Caption = 'B_schema'
    TabOrder = 2
    OnClick = B_schemaClick
  end
  object B_docs: TBitBtn
    Left = 281
    Top = 16
    Width = 75
    Height = 57
    Caption = 'B_docs'
    TabOrder = 3
    OnClick = B_docsClick
  end
end
