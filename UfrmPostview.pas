unit UfrmPostview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask, UfrmETDatamodule1, UfrmLogin;

type
  TfrmPostView = class(TForm)
    dblblHeader: TDBText;
    dblblBody: TDBText;
    dblblFooter: TDBText;
    PnlPost: TPanel;
    Button1: TButton;
    lblComment: TLabel;
    btnPublishComment: TButton;
    pnlCommentcreate: TPanel;
    Panel1: TPanel;
    ScrollBar1: TScrollBar;
    Panel2: TPanel;
    txtCommentCreate: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure btnPublishCommentClick(Sender: TObject);
    procedure txtCommentCreateEnter(Sender: TObject);
    function GetComment(_integer: integer): string;
  private
    { Private-Deklarationen }
  public
    _PostID: Integer;
    pnlComment: TPanel;
    lblNameComment: TLabel;
    lblContentComment: TLabel;
    comment, name: string;
  end;

var
  frmPostView: TfrmPostView;
implementation


{$R *.dfm}

procedure TfrmPostView.btnPublishCommentClick(Sender: TObject);
begin
    UfrmETDatamodule1.DataModule1.QueryComment.SQL.Text:= 'INSERT INTO ETComments (UserID, PostID, Comment) VALUES (:USR, :PST, :CMT)';
    UfrmETDatamodule1.DataModule1.QueryComment.Parameters.ParamByName('USR').Value := PasswordDlg._UserID;
    UfrmETDatamodule1.DataModule1.QueryComment.Parameters.ParamByName('CMT').Value := txtCommentCreate.Text;
    UfrmETDatamodule1.DataModule1.QueryComment.Parameters.ParamByName('PST').Value := _PostID.Tostring;
    UfrmETDatamodule1.DataModule1.QueryComment.ExecSQL;
    end;

procedure TfrmPostView.Button1Click(Sender: TObject);
var Panel :TPanel;

begin
    panel:= TPanel.Create(Self);
    panel.Parent:= frmPostView;
    panel.Top:= 300;
    panel.Left := 300;
    panel.Width:= 500;
    panel.Height:= 500;
end;



procedure TfrmPostView.txtCommentCreateEnter(Sender: TObject);
begin
   btnPublishcomment.visible := true;
end;


procedure TfrmPostView.FormShow(Sender: TObject);
var
    i: integer;
    ContentComment: string;
    CommentID: string;
begin
    _PostID := 1;
    UfrmETDatamodule1.DataModule1.QueryComment.SQL.Text := 'SELECT * FROM ETComments WHERE PostID = ' + _PostID.ToString;
    UfrmETDatamodule1.DataModule1.QueryComment.Open;


    if not UfrmETDatamodule1.DataModule1.QueryComment.RecordCount < 1 then
    begin
        UfrmETDatamodule1.DataModule1.QueryComment.first;
        for i := 1 to UfrmETDatamodule1.DataModule1.QueryComment.RecordCount do
        begin
            //UfrmETDatamodule1.DataModule1.QueryComment.SQL.text := 'SELECT * FROM ETUserLoginData';
            pnlComment := Tpanel.Create(Self);
            pnlComment.Parent := frmPostView.Panel2;
            pnlComment.top := (i * 150) - 140;//+ 450;
            pnlComment.Width := 660;
            pnlComment.Height := 100;
            pnlComment.Left := 10;

            lblNameComment := Tlabel.Create(Self);
            lblNameComment.Parent := pnlComment;
            lblNameComment.top := 20; //+ 460;
            lblNameComment.Left := 15;
            lblNameComment.Width := 650;
            lblNameComment.Height := 20;
            lblNameComment.Caption := 'Test';

            lblContentComment := Tlabel.Create(Self);
            lblContentComment.Parent := pnlComment;
            lblContentComment.top := 40;
            lblContentComment.Width := 660;
            lblContentComment.Height := 60;
            lblContentComment.Left := 15;
            lblContentComment.Caption := GetComment(i);

        end;
        Scrollbar1.Max := UfrmETDatamodule1.DataModule1.QueryComment.RecordCount * 3;
    end;

end;



function TfrmPostView.GetComment(_integer: integer): string;
var
    CommentID, firstID, lastID: string;


begin
    if _integer <> 1 then
    begin

        UfrmETDatamodule1.DataModule1.QueryComment.Next;

        result := UfrmETDatamodule1.DataModule1.QueryComment.FieldByName('Comment').Asstring;
    end;
end;

procedure TfrmPostView.ScrollBar1Change(Sender: TObject);
begin
    frmPostView.Panel2.Top := ScrollBar1.Position * -25;
end;


{ TComment }


end.

//Info f�r morgen:
//Basisklasse erstellen um diese mit ihren Objects zu vererben, und somit die einzelnen Comments zu createn

