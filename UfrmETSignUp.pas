unit UfrmETSignUp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,  UfrmETDatamodule1, Data.DB, Data.Win.ADODB,
  Vcl.ExtCtrls, IdHashSha, UfrmLogin, System.Hash;

type
  TfrmETRegister = class(TForm)
    txtEnterUsername: TEdit;
    lblEnterUsername: TLabel;
    btnRegister: TButton;
    btnSwitchLogin: TButton;
    btnCancel: TButton;
    lblEnterPassword: TLabel;
    lblConfirmPassword: TLabel;
    lblAlreadyRegistered: TLabel;
    txtEnterPassword: TEdit;
    txtRepeatPassword: TEdit;
    procedure btnRegisterClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSwitchLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private-Deklarationen }
  public
    m_Loginpressed: boolean;
  end;

var
  frmETRegister: TfrmETRegister;

implementation

{$R *.dfm}

procedure TfrmETRegister.btnCancelClick(Sender: TObject);
begin
    self.Close;
end;

procedure TfrmETRegister.btnRegisterClick(Sender: TObject);
begin

    if txtEnterPassword.Text = txtrepeatPassword.text then
    begin

        begin
            DataModule1.QueryRegister.SQL.text := 'SELECT * FROM ETUserLoginData WHERE Username = :UNA';
            DataModule1.QueryRegister.prepared;
            DataModule1.QueryRegister.Parameters.ParamByName( 'UNA' ).Value := txtEnterUsername.text;
            DataModule1.QueryRegister.Open;
            Datamodule1.QueryRegister.ExecSQL;
//This Code controls if an Account with the Username, which is entered in the txtEnterUsername-editbox already exists. In case, that the Request for
//the Field UserID WHERE Username = txtEnterUsername.text does throw an Exception, the Code continues normally, because it should not find an
//Fields with this condition, when there is no Username with txtEnterUsername.text in the Database.
            if DataModule1.QueryRegister.Locate('Username', txtEnterUsername.text, [loCaseInsensitive]) then
            begin
                ShowMessage('Invalid Username! Username already exists.');
            end else
            begin
                Datamodule1.Queryregister.SQL.Text:= 'INSERT INTO ETUserLoginData(Username, Password) VALUES(:UN, :PW)';
                DataModule1.QueryRegister.Parameters.ParamByName('UN').Value := txtEnterUsername.Text;
                DataModule1.QueryRegister.Parameters.ParamByName('PW').Value := THashSHA2.GetHashString(txtEnterPassword.Text, THashSHA2.TSHA2Version.SHA256);
                Datamodule1.QueryRegister.execSQL;
                if  CreateDir('C:\Users\ma2056\Desktop\Beispielordner\ProgrammLogin\User\' + txtEnterUsername.text) then
                begin
                    CreateDir('C:\Users\ma2056\Desktop\Beispielordner\ProgrammLogin\User\' + txtEnterUsername.text + '\' + txtEnterUsername.text + 'Account');
                    CreateDir('C:\Users\ma2056\Desktop\Beispielordner\ProgrammLogin\User\' + txtEnterUsername.text + '\' + txtEnterUsername.text + 'Posts');
                    ShowMessage('Registration successful!');
                //The code here creates a directory 'user' in which two more directories named username + �account� and username + �posts�
                //are created for the account details and postpart files.

                    self.Close;
                end;
            end;
        end;
    end;
end;


procedure TfrmETRegister.btnSwitchLoginClick(Sender: TObject);
begin
       //.free
    m_Loginpressed := true;
    UfrmETSignUp.frmETRegister.close;

end;

procedure TfrmETRegister.FormShow(Sender: TObject);
begin
    m_Loginpressed := false;
end;


end.
