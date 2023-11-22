unit UfrmETHomepageLoggedIn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmETHomepageLoggedin = class(TForm)
    MainMenu1: TMainMenu;
    Homepage: TMenuItem;
    Logout1: TMenuItem;
    Profil: TMenuItem;
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmETHomepageLoggedin: TfrmETHomepageLoggedin;

implementation

{$R *.dfm}

procedure TfrmETHomepageLoggedin.FormShow(Sender: TObject);
begin
    Profil.Caption := 'Username'; //Username aus logged in User
end;

end.
