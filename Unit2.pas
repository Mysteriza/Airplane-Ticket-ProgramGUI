unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, jpeg, SMDBCtrl, FR_DSet, FR_DBSet,
  FR_Class, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFormTiket = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Label6: TLabel;
    ComboBox6: TComboBox;
    Label7: TLabel;
    Edit2: TEdit;
    Label9: TLabel;
    Button2: TButton;
    Label8: TLabel;
    Shape1: TShape;
    Image1: TImage;
    Button3: TButton;
    DateTimePicker: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTiket: TFormTiket;

implementation

uses flightagency, DataModul, Pembayaran;

{$R *.dfm}

procedure TFormTiket.Button1Click(Sender: TObject);
begin
  if (Application.MessageBox('Are you sure?', 'Confirm', MB_OKCANCEL) = ID_OK)
    then
  begin
    FormTiket.Hide;
    Form1.Show;
  end;
end;

procedure TFormTiket.FormCreate(Sender: TObject);
begin
  DataModule1.tiket_zq.First;
  while not DataModule1.tiket_zq.Eof do
  begin
    ComboBox1.Items.Add(DataModule1.tiket_zq.FieldByName('keberangkatan').AsString);
    DataModule1.tiket_zq.Next;
  end;
  DataModule1.tiket_zq.First;
  while not DataModule1.tiket_zq.Eof do
  begin
    ComboBox2.Items.Add(DataModule1.tiket_zq.FieldByName('tujuan').AsString);
    DataModule1.tiket_zq.Next;
  end;
  DataModule1.tiket_zq.First;
  while not DataModule1.tiket_zq.Eof do
  begin
    ComboBox3.Items.Add(DataModule1.tiket_zq.FieldByName('maskapai').AsString);
    DataModule1.tiket_zq.Next;
  end;
  DataModule1.tiket_zq.First;
  while not DataModule1.tiket_zq.Eof do
  begin
    ComboBox4.Items.Add(DataModule1.tiket_zq.FieldByName('pembayaran').AsString);
    DataModule1.tiket_zq.Next;
  end;
  DataModule1.tiket_zq.First;
  while not DataModule1.tiket_zq.Eof do
  begin
    ComboBox5.Items.Add(DataModule1.tiket_zq.FieldByName('kelas').AsString);
    DataModule1.tiket_zq.Next;
  end;
  DataModule1.tiket_zq.First;
  while not DataModule1.penumpang_zq.Eof do
  begin
    ComboBox6.Items.Add(DataModule1.penumpang_zq.FieldByName('jum_penumpang').AsString);
    DataModule1.penumpang_zq.Next;
  end;
end;

procedure TFormTiket.Button3Click(Sender: TObject);
var
  jumlah: Real;
begin
  jumlah := 0;
  if (ComboBox1.text = '') or (ComboBox2.text = '') or (ComboBox3.text = '') or
    (ComboBox4.text = '') or (ComboBox5.text = '') or (ComboBox6.text = '') then
  begin
    if ComboBox1.Text = '' then
      MessageBox(handle, 'Keberangkatan belum diisi!', 'Warning!', mb_iconerror)
    else if ComboBox2.Text = '' then
      MessageBox(handle, 'Tujuan belum diisi!', 'Warning!',
        mb_iconerror)
    else if ComboBox3.Text = '' then
      MessageBox(handle, 'Maskapai belum diisi!', 'Warning!',
        mb_iconerror)
    else if ComboBox4.Text = '' then
      MessageBox(handle, 'Pembayaran belum diisi!', 'Warning!',
        mb_iconerror)
    else if ComboBox5.Text = '' then
      MessageBox(handle, 'Kelas belum diisi!', 'Warning!',
        mb_iconerror)
    else if ComboBox6.Text = '' then
      MessageBox(handle, 'Jumlah penumpang belum diisi!', 'Warning!',
        mb_iconerror)
  end
  else
  begin
    if ComboBox2.Text = 'Bali' then
    begin
      jumlah := jumlah + 1000000;
      Edit2.Text := FloatToStr(jumlah);
    end
    else if ComboBox2.Text = 'Yogyakarta' then
    begin
      jumlah := jumlah + 800000;
      Edit2.Text := FloatToStr(jumlah);
    end
    else if ComboBox2.Text = 'Medan' then
    begin
      jumlah := jumlah + 500000;
      Edit2.Text := FloatToStr(jumlah);
    end;

    if ComboBox5.Text = 'Ekonomi' then
    begin
      jumlah := jumlah + 10000;
      Edit2.Text := FloatToStr(jumlah);
    end
    else if ComboBox5.Text = 'Bisnis' then
    begin
      jumlah := jumlah + 20000;
      Edit2.Text := FloatToStr(jumlah);
    end
    else if ComboBox5.Text = 'Eksekutif' then
    begin
      jumlah := jumlah + 30000;
      Edit2.Text := FloatToStr(jumlah);
    end;

    if ComboBox6.Text = '1' then
    begin
      jumlah := jumlah * 1;
      Edit2.Text := FloatToStr(jumlah);
    end
    else if ComboBox6.Text = '2' then
    begin
      jumlah := jumlah * 2;
      Edit2.Text := FloatToStr(jumlah);
    end
    else if ComboBox6.Text = '3' then
    begin
      jumlah := jumlah * 3;
      Edit2.Text := FloatToStr(jumlah);
    end;
  end;

end;

procedure TFormTiket.Button2Click(Sender: TObject);
begin
  if (ComboBox1.text = '') or (ComboBox2.text = '') or (ComboBox3.text = '') or
    (ComboBox4.text = '') or (ComboBox5.text = '') or (ComboBox6.text = '') then
  begin
    if ComboBox1.Text = '' then
      MessageBox(handle, 'Keberangkatan belum diisi!', 'Warning!', mb_iconerror)
    else if ComboBox2.Text = '' then
      MessageBox(handle, 'Tujuan belum diisi!', 'Warning!',
        mb_iconerror)
    else if ComboBox3.Text = '' then
      MessageBox(handle, 'Maskapai belum diisi!', 'Warning!',
        mb_iconerror)
    else if ComboBox4.Text = '' then
      MessageBox(handle, 'Pembayaran belum diisi!', 'Warning!',
        mb_iconerror)
    else if ComboBox5.Text = '' then
      MessageBox(handle, 'Kelas belum diisi!', 'Warning!',
        mb_iconerror)
    else if ComboBox6.Text = '' then
      MessageBox(handle, 'Jumlah penumpang belum diisi!', 'Warning!',
        mb_iconerror)
  end
  else
  begin
    DataModule1.struk_zq.Open;
    DataModule1.struk_zq.Append;
    DataModule1.struk_zq.FieldByName('keberangkatan').AsString :=
      Combobox1.Text;
    DataModule1.struk_zq.FieldByName('tujuan').AsString := Combobox2.Text;
    DataModule1.struk_zq.FieldByName('maskapai').AsString := Combobox3.Text;
    DataModule1.struk_zq.FieldByName('pembayaran').AsString := Combobox4.Text;
    DataModule1.struk_zq.FieldByName('kelas').AsString := Combobox5.Text;
    DataModule1.struk_zq.FieldByName('jum_penumpang').AsString := Combobox6.Text;
    DataModule1.struk_zq.FieldByName('tanggal_berangkat').AsDateTime := DateTimePicker.DateTime;
    DataModule1.struk_zq.FieldByName('total_biaya').AsString := Edit2.Text;
    DataModule1.struk_zq.ApplyUpdates;
    MessageBox(0,
      'Tiket Anda berhasil dipesan, silahkan lakukan pembayaran melalui kode virtual account yang sudah dikirim melalui SMS. Jika pembayaran sudah dilakukan, Anda bisa mencetak tiketnya dengan mengakses form pencetak tiket.',
      'Transaksi Berhasil!', MB_ICONINFORMATION or MB_OK);
    ComboBox1.Clear;
    ComboBox2.Clear;
    ComboBox3.Clear;
    ComboBox4.Clear;
    ComboBox6.Clear;
    Edit2.Clear;
  end;
end;

end.

