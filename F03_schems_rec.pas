unit F03_schems_rec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, ExtCtrls, Buttons,db;

type
  TF_schems_rec = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    e_name: TEdit;
    chb_res: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    cb_tp: TDBLookupComboboxEh;
    cb_type_input: TComboBox;
    B_OK: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure B_OKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_schems_rec: TF_schems_rec;

implementation

{$R *.dfm}
uses dm;


function get_b_s(in_:boolean):string;
begin
  if in_=true then result:='1' else result:='0';
end;
function get_s_null(in_:string):string;
begin
  if in_='' then result:='null' else result:=in_;
end;
function get_str_null(in_:string):string;
begin
  if in_='' then result:='null' else result:='"'+in_+'"';
end;
function get_i_null(in_:integer):string;
begin
  if (in_=0) or (in_ = null) then result:='null' else result:=inttostr(in_);
end;
function get_ii_null(in_:integer):string;
begin
  if (in_=0) or (in_=-1)then result:='0' else result:=inttostr(in_);
end;

procedure TF_schems_rec.B_OKClick(Sender: TObject);
var SavePlace: TBookmark;
begin
  if e_name.Text='' then showmessage('Пустые поля')
  else
    begin
      if tag=1 then
        begin
          dm_.zq_TMP.SQL.Text:='insert into schems (agreed_res,id_tp_point_a,type_input,name_schema) values ('+get_b_s(chb_res.Checked)+','+
            get_i_null(cb_tp.KeyValue)+','+get_str_null(cb_type_input.Text)+','+get_str_null(e_name.Text)+')';
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      if tag=2 then
        begin
          dm_.zq_TMP.SQL.Text:='update schems set agreed_res='+get_b_s(chb_res.Checked)+
          ',id_tp_point_a='+get_i_null(cb_tp.KeyValue)+
          ',type_input='+get_str_null(cb_type_input.Text)+
          ',name_schema='+get_str_null(e_name.Text)+
            ' where id_schema='+dm_.zq_schems.FieldByName('id_schema').AsString;
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      SavePlace:=dm_.zq_schems.GetBookmark();
      dm_.zq_schems.Refresh();
      dm_.zq_schems.GotoBookmark(SavePlace);
      dm_.zq_schems.FreeBookmark(SavePlace);
      close();
    end;
end;

procedure TF_schems_rec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm_.zq_cb_tp.Close();
end;

end.
