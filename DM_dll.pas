unit DM_dll;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZDataset;

type
  TDM_ = class(TDataModule)
    ZConnection1: TZConnection;
    zq_l1_up1: TZReadOnlyQuery;
    zq_l2_req1: TZReadOnlyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_: TDM_;

implementation

{$R *.dfm}

end.
