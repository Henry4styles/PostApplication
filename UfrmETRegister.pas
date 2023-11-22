unit UfrmETRegister;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,  UfrmETDatamodule1, Data.DB, Data.Win.ADODB,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    txtEnterUsername: TEdit;
    lblEnterUsername: TLabel;
    btnRegister: TButton;
    btnSwitchLogin: TButton;
    btnCancel: TButton;
    lblEnterPassword: TLabel;
    lblConfirmPassword: TLabel;
    Label1: TLabel;
    txtEnterPassword: TEdit;
    txtRepeatPassword: TEdit;
    procedure btnRegisterClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnRegisterClick(Sender: TObject);
begin
    if txtEnterPassword.Text = txtrepeatPassword.text then
    begin
        Datamodule1.Queryregister.SQL.Text:= 'INSERT INTO ETUserLoginData(Username, Password) VALUES(:UN, :PW)';
        DataModule1.QueryRegister.Parameters.ParamByName('UN').Value := txtEnterUsername.Text;
        DataModule1.QueryRegister.Parameters.ParamByName('PW').Value := txtEnterPassword.Text;
        Datamodule1.QueryRegister.execSQL;
        self.Close;

    end;


end;

end.
