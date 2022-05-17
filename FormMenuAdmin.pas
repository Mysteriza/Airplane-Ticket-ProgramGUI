unit FormMenuAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, SMDBGrid, ExtCtrls,
  SMDBCtrl, jpeg, SMDBFltr, SMDBFind;

type
  TMenuAdmin = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    SMDBNavigator1: TSMDBNavigator;
    SMDBGrid1: TSMDBGrid;
    ZCon1: TZConnection;
    admin1_zq: TZQuery;
    admin_ds: TDataSource;
    SMDBGrid2: TSMDBGrid;
    SMDBNavigator2: TSMDBNavigator;
    penumpang_ds: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    penumpang_zq: TZQuery;
    SMDBGrid3: TSMDBGrid;
    tiket_ds: TDataSource;
    tiket_zq: TZQuery;
    Label4: TLabel;
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    findTiket: TSMDBFindDialog;
    filterTiket: TSMDBFilterDialog;
    Edit7: TEdit;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuAdmin: TMenuAdmin;

implementation

uses flightagency;

{$R *.dfm}

procedure TMenuAdmin.Button1Click(Sender: TObject);
begin
  if (Application.MessageBox('Apakah Anda yakin?', 'Confirm', MB_OKCANCEL) =
    ID_OK) then
  begin
    MenuAdmin.Hide;
    Form1.Show;
  end;
end;

procedure TMenuAdmin.Button2Click(Sender: TObject);
begin
  tiket_zq.Open;
  tiket_zq.Append;
  tiket_zq.FieldByName('tujuan').AsString := Edit1.Text;
  tiket_zq.FieldByName('harga_tiket').AsString := Edit2.Text;
  tiket_zq.FieldByName('maskapai').AsString := Edit3.Text;
  tiket_zq.FieldByName('keberangkatan').AsString := Edit4.Text;
  tiket_zq.FieldByName('pembayaran').AsString := Edit5.Text;
  tiket_zq.FieldByName('kelas').AsString := Edit6.Text;
  tiket_zq.ApplyUpdates;
  Application.MessageBox('Data Berhasil Dimasukkan!', 'Info', MB_OK +
    MB_ICONINFORMATION);
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
end;

procedure TMenuAdmin.Button4Click(Sender: TObject);
begin
  if tiket_zq.RecordCount <= 0 then
    Application.MessageBox('Pilih Data terlebih dahulu!', 'Warning', MB_OK +
      MB_ICONSTOP)
  else
    tiket_zq.Delete;
  Application.MessageBox('Data Berhasil Dihapus!', 'Info', MB_OK +
    MB_ICONINFORMATION);
end;

procedure TMenuAdmin.Button3Click(Sender: TObject);
begin
  tiket_zq.Edit;
  tiket_zq.FieldByName('tujuan').AsString := Edit1.Text;
  tiket_zq.FieldByName('harga_tiket').AsString := Edit2.Text;
  tiket_zq.FieldByName('maskapai').AsString := Edit3.Text;
  tiket_zq.FieldByName('keberangkatan').AsString := Edit4.Text;
  tiket_zq.FieldByName('pembayaran').AsString := Edit5.Text;
  tiket_zq.FieldByName('kelas').AsString := Edit6.Text;
  tiket_zq.ApplyUpdates;
  Application.MessageBox('Data Berhasil Diupdate!', 'Info', MB_OK +
    MB_ICONINFORMATION);
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
end;

procedure TMenuAdmin.Edit7Change(Sender: TObject);
begin
  tiket_zq.SQL.text := 'select * from tiket where id_tiket like"' + Edit7.text + '%"';
  tiket_zq.Active := True;
end;

end.

