unit DataModul;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, SMDBFind, SMDBFltr, FR_DSet, FR_DBSet,
  FR_Class;

type
  TDataModule1 = class(TDataModule)
    DSLogin: TDataSource;
    Zcon: TZConnection;
    login_zq: TZQuery;
    DSTiket: TDataSource;
    tiket_zq: TZQuery;
    DSPenumpang: TDataSource;
    penumpang_zq: TZQuery;
    admin_zq: TZQuery;
    DSAdmin: TDataSource;
    DSStruk: TDataSource;
    struk_zq: TZQuery;
    frReport1: TfrReport;
    frReport2: TfrReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
