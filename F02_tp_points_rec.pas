unit F02_tp_points_rec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,db;

type
  TF_tp_points_rec = class(TForm)
    Label1: TLabel;
    e_tp: TEdit;
    Label2: TLabel;
    e_address: TEdit;
    Label3: TLabel;
    e_lat: TEdit;
    Label4: TLabel;
    e_long: TEdit;
    B_OK: TBitBtn;
    Panel1: TPanel;
    procedure e_latKeyPress(Sender: TObject; var Key: Char);
    procedure B_OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_tp_points_rec: TF_tp_points_rec;

implementation

{$R *.dfm}
uses dm;

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




procedure TF_tp_points_rec.B_OKClick(Sender: TObject);
var SavePlace: TBookmark;
begin
  if e_tp.Text='' then
    showmessage('Пустые поля')
  else
    begin
      if tag=1 then
        begin
          dm_.zq_TMP.SQL.Text:='insert into tp_point (tp_name,address_point,gps_lat,gps_long) values ('+get_str_null(e_tp.Text)+','+
            get_str_null(e_address.Text)+','+get_str_null(e_lat.Text)+','+get_str_null(e_long.Text)+');';
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      if tag=2 then
        begin
          dm_.zq_TMP.SQL.Text:='update tp_point set tp_name='+get_str_null(e_tp.Text)+',address_point='+get_str_null(e_address.Text)+
            ',gps_lat='+get_str_null(e_lat.Text)+',gps_long='+get_str_null(e_long.Text)+' where id_tp_point='+dm_.zq_tp_points.FieldByName('id_tp_point').AsString;
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      SavePlace:=dm_.zq_tp_points.GetBookmark();
      dm_.zq_tp_points.Refresh();
      dm_.zq_tp_points.GotoBookmark(SavePlace);
      dm_.zq_tp_points.FreeBookmark(SavePlace);
      close();
    end;
end;

procedure TF_tp_points_rec.e_latKeyPress(Sender: TObject; var Key: Char);
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

end.
