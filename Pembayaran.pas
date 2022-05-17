unit Pembayaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, DB, ZAbstractRODataset, ZDataset,
  Grids, DBGrids, SMDBGrid, SMDBCtrl, FR_DSet, FR_DBSet, FR_Class, mxExport,
  ZAbstractDataset, ZAbstractConnection, ZConnection;

type
  TForm5 = class(TForm)
    Button3: TButton;
    Shape2: TShape;
    Label3: TLabel;
    Label1: TLabel;
    SMDBGrid1: TSMDBGrid;
    DSTicket: TDataSource;
    SMDBNavigator1: TSMDBNavigator;
    mxDataSetExport1: TmxDataSetExport;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    Label2: TLabel;
    Label4: TLabel;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    Label5: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure SMDBNavigator1Click(Sender: TObject; Button: TSMNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses flightagency, DataModul;

{$R *.dfm}

procedure TForm5.Button3Click(Sender: TObject);
begin
if (Application.MessageBox('Are you sure?', 'Confirm', MB_OKCANCEL) = ID_OK)
    then
  begin
    Form5.Hide;
    Form1.Show;
  end;
end;

procedure TForm5.SMDBNavigator1Click(Sender: TObject;
  Button: TSMNavigateBtn);
begin
case Button of
    sbExport: mxDataSetExport1.Execute;
    sbPrint:
      begin
        frReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
          'TiketUser.frf');
        frReport1.ShowReport();
      end;
  end;
end;

end.
