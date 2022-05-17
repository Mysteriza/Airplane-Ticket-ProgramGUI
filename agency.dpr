program agency;

uses
  Forms,
  flightagency in 'flightagency.pas' {Form1},
  DataModul in 'DataModul.pas' {DataModule1: TDataModule},
  Unit2 in 'Unit2.pas' {FormTiket},
  LoginAdmin in 'LoginAdmin.pas' {Form3},
  FormMenuAdmin in 'FormMenuAdmin.pas' {MenuAdmin},
  Form in 'Form.pas' {DataModule3: TDataModule},
  MenuRegistrasi in 'MenuRegistrasi.pas' {Form4},
  Pembayaran in 'Pembayaran.pas' {Form5},
  LoginCetakTiket in 'LoginCetakTiket.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormTiket, FormTiket);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TMenuAdmin, MenuAdmin);
  Application.CreateForm(TDataModule3, DataModule3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
