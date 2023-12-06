object frmMainLoggedin: TfrmMainLoggedin
  Left = 592
  Top = 207
  Caption = 'frmMainLoggedin'
  ClientHeight = 572
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesigned
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 600
    Top = 216
    object MnuItmHomepage: TMenuItem
      Caption = 'homepage'
    end
    object Postschreiben1: TMenuItem
      Caption = 'write a post'
    end
    object logout1: TMenuItem
      Caption = 'logout'
      OnClick = logout1Click
    end
  end
end
