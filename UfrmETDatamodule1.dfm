object DataModule1: TDataModule1
  Height = 412
  Width = 654
  object QueryRegister: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ETUserLoginData')
    Left = 200
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = QueryRegister
    Left = 488
    Top = 184
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=ForumDB;Data Source=W10-MA' +
      '2056\EASYTEC;Initial File Name="";Server SPN="";Authentication="' +
      '";Access Token=""'
    LoginPrompt = False
    Provider = 'MSOLEDBSQL.1'
    Left = 232
    Top = 136
  end
  object QueryLoginCheck: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 312
    Top = 296
  end
  object QueryLoadPost: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ETUserLoginData')
    Left = 432
    Top = 296
  end
end