unit UfrmLogin;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons;

type
  TPasswordDlg = class(TForm)
    lblUsername: TLabel;
    txtUsername: TEdit;
    btnOK: TButton;
    btnCancel: TButton;
    lblPassword: TLabel;
    txtPassword: TEdit;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

{$R *.dfm}

end.
 
