object frmPostView: TfrmPostView
  Left = 551
  Top = 103
  Caption = 'frmPostView'
  ClientHeight = 626
  ClientWidth = 705
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
    Left = 8
    Top = 24
    Width = 689
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
  object pnlComment: TPanel
    Left = 8
    Top = 488
    Width = 689
    Height = 121
    TabOrder = 2
    OnClick = pnlCommentClick
    object lblComment: TLabel
      Left = 24
      Top = 19
      Width = 59
      Height = 15
      Caption = 'Comments'
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 40
      Width = 633
      Height = 23
      Hint = 'Write a comment...'
      DataField = 'CommentLink'
      DataSource = DataModule1.DSrcComment
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnEnter = DBEdit1Enter
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
    end
  end
  object Button1: TButton
    Left = 416
    Top = 457
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
end
