unit UfrmETDatamodule1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    QueryRegister: TADOQuery;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    QueryLoginCheck: TADOQuery;
    QueryLoadPost: TADOQuery;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
