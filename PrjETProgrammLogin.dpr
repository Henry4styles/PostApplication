program PrjETProgrammLogin;

uses
  Vcl.Forms,
  UfrmETMain in 'UfrmETMain.pas' {Form1},
  UfrmLogin in 'UfrmLogin.pas' {PasswordDlg};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.CreateForm(TForm1, Form1);

  Application.Run;
end.
