object frmPostView: TfrmPostView
  Left = 551
  Top = 103
  Caption = 'frmPostView'
  ClientHeight = 756
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object PnlPost: TPanel
    Left = 8
    Top = 24
    Width = 689
    Height = 417
    TabOrder = 0
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
  object PnlComment: TPanel
    Left = 8
    Top = 512
    Width = 689
    Height = 153
    TabOrder = 1
    object dblblComment: TDBText
      Left = 64
      Top = 95
      Width = 65
      Height = 15
    end
    object Edit1: TEdit
      Left = 64
      Top = 24
      Width = 545
      Height = 25
      TabOrder = 0
      TextHint = 'Write a comment'
    end
    object btnReleaseComment: TButton
      Left = 64
      Top = 55
      Width = 105
      Height = 25
      Caption = 'publish comment'
      DisabledImageName = 'btnpublishComment'
      TabOrder = 1
      Visible = False
    end
  end
end
