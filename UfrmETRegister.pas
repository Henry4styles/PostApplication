unit UfrmETRegister;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, UfrmETDatamodule1,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    txtEnterUsername: TEdit;
    lblEnterUsername: TLabel;
    btnRegister: TButton;
    btnSwitchLogin: TButton;
    btnCancel: TButton;
    txtEnterEmail: TEdit;
    lblEnterEmail: TLabel;
    lblEnterPassword: TLabel;
    lblConfirmPassword: TLabel;
    DBImage1: TDBImage;
    btnImgChange: TButton;
    Label1: TLabel;
    txtEnterPassword: TEdit;
    txtRepeatPassword: TEdit;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
