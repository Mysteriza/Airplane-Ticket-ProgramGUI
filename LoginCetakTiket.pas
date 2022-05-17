unit LoginCetakTiket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm6 = class(TForm)
    Label3: TLabel;
    Image1: TImage;
    Shape1: TShape;
    Label4: TLabel;
    Label1: TLabel;
    user: TEdit;
    Label2: TLabel;
    pass: TEdit;
    CheckBox1: TCheckBox;
    Login: TButton;
    Button1: TButton;
    procedure LoginClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses DataModul, flightagency, Pembayaran;

{$R *.dfm}

procedure TForm6.LoginClick(Sender: TObject);
begin
  with DataModule1.login_zq do
  begin
    SQL.Clear;
    SQL.Add('select * from penumpang where username=' +
      QuotedStr(user.Text));
    Open;
  end;
  if DataModule1.login_zq.RecordCount = 0 then
    Application.MessageBox('Maaf username atau password tidak ditemukan',
      'Informasi', MB_OK or MB_ICONINFORMATION)
  else
  begin
    if DataModule1.login_zq.FieldByName('password').AsString <> pass.Text then
      Application.MessageBox('Password Salah', 'Error', MB_OK or MB_ICONERROR)
    else
    begin
      Form1.Hide;
      Form5.Show;
      user.Clear;
      pass.Clear;
    end;
  end;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
if (Application.MessageBox('Are you sure?', 'Confirm', MB_OKCANCEL) = ID_OK)
    then
  begin
    close;
  end;
end;

procedure TForm6.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.checked then
    pass.PasswordChar := #0
  else
    pass.PasswordChar := '*'
end;

end.

