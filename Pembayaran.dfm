object Form5: TForm5
  Left = 306
  Top = 94
  Width = 899
  Height = 475
  Caption = 'Cetak Tiket'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 312
    Top = 16
    Width = 193
    Height = 33
    Brush.Color = clTeal
  end
  object Label3: TLabel
    Left = 328
    Top = 16
    Width = 156
    Height = 30
    Caption = 'Pencetakan Tiket'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Nirmala UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 392
    Top = 104
    Width = 3
    Height = 13
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 296
    Top = 320
    Width = 37
    Height = 20
    Caption = 'Cetak'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Nirmala UI'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 384
    Top = 320
    Width = 44
    Height = 20
    Caption = 'Ekspor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Nirmala UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 464
    Top = 320
    Width = 49
    Height = 20
    Caption = 'Refresh'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Nirmala UI'
    Font.Style = []
    ParentFont = False
  end
  object Button3: TButton
    Left = 16
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Logout'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button3Click
  end
  object SMDBGrid1: TSMDBGrid
    Left = 40
    Top = 72
    Width = 801
    Height = 177
    DataSource = DSTicket
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
  end
  object SMDBNavigator1: TSMDBNavigator
    Left = 272
    Top = 256
    Width = 264
    Height = 65
    DataSource = DSTicket
    VisibleButtons = [sbPrint, sbExport, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 2
    OnClick = SMDBNavigator1Click
  end
  object DSTicket: TDataSource
    DataSet = ZQuery1
    Left = 88
    Top = 264
  end
  object mxDataSetExport1: TmxDataSetExport
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'hh:mm'
    DateTimeFormat = 'hh:mm dd/MM/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard]
    ExportStyle = xsView
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exporting DataSet'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancel'
    Messages.CreatedText = 'Created:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Export'
    Messages.ExportToFile = 'Export &to file'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Save document'
    Messages.SelectFormat = 'E&xport formats:'
    Messages.Text = 'Processing...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&View only'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 20
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -11
    EXCEL.HeaderFont.Name = 'MS Sans Serif'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    DataSet = ZQuery1
    Left = 168
    Top = 264
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 664
    Top = 256
    ReportForm = {17000000}
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = ZQuery1
    Left = 728
    Top = 256
  end
  object ZConnection1: TZConnection
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
    Left = 32
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from struk_pembayaran')
    Params = <>
    Left = 32
    Top = 264
  end
end
