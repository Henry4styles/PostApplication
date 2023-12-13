unit UfrmPostCreater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UfrmETDatamodule1;

type
  TPostCreater = class(TForm)
    memBody: TMemo;
    MemHeader: TMemo;
    MemFooter: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnSave: TButton;
    btnCancel: TButton;
    pnlCreater: TPanel;
    Edit1: TEdit;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    User: string;
     _UserID: string;
  end;

var
  PostCreater: TPostCreater;

implementation

{$R *.dfm}

procedure TPostCreater.btnSaveClick(Sender: TObject);
begin
    CreateDir('C:\Users\ma2056\Desktop\Beispielordner\ProgrammLogin\User/' + User + '/' + User + 'Posts/' + Edit1.Text);
    MemHeader.lines.savetofile('C:\Users\ma2056\Desktop\Beispielordner\ProgrammLogin\User/' + User + '/' + User + 'Posts/' + Edit1.Text +  '/Header.txt');
    MemBody.lines.savetofile('C:\Users\ma2056\Desktop\Beispielordner\ProgrammLogin\User/' + User + '/' + User + 'Posts/' + Edit1.Text + '/Body.txt');
    MemFooter.lines.savetofile('C:\Users\ma2056\Desktop\Beispielordner\ProgrammLogin\User/' + User + '/' + User + 'Posts/' + Edit1.Text + '/footer.txt');

    UfrmETDatamodule1.DataModule1.QueryAddPost.SQL.Text := 'INSERT INTO ETPost (HeadlinePostLink, bodyPostLink, footerPostLink, PostTitle, UserID) VALUES(:HEAD, :BODY, :FOOT, :TITLE, :ID)';

    UfrmETDatamodule1.DataModule1.QueryAddPost.Parameters.ParamByName('HEAD').Value := 'C:\Users\ma2056\Desktop\Beispielordner\ProgrammLogin\User/' + User + '/' + User + 'Posts/' + Edit1.Text +  '/Header.txt';
    UfrmETDatamodule1.DataModule1.QueryAddPost.Parameters.ParamByName('BODY').Value := 'C:\Users\ma2056\Desktop\Beispielordner\ProgrammLogin\User/' + User + '/' + User + 'Posts/' + Edit1.Text + '/Body.txt';
    UfrmETDatamodule1.DataModule1.QueryAddPost.Parameters.ParamByName('FOOT').Value := 'C:\Users\ma2056\Desktop\Beispielordner\ProgrammLogin\User/' + User + '/' + User + 'Posts/' + Edit1.Text + '/footer.txt';
    UfrmETDatamodule1.DataModule1.QueryAddPost.Parameters.ParamByName('TITLE').Value := Edit1.text;
    UfrmETDatamodule1.DataModule1.QueryAddPost.Parameters.ParamByName('ID').Value := _UserID;
    UfrmETDatamodule1.DataModule1.QueryAddPost.execSQL;

end;

end.
