unit F05_pid_list;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TF_pid_list = class(TForm)
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBGridEh1: TDBGridEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_pid_list: TF_pid_list;

implementation

{$R *.dfm}
uses dm;
end.
