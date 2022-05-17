unit MenuRegistrasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses flightagency, DataModul;

{$R *.dfm}

procedure TForm4.Button2Click(Sender: TObject);
begin
  begin
    Form4.Hide;
    Form1.Show;
  end;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  DataModule1.penumpang_zq.Open;
  DataModule1.penumpang_zq.Append;
  DataModule1.penumpang_zq.FieldByName('nama').AsString := Edit1.Text;
  DataModule1.penumpang_zq.FieldByName('username').AsString := Edit2.Text;
  DataModule1.penumpang_zq.FieldByName('password').AsString := Edit3.Text;
  DataModule1.penumpang_zq.FieldByName('password').AsString := Edit4.Text;
  DataModule1.penumpang_zq.FieldByName('no_telp').AsString := Edit5.Text;
  DataModule1.penumpang_zq.FieldByName('gender').AsString := Combobox1.Text;
  DataModule1.penumpang_zq.ApplyUpdates;
  if (Edit1.Text = '') then
  begin
    messagebox(handle, 'Nama tidak boleh kosong!', 'Error', MB_ICONERROR)
  end
  else if (Edit2.Text = '') then
  begin
    messagebox(handle, 'Username tidak boleh kosong', 'Error', MB_ICONERROR)
  end
  else if (Edit3.Text = '') then
  begin
    messagebox(handle, 'Password tidak boleh kosong', 'Error', MB_ICONERROR)
  end
  else if (Edit4.Text = '') then
  begin
    messagebox(handle, 'Konfirmasi password tidak boleh kosong', 'Error',
      MB_ICONERROR)
  end
  else if (Edit5.Text = '') then
  begin
    messagebox(handle, 'Nomor telepon tidak boleh kosong', 'Error', MB_ICONERROR)
  end
  else if (Combobox1.Text = '') then
  begin
    messagebox(handle, 'Gender tidak boleh kosong', 'Error', MB_ICONERROR)
  end
  else
    Application.MessageBox('Data Berhasil Dimasukan', 'Info', MB_OK +
      MB_ICONINFORMATION);
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  ComboBox1.Clear;
end;

procedure TForm4.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.checked then
    Edit3.PasswordChar := #0
  else
    Edit3.PasswordChar := '*'
end;

procedure TForm4.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.checked then
    Edit4.PasswordChar := #0
  else
    Edit4.PasswordChar := '*'
end;

end.

