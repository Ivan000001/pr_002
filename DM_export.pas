unit DM_export;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TDataModule2 = class(TDataModule)
    ZConnection1: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
