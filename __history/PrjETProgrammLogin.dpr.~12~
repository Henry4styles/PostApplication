program PrjETProgrammLogin;

uses
  Vcl.Forms,
  UfrmETMain in 'UfrmETMain.pas' {frmETHomepageLogout},
  UfrmLogin in 'UfrmLogin.pas' {PasswordDlg},
  UfrmETSignUp in 'UfrmETSignUp.pas' {frmETRegister},
  UfrmETDatamodule1 in 'UfrmETDatamodule1.pas' {DataModule1: TDataModule},
  UfrmAccountView in 'UfrmAccountView.pas' {frmProfileView},
  UfrmPostview in 'UfrmPostview.pas' {frmPostView},
  UfrmMainLoggedin in 'UfrmMainLoggedin.pas' {Form1},
  UfrmPostCreater in 'UfrmPostCreater.pas' {PostCreater};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmETHomepageLogout, frmETHomepageLogout);
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.CreateForm(TfrmETRegister, frmETRegister);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmProfileView, frmProfileView);
  Application.CreateForm(TfrmPostView, frmPostView);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TPostCreater, PostCreater);
  Application.Run;
end.
