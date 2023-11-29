object frmETHomepageLogout: TfrmETHomepageLogout
  Left = 409
  Top = 83
  Caption = 'Homepage'
  ClientHeight = 881
  ClientWidth = 1026
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesigned
  TextHeight = 15
  object Label2: TLabel
    Left = 280
    Top = 2
    Width = 34
    Height = 15
    Caption = 'Label2'
  end
  object Panel1: TPanel
    Left = 8
    Top = 23
    Width = 617
    Height = 474
    TabOrder = 0
    object Memo1: TMemo
      Left = 48
      Top = 40
      Width = 521
      Height = 313
      BorderStyle = bsNone
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 473
    Top = 608
    Width = 185
    Height = 41
    Caption = 'Panel2'
    TabOrder = 1
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
