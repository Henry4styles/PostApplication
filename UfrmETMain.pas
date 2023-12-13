unit UfrmETMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, UfrmLogin, UfrmETSignUp, UfrmETDatamodule1,
  System.Actions, Vcl.ActnList, System.Hash, Vcl.DBCtrls, UfrmPostView, UfrmPostCreater, UfrmAccountView;

type

  TfrmETHomepage = class(TForm)
    MainMenu1: TMainMenu;
    MnuItmHomepage: TMenuItem;
    MnuItmLogin: TMenuItem;
    MnuItmSignUp: TMenuItem;
    ActionList1: TActionList;
    actShowHomepage: TAction;
    actShowLoginFrm: TAction;
    actShowRegisterFrm: TAction;
    actRegister: TAction;
    Postschreiben1: TMenuItem;
    pnlInhalt: TPanel;
    ScrollBar1: TScrollBar;
    pnlInhalt2: TPanel;
    Accountview1: TMenuItem;
    procedure MnuItmHomepageClick(Sender: TObject);
    procedure actShowHomepageExecute(Sender: TObject);
    procedure actShowLoginFrmExecute(Sender: TObject);
    procedure actShowRegisterFrmExecute(Sender: TObject);
    procedure Postschreiben1Click(Sender: TObject);
    function GetPostHeader(_integer: integer):string;
    function GetPostBody(_integer: integer):string;
    function GetPostFooter(_integer: integer):string;
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Post�bergabe(Sender: TObject);
    procedure Accountview1Click(Sender: TObject);
  private
    pnlPost :TPanel;
    MemHeader :TMemo;
    MemBody :TMemo;
    memFooter :TMemo;
    lblUsername: TLabel;
    lblTitle: TLabel;
  public
    m_PostID: string;
    m_UserID: string;
    constructor pnlCreate( pnlName: string); overload;
    { Public-Deklarationen }
  end;

var
  frmETHomepage: TfrmETHomepage;

implementation

{$R *.dfm}

procedure TfrmETHomepage.Accountview1Click(Sender: TObject);
begin
    if Ufrmlogin.PasswordDlg.loggedin then
    begin
        //UfrmAccountView.frmProfileView.Create(m_UserID)
    end;
end;

procedure TfrmETHomepage.actShowHomepageExecute(Sender: TObject);
begin
    UfrmLogin.PasswordDlg.loggedin := false;

end;

procedure TfrmETHomepage.actShowLoginFrmExecute(Sender: TObject);
begin
    PasswordDlg.ShowModal;
    Passworddlg.Eingabe := false;
end;

procedure TfrmETHomepage.actShowRegisterFrmExecute(Sender: TObject);
begin
    UfrmETSignUp.frmETRegister := UfrmETSignUp.TfrmETRegister.Create(nil);
    UfrmETSignUp.frmETRegister.ShowModal;
    UfrmETSignUp.frmETRegister.free;
    if UfrmETSignUp.frmETRegister.m_Loginpressed then
    begin
        UfrmLogin.PasswordDlg.ShowModal;
    end;
end;



constructor TPanel.pnlCreate(pnlName: string);
begin
    inherited;

end;

procedure TfrmETHomepage.Post�bergabe(Sender: TObject);
begin
    //m_PostID := PnlPost.Hint;
    if Ufrmlogin.PasswordDlg.loggedin = false then
    begin
        UfrmLogin.PasswordDlg.ShowModal;
        if UfrmLogin.PasswordDlg.ModalResult = mrOK then
        begin
//            UfrmPostView.frmPostView.Create(nil);
            UfrmPostView.frmPostView._PostID := m_PostID.tointeger;
            UfrmPostView.frmPostView.ShowModal;
//            UfrmPostView.frmPostView.Free;
        end;
    end else
    begin
//        UfrmPostView.frmPostView.Create(nil);
        UfrmPostView.frmPostView._PostID := m_PostID.tointeger;
        UfrmPostView.frmPostView.ShowModal;
//        UfrmPostView.frmPostView.Free;
    end;


end;

procedure TfrmETHomepage.FormShow(Sender: TObject);
var
    i: integer;

begin

     UfrmETDatamodule1.DataModule1.QueryPost.SQL.Text := 'SELECT * FROM ETPost LEFT JOIN ETUserLoginData ON ETPost.UserID = ETUserLoginData.UserID ';
     UfrmETDatamodule1.DataModule1.QueryPost.Open;


    if not UfrmETDatamodule1.DataModule1.QueryPost.RecordCount < 1 then
    //Laut Marvin kann ich den bezeichner beim Create �bergeben. So kann ich ein basisevent erstellen, und dann zu jedem Post-Panel ein event vererbt von dem basisevent erstellen

    begin
        UfrmETDatamodule1.DataModule1.QueryPost.first;
        for i := 1 to UfrmETDatamodule1.DataModule1.QueryPost.RecordCount do
        begin

            //UfrmETDatamodule1.DataModule1.QueryPost.SQL.text := 'SELECT * FROM ETUserLoginData';
            pnlPost := Tpanel.Create(Self);
            pnlPost.Parent := frmETHomepage.pnlInhalt2;
            pnlPost.top := (i * 530) - 490;//+ 450;
            pnlPost.Width := 700;
            pnlPost.Height := 550;
            pnlPost.Left := 10;

//            procedure TfrmETHomepageLogout.pnlPost.onClick(sender: TObject);
            //m_PostID :=  UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('PostID').Asstring;
            m_PostID :=  UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('PostID').Asstring;
            pnlPost.OnClick:= Post�bergabe;


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
        Scrollbar1.Max := UfrmETDatamodule1.DataModule1.QueryPost.RecordCount * 3;
    end;

end;

function TfrmETHomepage.GetPostBody(_integer: integer): string;
begin
    result := UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('HeadlinePostLink').asstring;
end;



function TfrmETHomepage.GetPostFooter(_integer: integer): string;
begin
    result := UfrmETDatamodule1.DataModule1.QueryPost.FieldByName('HeadlinePostLink').Asstring;

end;

function TfrmETHomepage.GetPostHeader(_integer: integer): string;
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

procedure TfrmETHomepage.MnuItmHomepageClick(Sender: TObject);
begin
    //PasswordDlg:= PasswordDlg.Create(PasswordDlg);
end;



procedure TfrmETHomepage.Postschreiben1Click(Sender: TObject);
begin
    if UfrmLogin.PasswordDlg.loggedin = true then
    begin
        UfrmPostCreater.PostCreater := UfrmPostCreater.PostCreater.create(PostCreater);
        UfrmPostCreater.PostCreater.ShowModal;
        UfrmPostCreater.PostCreater.Free;
    end else
    begin
        Passworddlg.showModal;
        if UfrmLogin.PasswordDlg.loggedin = true then
        begin
            UfrmPostCreater.PostCreater := UfrmPostCreater.PostCreater.create(PostCreater);
            UfrmPostCreater.PostCreater.ShowModal;

            //Idee f�r Morgen: �ber den Modal result �bergeben. so dann in der Main form login �ffnen und Signup destroyen
        end;
    end;

end;
procedure TfrmETHomepage.ScrollBar1Change(Sender: TObject);
begin
    frmETHomepage.pnlInhalt2.top := ScrollBar1.Position * -100;
end;


end.

