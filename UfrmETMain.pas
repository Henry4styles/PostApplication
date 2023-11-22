unit UfrmETMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, UfrmLogin, UfrmETSignUp, UfrmETDatamodule1,
  System.Actions, Vcl.ActnList;

type
  TfrmETHomepageLogout = class(TForm)
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    MnuItmHomepage: TMenuItem;
    MnuItmLogin: TMenuItem;
    MnuItmSignUp: TMenuItem;
    ActionList1: TActionList;
    actShowHomepage: TAction;
    actShowLoginFrm: TAction;
    actShowRegisterFrm: TAction;
    actRegister: TAction;
    procedure MnuItmHomepageClick(Sender: TObject);
    procedure actShowHomepageExecute(Sender: TObject);
    procedure actShowLoginFrmExecute(Sender: TObject);
    procedure actShowRegisterFrmExecute(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmETHomepageLogout: TfrmETHomepageLogout;

implementation

{$R *.dfm}

procedure TfrmETHomepageLogout.actShowHomepageExecute(Sender: TObject);
begin
    frmETHomepageLogout.show();

end;

procedure TfrmETHomepageLogout.actShowLoginFrmExecute(Sender: TObject);
begin
    PasswordDlg.ShowModal;
end;

procedure TfrmETHomepageLogout.actShowRegisterFrmExecute(Sender: TObject);
begin
    UfrmETSignUp.frmETRegister.ShowModal;
end;

procedure TfrmETHomepageLogout.MnuItmHomepageClick(Sender: TObject);
begin
    //PasswordDlg:= PasswordDlg.Create(PasswordDlg);
end;

end.
