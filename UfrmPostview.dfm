object frmPostView: TfrmPostView
  Left = 592
  Top = 186
  Caption = 'frmPostView'
  ClientHeight = 923
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnShow = FormShow
  TextHeight = 15
  object PnlPost: TPanel
    Left = 10
    Top = 24
    Width = 700
    Height = 417
    TabOrder = 1
    object dblblBody: TDBText
      Left = 104
      Top = 101
      Width = 65
      Height = 17
    end
    object dblblFooter: TDBText
      Left = 104
      Top = 332
      Width = 65
      Height = 17
    end
    object dblblHeader: TDBText
      Left = 104
      Top = 47
      Width = 65
      Height = 15
    end
  end
  object pnlCommentcreate: TPanel
    Left = 8
    Top = 464
    Width = 700
    Height = 121
    TabOrder = 2
    object lblComment: TLabel
      Left = 24
      Top = 19
      Width = 59
      Height = 15
      Caption = 'Comments'
    end
    object btnPublishComment: TButton
      Left = 528
      Top = 80
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
      Top = 40
      Width = 633
      Height = 23
      CanUndoSelText = True
      TabOrder = 1
      TextHint = 'Write a Comment..'
      OnEnter = txtCommentCreateEnter
    end
  end
  object Button1: TButton
    Left = 416
    Top = 447
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 608
    Width = 700
    Height = 249
    TabOrder = 3
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
      Height = 4984
      TabOrder = 1
    end
  end
end
