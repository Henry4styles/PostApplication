object frmProfileView: TfrmProfileView
  Left = 511
  Top = 145
  Caption = 'Profile view'
  ClientHeight = 769
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Panel1: TPanel
    Left = 32
    Top = 56
    Width = 721
    Height = 361
    TabOrder = 0
    object lblUsername: TLabel
      Left = 239
      Top = 47
      Width = 56
      Height = 15
      Caption = 'Username:'
    end
    object lblEmail: TLabel
      Left = 239
      Top = 98
      Width = 32
      Height = 15
      Caption = 'Email:'
    end
    object lblProfiledescription: TLabel
      Left = 239
      Top = 149
      Width = 99
      Height = 15
      Caption = 'Profile-Description'
    end
    object dblblUsername: TDBText
      Left = 239
      Top = 59
      Width = 65
      Height = 17
    end
    object dblblEmail: TDBText
      Left = 239
      Top = 110
      Width = 65
      Height = 17
    end
    object dblbldescription: TDBText
      Left = 239
      Top = 166
      Width = 65
      Height = 17
    end
    object DBImage1: TDBImage
      Left = 27
      Top = 47
      Width = 150
      Height = 150
      TabOrder = 0
    end
    object btnSafe: TButton
      Left = 456
      Top = 312
      Width = 114
      Height = 25
      Caption = 'save'
      DisabledImageName = 'btnSave'
      TabOrder = 1
      Visible = False
    end
    object btnCancel: TButton
      Left = 576
      Top = 312
      Width = 107
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      TabOrder = 2
      Visible = False
    end
    object btnEdit: TButton
      Left = 576
      Top = 312
      Width = 107
      Height = 25
      Cancel = True
      Caption = 'Edit'
      TabOrder = 3
    end
    object btnChangeImage: TButton
      Left = 27
      Top = 216
      Width = 110
      Height = 25
      Caption = 'Change Image'
      TabOrder = 4
      Visible = False
    end
  end
  object DBEdit1: TDBEdit
    Left = 271
    Top = 168
    Width = 444
    Height = 23
    TabOrder = 1
    Visible = False
  end
  object DBEdit2: TDBEdit
    Left = 271
    Top = 219
    Width = 444
    Height = 23
    TabOrder = 2
    Visible = False
  end
end
