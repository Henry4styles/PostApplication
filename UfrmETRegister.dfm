object Form2: TForm2
  Left = 572
  Top = 497
  Caption = 'Form2'
  ClientHeight = 264
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object lblEnterUsername: TLabel
    Left = 184
    Top = 43
    Width = 56
    Height = 15
    Caption = 'Username:'
  end
  object lblEnterPassword: TLabel
    Left = 184
    Top = 109
    Width = 53
    Height = 15
    Caption = 'Password:'
  end
  object lblConfirmPassword: TLabel
    Left = 416
    Top = 109
    Width = 89
    Height = 15
    Caption = 'repeat Password:'
  end
  object Label1: TLabel
    Left = 416
    Top = 164
    Width = 100
    Height = 15
    Caption = 'Already registered?'
  end
  object txtEnterUsername: TEdit
    Left = 184
    Top = 64
    Width = 201
    Height = 23
    Hint = 'Enter Username'
    ImeName = 'German'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object btnRegister: TButton
    Left = 296
    Top = 185
    Width = 89
    Height = 25
    Caption = 'register'
    TabOrder = 1
    OnClick = btnRegisterClick
  end
  object btnSwitchLogin: TButton
    Left = 416
    Top = 185
    Width = 105
    Height = 25
    Caption = 'login'
    TabOrder = 2
  end
  object btnCancel: TButton
    Left = 545
    Top = 185
    Width = 105
    Height = 25
    Caption = 'Cancel'
    TabOrder = 3
  end
  object txtEnterPassword: TEdit
    Left = 184
    Top = 130
    Width = 201
    Height = 23
    Hint = 'Enter Username'
    ImeName = 'German'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object txtRepeatPassword: TEdit
    Left = 416
    Top = 130
    Width = 234
    Height = 23
    Hint = 'Enter Username'
    ImeName = 'German'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
end
