object DataModule3: TDataModule3
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 361
  Width = 309
  object DSAdmin1: TDataSource
    DataSet = Admin1_zq
    Left = 88
    Top = 40
  end
  object ZCon1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'flightagency'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Windows\libmysql.dll'
    Left = 24
    Top = 40
  end
  object Admin1_zq: TZQuery
    Connection = ZCon1
    SQL.Strings = (
      'select * from admin')
    Params = <>
    Left = 144
    Top = 40
  end
end
