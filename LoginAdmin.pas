unit LoginAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm3 = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    user: TEdit;
    pass: TEdit;
    Login: TButton;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure LoginClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses flightagency, DataModul, Unit2, FormMenuAdmin;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  begin
    Form3.Hide;
    Form1.Show;
  end;
end;

procedure TForm3.LoginClick(Sender: TObject);
begin
  with DataModule1.login_zq do
  begin
    SQL.Clear;
    SQL.Add('select * from admin where username=' +
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
      Form3.Hide;
      MenuAdmin.Show;
      user.Clear;
      pass.Clear;
    end;
  end;
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.checked then
    pass.PasswordChar := #0
  else
    pass.PasswordChar := '*'
end;

end.

