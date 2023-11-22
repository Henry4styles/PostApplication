﻿unit UfrmLogin;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
     Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, UfrmETDatamodule1,
     Vcl.Buttons;

type
  TPasswordDlg = class(TForm)
    lblUsername: TLabel;
    txtUsername: TEdit;
    btnOK: TButton;
    btnCancel: TButton;
    lblPassword: TLabel;
    txtPassword: TEdit;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

{$R *.dfm}

procedure TPasswordDlg.btnOKClick(Sender: TObject);
begin

        DataModule1.QueryLoginCheck.SQL.text := 'SELECT UserID FROM ETUserLoginData WHERE Username = :Username and Password = :Password';
        DataModule1.QueryLoginCheck.prepared;
        DataModule1.QueryLoginCheck.Parameters.ParamByName( 'Username' ).Value := txtUsername.text;
        DataModule1.QueryLoginCheck.Parameters.ParamByName( 'Password' ).Value := txtPassword.text;
        DataModule1.QueryLoginCheck.Open;
        if DataModule1.QueryLoginCheck.FieldByName('UserID').Value = NULL then
        begin
           ShowMessage('Wrong Password or Username!');

        end else
        begin
            DataModule1.QueryLoginCheck.FieldByName('UserID').Value;
            btnOK.ModalResult:=mrOK;
            Self.Close;
//
        end;





end;



procedure TPasswordDlg.FormShow(Sender: TObject);
begin
    txtUsername.clear;
    txtPassword.Clear;
end;

end.

