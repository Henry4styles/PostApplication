program PrjETProgrammLogin;

uses
  Vcl.Forms,
  UfrmETMain in 'UfrmETMain.pas' {frmETHomepage},
  UfrmLogin in 'UfrmLogin.pas' {PasswordDlg},
  UfrmETSignUp in 'UfrmETSignUp.pas' {frmETRegister},
  UfrmETDatamodule1 in 'UfrmETDatamodule1.pas' {DataModule1: TDataModule},
  UfrmAccountView in 'UfrmAccountView.pas' {frmProfileView},
  UfrmPostview in 'UfrmPostview.pas' {frmPostView},
  UfrmPostCreater in 'UfrmPostCreater.pas' {PostCreater};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmETHomepage, frmETHomepage);
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.CreateForm(TfrmETRegister, frmETRegister);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmProfileView, frmProfileView);
  Application.CreateForm(TfrmPostView, frmPostView);
  Application.CreateForm(TPostCreater, PostCreater);
  Application.Run;
end.
