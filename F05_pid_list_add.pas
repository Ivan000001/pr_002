unit F05_pid_list_add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, GridsEh,
  DBAxisGridsEh, DBGridEh;

type
  TF_pid_list_add = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id_oot_p:string;
  end;

var
  F_pid_list_add: TF_pid_list_add;

implementation

{$R *.dfm}
uses dm;

procedure TF_pid_list_add.DBGridEh1DblClick(Sender: TObject);
begin
  dm_.zq_TMP.SQL.Text:='insert into oot_pid (id_pid_doc_a,id_oot_a) values ('+
    DBGridEh1.DataSource.DataSet.FieldByName('id_pid_doc').AsString+','+ id_oot_p+')';
  dm_.zq_TMP.ExecSQL();
  dm_.zq_TMP.SQL.Clear();
  close;
end;

end.
