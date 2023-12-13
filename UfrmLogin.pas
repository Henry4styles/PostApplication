﻿unit UfrmLogin;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
     Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, UfrmETDatamodule1,
     Vcl.Buttons, System.Hash, IdHashSha, UfrmPostCreater;

type
  TPasswordDlg = class(TForm)

    lblUsername: TLabel;
    btnOK: TButton;
    btnCancel: TButton;
    lblPassword: TLabel;
    txtPassword: TEdit;
    txtUsername: TEdit;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    Eingabe: boolean;
    _UserID :string;
    loggedin :boolean;
    origin: string;
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

{$R *.dfm}




procedure TPasswordDlg.btnCancelClick(Sender: TObject);
begin
    loggedin := false;

    btnCancel.ModalResult := mrNone;
    self.Close;
end;

procedure TPasswordDlg.btnOKClick(Sender: TObject);
begin
    DataModule1.QueryLoginCheck.SQL.text := 'SELECT UserID FROM ETUserLoginData WHERE Username = :Username and Password = :Password';
    DataModule1.QueryLoginCheck.prepared;
    DataModule1.QueryLoginCheck.Parameters.ParamByName( 'Username' ).Value := txtUsername.text;
    DataModule1.QueryLoginCheck.Parameters.ParamByName( 'Password' ).Value := THashSHA2.GetHashString(txtPassword.Text, THashSHA2.TSHA2Version.SHA256);
    DataModule1.QueryLoginCheck.Open;
    if DataModule1.QueryLoginCheck.FieldByName('UserID').Value = NULL then
    begin
        btnOK.ModalResult:=mrNone;
        ShowMessage('Wrong Password or Username!');
        txtPassword.Clear;
        loggedin := false;
    end else
    begin
        _UserID := DataModule1.QueryLoginCheck.FieldByName('UserID').Value;
        DataModule1.QueryLoginCheck.FieldByName('UserID').Value;
        UfrmPostCreater.PostCreater.User := txtUsername.Text;
        loggedin := true;
        btnOK.ModalResult:=mrOK;
        txtUsername.clear;
        txtPassword.Clear;
        UfrmPostCreater.PostCreater._UserID := _UserID;
        if Eingabe then
        begin
            UfrmPostCreater.PostCreater.showModal;
        end;

        Self.Close;
    end;
end;
procedure TPasswordDlg.FormShow(Sender: TObject);
begin
    if origin = 'signup' then
    begin

    end;
    txtUsername.clear;
    txtPassword.Clear;
    loggedin := false;
end;

end.

