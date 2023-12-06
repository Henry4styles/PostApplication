unit UfrmPostview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask, UfrmETDatamodule1, UfrmLogin;

type
  TfrmPostView = class(TForm)
    PnlPost: TPanel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private-Deklarationen }
  public
    _PostID: Integer;
    pnlComment: TPanel;
    lblNameComment: TLabel;
    lblContentComment: TLabel;
    comment, name: string;
    _i: integer;
  end;

var
  frmPostView: TfrmPostView;
implementation


{$R *.dfm}

procedure TfrmPostView.btnPublishCommentClick(Sender: TObject);
begin
    UfrmETDatamodule1.DataModule1.QueryComment.SQL.Text:= 'INSERT INTO ETComments (UserID, PostID, Comment) VALUES (:USR, :PST, :CMT)';
    UfrmETDatamodule1.DataModule1.QueryComment.Parameters.ParamByName('USR').value := PasswordDlg._UserID.toInteger;
    UfrmETDatamodule1.DataModule1.QueryComment.Parameters.ParamByName('CMT').Value := txtCommentCreate.Text;
    UfrmETDatamodule1.DataModule1.QueryComment.Parameters.ParamByName('PST').Value := _PostID.Tostring;
    UfrmETDatamodule1.DataModule1.QueryComment.ExecSQL;
    UfrmETDatamodule1.DataModule1.QueryComment.SQL.Text := 'SELECT * FROM ETComments LEFT JOIN ETUserLoginData ON ETComments.UserID = ETUserLoginData.UserID WHERE PostID = ' + _PostID.ToString;
    UfrmETDatamodule1.DataModule1.QueryComment.Open;
    pnlComment := Tpanel.Create(Self);
    pnlComment.Parent := frmPostView.Panel2;
    pnlComment.top := ((_i)  * 150) - 140;//+ 450;
    pnlComment.Width := 660;
    pnlComment.Height := 100;
    pnlComment.Left := 10;

    lblNameComment := Tlabel.Create(Self);
    lblNameComment.Parent := pnlComment;
    lblNameComment.top := 20; //+ 460;
    lblNameComment.Left := 15;
    lblNameComment.Width := 650;
    lblNameComment.Height := 20;
    lblNameComment.Caption := UfrmETDatamodule1.DataModule1.QueryComment.FieldByName('Username').AsString;

    lblContentComment := Tlabel.Create(Self);
    lblContentComment.Parent := pnlComment;
    lblContentComment.top := 40;
    lblContentComment.Width := 660;
    lblContentComment.Height := 60;
    lblContentComment.Left := 15;
    lblContentComment.Caption := txtCommentCreate.text;

    Scrollbar1.Max := UfrmETDatamodule1.DataModule1.QueryComment.RecordCount * 3;
    ShowMessage('hey');
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



procedure TfrmPostView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    self.Close;
end;

procedure TfrmPostView.FormShow(Sender: TObject);
var
    i: integer;
    ContentComment: string;
    CommentID: string;
    memHeader: TMemo;
    lblUsername: Tlabel;
    lblTitle: Tlabel;
    memBody: TMemo;
    memFooter: TMemo;
begin
    UfrmETDatamodule1.DataModule1.QueryComment.SQL.Text := 'SELECT * FROM ETComments LEFT JOIN ETUserLoginData ON ETComments.UserID = ETUserLoginData.UserID WHERE PostID = ' + _PostID.ToString;
    UfrmETDatamodule1.DataModule1.QueryComment.Open;
    UfrmETDatamodule1.DataModule1.QueryPost.SQL.Text := 'SELECT * FROM ETPost LEFT JOIN ETUserLoginData ON ETPost.UserID = ETUserLoginData.UserID WHERE PostID = ' + _PostID.ToString;
    UfrmETDatamodule1.DataModule1.QueryPost.open;

            memHeader := TMemo.Create(Self);
            memHeader.Parent := pnlPost;
            memHeader.top := 70; //+ 460;
            memHeader.Left := 15;
            memHeader.Width := 670;
            memHeader.Height := 100;
            memHeader.lines.LoadFromFile(UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('HeadlinePostLink').Asstring);
            memHeader.ReadOnly := true;

            lblUsername := Tlabel.Create(Self);
            lblUsername.Parent := pnlPost;
            lblUsername.Top := 5;
            lblUsername.Left := 15;
            lblUsername.Width := 670;
            lblUsername.Height := 20;
            lblUsername.Caption := UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('Username').Asstring;
            lblUsername.Font.Size := 18;

            lblTitle := TLabel.create(Self);
            lblTitle.Parent := pnlPost;
            lblTitle.Top := 30;
            lblTitle.Left := 15;
            lblTitle.Width := 670;
            lblTitle.Height := 20;
            lblTitle.Caption := UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('PostTitle').Asstring;
            lblTitle.Font.Size := 18;

            memBody := TMemo.Create(Self);
            memBody.Parent := pnlPost;
            memBody.top := 180;
            memBody.Width := 670;
            memBody.Height := 200;
            memBody.Left := 15;
            membody.Lines.LoadFromFile(UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('bodyPostLink').Asstring);
            membody.ReadOnly := true;

            memfooter := TMemo.Create(Self);
            memfooter.Parent := pnlPost;
            memfooter.top := 400;
            memfooter.Width := 670;
            memfooter.Height := 100;
            memfooter.Left := 15;
            memfooter.lines.LoadFromFile(UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('footerPostLink').Asstring);
            memfooter.ReadOnly := true;

    if UfrmETDatamodule1.DataModule1.QueryComment.RecordCount > 0 then
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
            lblNameComment.Caption := UfrmETDatamodule1.DataModule1.QueryComment.FieldByName('Username').AsString;

            lblContentComment := Tlabel.Create(Self);
            lblContentComment.Parent := pnlComment;
            lblContentComment.top := 40;
            lblContentComment.Width := 660;
            lblContentComment.Height := 60;
            lblContentComment.Left := 15;
            lblContentComment.Caption := GetComment(i);
            _i := i + 1 ;
        end;
        Scrollbar1.Max := UfrmETDatamodule1.DataModule1.QueryComment.RecordCount * 3;
    end;

end;



function TfrmPostView.GetComment(_integer: integer): string;
var
    CommentID, firstID, lastID: string;


begin
    if _integer > 1 then
    begin

        UfrmETDatamodule1.DataModule1.QueryComment.Next;

        result := UfrmETDatamodule1.DataModule1.QueryComment.FieldByName('Comment').Asstring;
    end else
    begin
        result := UfrmETDatamodule1.DataModule1.QueryComment.FieldByName('Comment').Asstring;
    end;
end;

procedure TfrmPostView.ScrollBar1Change(Sender: TObject);
begin
    frmPostView.Panel2.Top := ScrollBar1.Position * -50;
end;

end.


