unit flightagency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    user: TEdit;
    pass: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Login: TButton;
    Shape2: TShape;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Label6: TLabel;
    Button2: TButton;
    procedure LoginClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    //procedure Button2Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, DataModul, LoginAdmin, MenuRegistrasi, Pembayaran,
  LoginCetakTiket;

{$R *.dfm}

procedure TForm1.LoginClick(Sender: TObject);
begin
  with DataModule1.login_zq do
  begin
    SQL.Clear;
    SQL.Add('select * from penumpang where username=' +
      QuotedStr(user.Text));
    Open;
  end;
  if DataModule1.login_zq.RecordCount = 0 then
    Application.MessageBox('Maaf username atau password tidak ditemukan!',
      'Informasi', MB_OK or MB_ICONINFORMATION)
  else
  begin
    if DataModule1.login_zq.FieldByName('password').AsString <> pass.Text then
      Application.MessageBox('Password Salah', 'Error', MB_OK or MB_ICONERROR)
    else
    begin
      Form1.Hide;
      FormTiket.Show;
      user.Clear;
      pass.Clear;
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Application.MessageBox('Apakah Anda yakin?', 'Confirm', MB_OKCANCEL) = ID_OK)
    then
  begin
    close;
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.checked then
    pass.PasswordChar := #0
  else
    pass.PasswordChar := '*'
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
Form1.Hide;
Form4.Show;
end;

procedure TForm1.Label6Click(Sender: TObject);
begin
Form1.Hide;
Form3.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Hide;
Form6.Show;
end;

end.

