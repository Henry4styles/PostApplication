unit UfrmPostview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TCommentvorlage = class(TObject)
      dblblComment: TDBText;
      btnReleaseComment: TButton;
      txtComment: TEdit;
    private
        dest, v1, v2: integer;
    public
        constructor Create(dest, r1, r2: integer);
    end;
  TComment = class(TCommentvorlage);
  TfrmPostView = class(TForm)
    dblblHeader: TDBText;
    dblblBody: TDBText;
    dblblFooter: TDBText;
    PnlPost: TPanel;
    procedure pnlCommentClick(Sender: TObject);
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

procedure TfrmPostView.pnlCommentClick(Sender: TObject);
begin

end;

{ TComment }

constructor TCommentvorlage.Create;
begin

end;

end.
{Info f�r morgen:
Basisklasse erstellen um diese mit ihren Objects zu vererben, und somit die einzelnen Comments zu createn

}