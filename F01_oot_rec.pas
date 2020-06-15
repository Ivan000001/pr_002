unit F01_oot_rec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBGridEh, Buttons, DBCtrlsEh, Mask, DBLookupEh,DB;

type
  TF_oot_rec = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    E_nn_oot: TEdit;
    e_name: TEdit;
    cb_dist: TComboBox;
    cb_districts: TDBLookupComboboxEh;
    cb_gr_streets: TDBLookupComboboxEh;
    cb_exe: TDBLookupComboboxEh;
    e_lat: TEdit;
    e_long: TEdit;
    chb_ready: TCheckBox;
    e_p_output: TEdit;
    cb_where_output: TDBComboBoxEh;
    e_trench: TEdit;
    e_laythepipe: TEdit;
    e_lay_cl: TEdit;
    e_montage_al: TEdit;
    e_count_vrsh: TEdit;
    B_OK: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    label4: TLabel;
    label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    e_address: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    cb_tu: TDBLookupComboboxEh;
    cb_schems: TDBLookupComboboxEh;
    cb_type_oot: TDBComboBoxEh;
    Label18: TLabel;
    CheckBox1: TCheckBox;
    procedure e_latKeyPress(Sender: TObject; var Key: Char);
    procedure e_count_vrshKeyPress(Sender: TObject; var Key: Char);
    procedure e_trenchKeyPress(Sender: TObject; var Key: Char);
    procedure B_OKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_oot_rec: TF_oot_rec;

implementation

{$R *.dfm}
uses DM;

function get_b_s(in_:boolean):string;
begin
  if in_ then result:='1' else result:='0';
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
  if in_=0 then result:='null' else result:=inttostr(in_);
end;
function get_ii_null(in_:integer):string;
begin
  if (in_=0) or (in_=-1)then result:='0' else result:=inttostr(in_);
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
  if (in_='') then result:='0' else
   result:=replace_str(floattostr(round(strtofloat(in_)*100)/100),',','.');
end;

procedure TF_oot_rec.B_OKClick(Sender: TObject);
var SavePlace: TBookmark;
begin
  if (cb_districts.KeyValue=0)or(cb_gr_streets.KeyValue=0)or(e_name.Text='') then
    showmessage('Пустые поля')
  else
    begin
      if tag=1 then
        begin
          dm_.zq_TMP.SQL.Text:='insert into oot (id_gr_street_a,nn_oot,name_oot,direction,id_doc_a,gps_lat,gps_long,address,id_schema_a,id_exe_a,job_state,p_output,where_output,trench,laythepipe,lay_cl,montage_al,count_vrsh,type_oot) values '+
            '('+get_i_null(cb_gr_streets.KeyValue)+','+get_s_null(e_nn_oot.text)+',"'+e_name.Text+'",'+get_str_null(cb_dist.Text)+','+get_i_null(cb_tu.KeyValue)+','+get_str_null(e_lat.Text)+','+get_str_null(e_long.Text)+','+get_str_null(e_address.Text)+','+get_i_null(cb_schems.KeyValue)+','+get_i_null(cb_exe.KeyValue)+','+get_b_s(chb_ready.Checked)+','+
            e_p_output.Text+','+get_ii_null(cb_where_output.ItemIndex)+','+get_float_null(e_trench.Text)+','+get_float_null(e_laythepipe.Text)+','+get_float_null(e_lay_cl.Text)+','+get_float_null(e_montage_al.Text)+','+get_float_null(e_count_vrsh.Text)+','+get_str_null(cb_type_oot.Text)+');';
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      if tag=2 then
        begin
          dm_.zq_TMP.SQL.Text:='update oot set id_gr_street_a='+get_i_null(cb_gr_streets.KeyValue)+',nn_oot='+get_s_null(e_nn_oot.text)+',name_oot="'+e_name.Text+'",direction='+get_str_null(cb_dist.Text)+',id_doc_a='+get_i_null(cb_tu.KeyValue)+',gps_lat='+get_str_null(e_lat.Text)+
          ',gps_long='+get_str_null(e_long.Text)+',address='+get_str_null(e_address.Text)+',id_schema_a='+get_i_null(cb_schems.KeyValue)+',id_exe_a='+get_i_null(cb_exe.KeyValue)+',job_state='+get_b_s(chb_ready.Checked)+',p_output='+e_p_output.Text+',where_output='+
          get_ii_null(cb_where_output.ItemIndex)+',trench='+get_float_null(e_trench.Text)+',laythepipe='+get_float_null(e_laythepipe.Text)+',lay_cl='+get_float_null(e_lay_cl.Text)+',montage_al='+get_float_null(e_montage_al.Text)+',count_vrsh='+get_float_null(e_count_vrsh.Text)+',type_oot='+get_str_null(cb_type_oot.Text)+
          ' where id_oot='+dm_.zq_oot.FieldByName('id_oot').AsString;
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      SavePlace:=dm_.zq_oot.GetBookmark();
      dm_.zq_oot.Refresh();
      dm_.zq_oot.GotoBookmark(SavePlace);
      dm_.zq_oot.FreeBookmark(SavePlace);
      close();
    end;
end;

procedure TF_oot_rec.e_count_vrshKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
     #160,#23,#24,#8,'0'..'9' :  ; // цифры и <Back Space>
    else   // остальные символы запрещены
      key := Chr(0);
  end;
end;

procedure TF_oot_rec.e_latKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
     #160,#23,#24,#8,'0'..'9' :  ; // цифры и <Back Space>
    '.',',': // разделитель целой и дробной частей числа
        begin
          if Pos('.',(Sender as TEdit).Text) <> 0
          then Key := Chr(0) // запрет ввода второго разделителя
          else Key := '.'; // установим родной для ОС разделитель
        end
    else   // остальные символы запрещены
      key := Chr(0);
  end;
end;

procedure TF_oot_rec.e_trenchKeyPress(Sender: TObject; var Key: Char);
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

procedure TF_oot_rec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm_.zq_oot_cb_districts.Close();
  dm_.zq_oot_cb_gr_streets.Close();
  dm_.zq_oot_cb_tu.Close();
  dm_.zq_oot_cb_schems.Close();
  dm_.zq_oot_cb_exe.Close()
end;

end.
