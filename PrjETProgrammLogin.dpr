program PrjETProgrammLogin;

uses
  Vcl.Forms,
  UfrmETMain in 'UfrmETMain.pas' {Form1},
  UfrmLogin in 'UfrmLogin.pas' {PasswordDlg},
  UfrmETRegister in 'UfrmETRegister.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
