object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 789
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object Label2: TLabel
    Left = 568
    Top = 600
    Width = 34
    Height = 15
    Caption = 'Label2'
  end
  object Panel1: TPanel
    Left = 8
    Top = 16
    Width = 817
    Height = 753
    Caption = 'Panel1'
    TabOrder = 0
    object Memo1: TMemo
      Left = 24
      Top = 16
      Width = 769
      Height = 713
      BorderStyle = bsNone
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 312
    Top = 640
    Width = 185
    Height = 41
    Caption = 'Panel2'
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 864
    Top = 120
    object MnuItmHomepage: TMenuItem
      Caption = 'Homepage'
      OnClick = MnuItmHomepageClick
    end
    object MnuItmLogin: TMenuItem
      Caption = 'Login'
      OnClick = actShowLoginFrmExecute
    end
    object MnuItmRegister: TMenuItem
      Caption = 'Register'
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
  end
end
