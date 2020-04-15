unit F04_docs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, GridsEh,
  DBAxisGridsEh, DBGridEh, StdCtrls, Buttons;

type
  Tf_docs = class(TForm)
    b_add: TBitBtn;
    b_edit: TBitBtn;
    b_del: TBitBtn;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure b_delClick(Sender: TObject);
    procedure b_editClick(Sender: TObject);
    procedure b_addClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_docs: Tf_docs;

implementation

{$R *.dfm}
uses DM, F04_docs_rec;
procedure Tf_docs.b_addClick(Sender: TObject);
begin
  f_docs_rec.e_tu.text:='';
  f_docs_rec.e_notification.Text:='';
  f_docs_rec.e_req.Text:='';
  f_docs_rec.cb_state.ItemIndex:=-1;
  f_docs_rec.Tag:=1;
  f_docs_rec.showmodal();
end;

procedure Tf_docs.b_editClick(Sender: TObject);
begin
  if dm_.zq_docs.RecordCount>0 then
    begin
      f_docs_rec.e_tu.text:=dm_.zq_docs.FieldByName('id_tu').AsString;
      f_docs_rec.e_notification.Text:=dm_.zq_docs.FieldByName('id_notifications').AsString;
      f_docs_rec.e_req.Text:=dm_.zq_docs.FieldByName('id_requests').AsString;
      f_docs_rec.cb_state.ItemIndex:=dm_.zq_docs.FieldByName('contract_state').AsInteger;
      f_docs_rec.Tag:=2;
      f_docs_rec.showmodal();
    end;
end;

procedure Tf_docs.b_delClick(Sender: TObject);
begin
  if dm_.zq_docs.RecordCount>0 then
  if MessageDlg('Удалить запись',mtInformation,[mbOK]+[mbCancel],0)=1 then
    begin
      dm_.zq_TMP.SQL.Text:='delete from docs where id_doc='+dm_.zq_docs.FieldByName('id_doc').AsString;
      dm_.zq_docs.DisableControls();
      dm_.zq_docs.Prior();
      dm_.zq_TMP.ExecSQL();
      dm_.zq_TMP.SQL.Clear();
      dm_.zq_docs.Refresh();
      dm_.zq_docs.EnableControls();
    end;
end;

procedure Tf_docs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm_.zq_docs.Close();
end;

procedure Tf_docs.FormShow(Sender: TObject);
begin
  dm_.zq_docs.Open();
end;

end.
