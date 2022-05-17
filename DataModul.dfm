object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 158
  Top = 109
  Height = 408
  Width = 332
  object DSLogin: TDataSource
    DataSet = login_zq
    Left = 80
    Top = 24
  end
  object Zcon: TZConnection
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
    Top = 24
  end
  object login_zq: TZQuery
    Connection = Zcon
    Active = True
    SQL.Strings = (
      'select * from penumpang')
    Params = <>
    Left = 136
    Top = 24
  end
  object DSTiket: TDataSource
    DataSet = tiket_zq
    Left = 80
    Top = 88
  end
  object tiket_zq: TZQuery
    Connection = Zcon
    Active = True
    SQL.Strings = (
      'select * from tiket')
    Params = <>
    Left = 136
    Top = 88
  end
  object DSPenumpang: TDataSource
    DataSet = penumpang_zq
    Left = 80
    Top = 144
  end
  object penumpang_zq: TZQuery
    Connection = Zcon
    Active = True
    SQL.Strings = (
      'select * from penumpang')
    Params = <>
    Left = 136
    Top = 144
  end
  object admin_zq: TZQuery
    Connection = Zcon
    Active = True
    SQL.Strings = (
      'select * from admin')
    Params = <>
    Left = 136
    Top = 200
  end
  object DSAdmin: TDataSource
    DataSet = admin_zq
    Left = 80
    Top = 200
  end
  object DSStruk: TDataSource
    DataSet = struk_zq
    Left = 80
    Top = 256
  end
  object struk_zq: TZQuery
    Connection = Zcon
    Active = True
    SQL.Strings = (
      'select * from struk_pembayaran')
    Params = <>
    Left = 136
    Top = 256
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 664
    Top = 256
    ReportForm = {17000000}
  end
  object frReport2: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 664
    Top = 256
    ReportForm = {17000000}
  end
end
