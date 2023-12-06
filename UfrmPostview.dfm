object frmPostView: TfrmPostView
  Left = 633
  Top = 166
  Caption = 'frmPostView'
  ClientHeight = 911
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object PnlPost: TPanel
    Left = 8
    Top = 16
    Width = 700
    Height = 550
    TabOrder = 0
  end
  object pnlCommentcreate: TPanel
    Left = 8
    Top = 572
    Width = 700
    Height = 93
    TabOrder = 1
    object lblComment: TLabel
      Left = 24
      Top = 11
      Width = 59
      Height = 15
      Caption = 'Comments'
    end
    object btnPublishComment: TButton
      Left = 528
      Top = 61
      Width = 129
      Height = 25
      Cancel = True
      Caption = 'publish Comment'
      DisabledImageName = 'btnPublishcomment'
      TabOrder = 0
      Visible = False
      OnClick = btnPublishCommentClick
    end
    object txtCommentCreate: TEdit
      Left = 24
      Top = 32
      Width = 633
      Height = 23
      CanUndoSelText = True
      TabOrder = 1
      TextHint = 'Write a Comment..'
      OnEnter = txtCommentCreateEnter
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 671
    Width = 697
    Height = 235
    TabOrder = 2
    object ScrollBar1: TScrollBar
      Left = 672
      Top = 8
      Width = 17
      Height = 233
      Kind = sbVertical
      PageSize = 0
      TabOrder = 0
      OnChange = ScrollBar1Change
    end
    object Panel2: TPanel
      Left = 1
      Top = 0
      Width = 665
      Height = 10000
      TabOrder = 1
    end
  end
end
