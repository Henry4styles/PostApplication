unit UfrmMainLoggedin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, UfrmETMain;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    MnuItmHomepage: TMenuItem;
    Postschreiben1: TMenuItem;
    logout1: TMenuItem;
    procedure logout1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.logout1Click(Sender: TObject);
begin
    ShowMessage('Logged out Successfuly!');
    UfrmETMain.frmETHomepageLogout.ShowModal;

    Self.Close;
end;

end.
