unit UfrmPostview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask, UfrmETDatamodule1;

type
  TCommentvorlage = class(TObject)
      dblblComment: TDBText;
      btnReleaseComment: TButton;
      txtComment: TEdit;
    private

    public
        constructor Create();
    end;
  TComment = class(TCommentvorlage);
  TfrmPostView = class(TForm)
    dblblHeader: TDBText;
    dblblBody: TDBText;
    dblblFooter: TDBText;
    PnlPost: TPanel;
    Button1: TButton;
    DBEdit1: TDBEdit;
    lblComment: TLabel;
    btnPublishComment: TButton;
    procedure pnlCommentClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmPostView: TfrmPostView;
  Comment: TComment;
implementation


{$R *.dfm}

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



procedure TfrmPostView.DBEdit1Enter(Sender: TObject);
begin
   btnPublishcomment.visible := true;
end;

procedure TfrmPostView.FormShow(Sender: TObject);
begin
    UfrmETDatamodule1.DataModule1.QueryComment.SQL.text := 'SELECT * FROM ETUserLoginData';
end;

procedure TfrmPostView.pnlCommentClick(Sender: TObject);
begin

end;

{ TComment }

constructor TCommentvorlage.Create;
begin

end;
end.

//Info f�r morgen:
//Basisklasse erstellen um diese mit ihren Objects zu vererben, und somit die einzelnen Comments zu createn

