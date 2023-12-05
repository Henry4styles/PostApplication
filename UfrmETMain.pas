unit UfrmETMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, UfrmLogin, UfrmETSignUp, UfrmETDatamodule1,
  System.Actions, Vcl.ActnList, System.Hash, Vcl.DBCtrls, UfrmPostView;

type

  TfrmETHomepageLogout = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    MnuItmHomepage: TMenuItem;
    MnuItmLogin: TMenuItem;
    MnuItmSignUp: TMenuItem;
    ActionList1: TActionList;
    actShowHomepage: TAction;
    actShowLoginFrm: TAction;
    actShowRegisterFrm: TAction;
    actRegister: TAction;
    Postschreiben1: TMenuItem;
    dblblFooter: TDBText;
    dblblHeader: TDBText;
    dblblBody: TDBText;
    Button1: TButton;
    procedure MnuItmHomepageClick(Sender: TObject);
    procedure actShowHomepageExecute(Sender: TObject);
    procedure actShowLoginFrmExecute(Sender: TObject);
    procedure actShowRegisterFrmExecute(Sender: TObject);
    procedure Postschreiben1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

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
    Passworddlg.Eingabe := false;
end;

procedure TfrmETHomepageLogout.actShowRegisterFrmExecute(Sender: TObject);
begin
    UfrmETSignUp.frmETRegister.ShowModal;
end;

procedure TfrmETHomepageLogout.Button1Click(Sender: TObject);
begin
   UfrmPostView.frmPostView.ShowModal;
   //UfrmPostView.TComment.Create();
end;

procedure TfrmETHomepageLogout.MnuItmHomepageClick(Sender: TObject);
begin
    //PasswordDlg:= PasswordDlg.Create(PasswordDlg);
end;



procedure TfrmETHomepageLogout.Postschreiben1Click(Sender: TObject);
begin
    Passworddlg.Eingabe := true;
    Passworddlg.showModal;

end;
end.

