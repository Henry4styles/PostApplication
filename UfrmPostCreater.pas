unit UfrmPostCreater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

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

end;

end.
