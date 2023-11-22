unit UfrmETMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, UfrmLogin, UfrmETRegister,
  System.Actions, Vcl.ActnList;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    MnuItmHomepage: TMenuItem;
    MnuItmLogin: TMenuItem;
    MnuItmRegister: TMenuItem;
    ActionList1: TActionList;
    actShowHomepage: TAction;
    actShowLoginFrm: TAction;
    actShowRegisterFrm: TAction;
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
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.actShowHomepageExecute(Sender: TObject);
begin
    Form1.show();

end;

procedure TForm1.actShowLoginFrmExecute(Sender: TObject);
begin
    PasswordDlg.ShowModal;
end;

procedure TForm1.actShowRegisterFrmExecute(Sender: TObject);
begin
    UfrmETRegister.Form2.ShowModal;
end;

procedure TForm1.MnuItmHomepageClick(Sender: TObject);
begin
    //PasswordDlg:= PasswordDlg.Create(PasswordDlg);
end;

end.
