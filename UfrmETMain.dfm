object frmETHomepageLogout: TfrmETHomepageLogout
  Left = 551
  Top = 207
  Caption = 'Homepage'
  ClientHeight = 706
  ClientWidth = 759
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesigned
  TextHeight = 15
  object Panel1: TPanel
    Left = 8
    Top = 56
    Width = 743
    Height = 642
    TabOrder = 0
    object dblblFooter: TDBText
      Left = 104
      Top = 360
      Width = 65
      Height = 17
    end
    object dblblHeader: TDBText
      Left = 104
      Top = 55
      Width = 65
      Height = 15
    end
    object dblblBody: TDBText
      Left = 104
      Top = 127
      Width = 65
      Height = 15
    end
  end
  object MainMenu1: TMainMenu
    Left = 864
    Top = 120
    object MnuItmHomepage: TMenuItem
      Caption = 'homepage'
      OnClick = MnuItmHomepageClick
    end
    object Postschreiben1: TMenuItem
      Caption = 'write a post'
      OnClick = Postschreiben1Click
    end
    object MnuItmLogin: TMenuItem
      Caption = 'sign in'
      OnClick = actShowLoginFrmExecute
    end
    object MnuItmSignUp: TMenuItem
      Caption = 'sign up'
      ImageName = 'MnuItmSignUp'
      OnClick = actShowRegisterFrmExecute
    end
  end
  object ActionList1: TActionList
    Left = 864
    Top = 304
    object actShowHomepage: TAction
      Caption = 'actShowHomepage'
      OnExecute = actShowHomepageExecute
    end
    object actShowLoginFrm: TAction
      Caption = 'actShowLoginFrm'
      OnExecute = actShowLoginFrmExecute
    end
    object actShowRegisterFrm: TAction
      Caption = 'actShowRegisterFrm'
      OnExecute = actShowRegisterFrmExecute
    end
    object actRegister: TAction
      Caption = 'register'
    end
  end
end
