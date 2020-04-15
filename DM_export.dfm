object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 518
  Width = 521
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    ClientCodepage = 'cp1251'
    Properties.Strings = (
      'codepage=cp1251')
    Connected = True
    HostName = 'db-pu01'
    Port = 3306
    Database = 'metz_bus_stops_01'
    User = 'metz'
    Password = '11223344'
    Protocol = 'MariaDB-10'
    Left = 24
    Top = 16
  end
end
