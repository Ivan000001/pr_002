unit F05_pid_list;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  GridsEh, DBAxisGridsEh, DBGridEh, Buttons;

type
  TF_pid_list = class(TForm)
    DBGridEh1: TDBGridEh;
    B_add: TBitBtn;
    B_del: TBitBtn;
    B_exe: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    l_id_oot: TLabel;
    procedure B_addClick(Sender: TObject);
    procedure B_delClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_pid_list: TF_pid_list;

implementation

{$R *.dfm}
uses dm,F05_pid_list_add, zdataset,db;

procedure TF_pid_list.B_addClick(Sender: TObject);
var F: TF_pid_list_add;
  zq:TZReadOnlyQuery;
  ds:TDataSource;
begin
  f:=TF_pid_list_add.Create(self);
  try
    zq:=TZReadOnlyQuery.Create(self);
    zq.Connection:=dm_.ZConnection1;
    zq.SQL.Text:='SELECT * FROM ls_pid_docs WHERE not(id_pid_doc IN (SELECT id_pid_doc_a FROM oot_pid WHERE id_oot_a=:p_id_oot))';
    zq.ParamByName('p_id_oot').AsString:=l_id_oot.Caption;
    ds:=TdataSource.Create(self);
    ds.DataSet:=zq;
    f.DBGridEh1.DataSource:=ds;
    zq.Open();
    f.id_oot_p:=zq.ParamByName('p_id_oot').AsString;
    f.ShowModal();
  finally
    DBGridEh1.DataSource.DataSet.Refresh();
    freeandnil(f);
  end;
end;

procedure TF_pid_list.B_delClick(Sender: TObject);
begin
  if DBGridEh1.DataSource.DataSet.RecordCount>0 then
  if MessageDlg('Удалить запись',mtInformation,[mbOK]+[mbCancel],0)=1 then
    begin
      dm_.zq_TMP.SQL.Text:='delete from oot_pid where id_row='+DBGridEh1.DataSource.DataSet.FieldByName('id_row').AsString;
      DBGridEh1.DataSource.DataSet.DisableControls();
      DBGridEh1.DataSource.DataSet.Prior();
      dm_.zq_TMP.ExecSQL();
      dm_.zq_TMP.SQL.Clear();
      DBGridEh1.DataSource.DataSet.Refresh();
      DBGridEh1.DataSource.DataSet.EnableControls();
    end;
end;

end.
