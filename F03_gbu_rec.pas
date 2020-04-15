unit F03_gbu_rec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, Mask, DBCtrlsEh, DBLookupEh, StdCtrls, Buttons, ExtCtrls,db;

type
  TF_gbu_rec = class(TForm)
    Panel1: TPanel;
    B_OK: TBitBtn;
    Label1: TLabel;
    e_num: TEdit;
    Label2: TLabel;
    e_address: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    e_len: TEdit;
    Label5: TLabel;
    e_squ: TEdit;
    cb_oot: TDBLookupComboboxEh;
    procedure e_lenKeyPress(Sender: TObject; var Key: Char);
    procedure B_OKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_gbu_rec: TF_gbu_rec;

implementation

{$R *.dfm}
uses DM;

function get_str_null(in_:string):string;
begin
  if in_='' then result:='null' else result:='"'+in_+'"';
end;
function get_i_null(in_:integer):string;
begin
  if (in_=0) or (in_ = null) or (in_=-1) then result:='null' else result:=inttostr(in_);
end;

function get_float_null(in_:string):string;
function replace_str(source_:string;w_in,w_out:char):string;
var i:integer;
begin
  for I := 1 to length(source_) do
    if source_[i]=w_in then source_[i]:=w_out;
  result:=source_;
end;
begin
  if (in_='') then result:='0' else result:=replace_str(floattostr(round(strtofloat(in_)*100)/100),',','.');
end;

procedure TF_gbu_rec.B_OKClick(Sender: TObject);
var SavePlace: TBookmark;
begin
  if e_num.Text='' then showmessage('Пустые поля')
  else
    begin
      if tag=1 then
        begin
          dm_.zq_TMP.SQL.Text:='insert into schems_gbu (id_schema_a,id_oot_a,gbu_name,address_point,len,squ) values ('+
            dm_.zq_schems.FieldByName('id_schema').AsString+','+get_i_null(cb_oot.KeyValue)+','+get_str_null(e_num.Text)+','+
            get_str_null(e_address.Text)+','+get_float_null(e_len.Text)+','+get_float_null(e_squ.Text)+')';
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      if tag=2 then
        begin
          dm_.zq_TMP.SQL.Text:='update schems_gbu set id_oot_a='+get_i_null(cb_oot.KeyValue)+',gbu_name='+
          get_str_null(e_num.Text)+',address_point='+get_str_null(e_address.Text)+',len='+get_float_null(e_len.Text)+',squ='+get_float_null(e_squ.Text)+
            ' where id_gbu='+dm_.zq_gbu.FieldByName('id_gbu').AsString;
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      SavePlace:=dm_.zq_gbu.GetBookmark();
      dm_.zq_gbu.Refresh();
      dm_.zq_gbu.GotoBookmark(SavePlace);
      dm_.zq_gbu.FreeBookmark(SavePlace);
      close();
    end;

end;

procedure TF_gbu_rec.e_lenKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
     #160,#23,#24,#8,'0'..'9' :  ; // цифры и <Back Space>
    '.',',': // разделитель целой и дробной частей числа
        begin
          if Pos(DecimalSeparator,(Sender as TEdit).Text) <> 0
          then Key := Chr(0) // запрет ввода второго разделителя
          else Key := DecimalSeparator; // установим родной для ОС разделитель
        end
    else   // остальные символы запрещены
      key := Chr(0);
  end;
end;

procedure TF_gbu_rec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm_.zq_gbu_oot.Close();
end;

end.
