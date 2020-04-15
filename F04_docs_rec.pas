unit F04_docs_rec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, Mask, DBCtrlsEh, DBLookupEh, StdCtrls, Buttons, ExtCtrls,db;

type
  Tf_docs_rec = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    e_tu: TEdit;
    Label2: TLabel;
    e_notification: TEdit;
    Label3: TLabel;
    e_req: TEdit;
    Label4: TLabel;
    cb_state: TDBComboBoxEh;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_docs_rec: Tf_docs_rec;

implementation

uses DM;

{$R *.dfm}

function get_str_null(in_:string):string;
begin
  if in_='' then result:='null' else result:='"'+in_+'"';
end;
function get_i_null(in_:integer):string;
begin
  if (in_=0) or (in_ = null) or (in_=-1) then result:='null' else result:=inttostr(in_);
end;


procedure Tf_docs_rec.BitBtn1Click(Sender: TObject);
var SavePlace: TBookmark;
begin
  if e_tu.Text='' then showmessage('Пустые поля')
  else
    begin
      if tag=1 then
        begin
          dm_.zq_TMP.SQL.Text:='insert into docs (id_tu,id_notifications,id_requests,contract_state) values ('+get_str_null(e_tu.Text)+','+
            get_str_null(e_notification.Text)+','+get_str_null(e_req.Text)+','+get_i_null(cb_state.ItemIndex)+')';
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      if tag=2 then
        begin
          dm_.zq_TMP.SQL.Text:='update docs set id_tu='+get_str_null(e_tu.Text)+',id_notifications='+
          get_str_null(e_notification.Text)+',id_requests='+get_str_null(e_req.Text)+',contract_state='+get_i_null(cb_state.ItemIndex)+
            ' where id_doc='+dm_.zq_docs.FieldByName('id_doc').AsString;
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      SavePlace:=dm_.zq_docs.GetBookmark();
      dm_.zq_docs.Refresh();
      dm_.zq_docs.GotoBookmark(SavePlace);
      dm_.zq_docs.FreeBookmark(SavePlace);
      close();
    end;

end;

end.
