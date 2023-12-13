unit Post;

interface
uses
Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, UfrmLogin, UfrmETSignUp, UfrmETDatamodule1,
System.Actions, Vcl.ActnList, System.Hash, Vcl.DBCtrls, UfrmPostView, UfrmPostCreater, UfrmAccountView;

type
    ETpnlPost = class(TPanel)
      pnlPost: TPanel;
      memHeader: TMemo;
      lblUsername: TLabel;
      lblTitle: TLabel;
      memBody: TMemo;
      memfooter: TMemo;
      procedure GeneratePost();
      function GetPostBody(_integer: integer): string;
      function GetPostHeader(_integer: integer): string;
      function GetPostFooter(_integer: integer): string;

public


end;


implementation



procedure ETpnlPost.GeneratePost;
begin

   // pnlPost.Parent := frmETHomepage.pnlInhalt2;
   // pnlPost.top := (i * 530) - 490;//+ 450;
    pnlPost.Width := 700;
    pnlPost.Height := 550;
    pnlPost.Left := 10;

//            procedure TfrmETHomepageLogout.pnlPost.onClick(sender: TObject);
    //m_PostID :=  UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('PostID').Asstring;
//    m_PostID :=  UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('PostID').Asstring;
//    pnlPost.OnClick:= Postübergabe;


    memHeader := TMemo.Create(Self);
    memHeader.Parent := pnlPost;
    memHeader.top := 70; //+ 460;
    memHeader.Left := 15;
    memHeader.Width := 670;
    memHeader.Height := 100;
    memHeader.lines.LoadFromFile(GetPostHeader(i));
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
    membody.Lines.loadFromFile(GetPostBody(i));
    membody.ReadOnly := true;

    memfooter := TMemo.Create(Self);
    memfooter.Parent := pnlPost;
    memfooter.top := 400;
    memfooter.Width := 670;
    memfooter.Height := 100;
    memfooter.Left := 15;
    memfooter.lines.LoadFromFile(GetPostFooter(i));
    memfooter.ReadOnly := true;





end;

function ETpnlPost.GetPostBody(_integer: integer): string;
begin
    result := UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('HeadlinePostLink').asstring;
end;



function ETpnlPost.GetPostFooter(_integer: integer): string;
begin
    result := UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('HeadlinePostLink').Asstring;

end;

function ETpnlPost.GetPostHeader(_integer: integer): string;
begin
    if _integer <> 1 then
    begin
        UfrmETDatamodule1.DataModule1.QueryPost.Next;
        result := UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('HeadlinePostLink').Asstring;

    end else
    begin
        result := UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('HeadlinePostLink').Asstring;
    end;
end;
end.
