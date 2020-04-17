unit F06_materials_rec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db, StdCtrls, Buttons;

type
  TF_materials_rec = class(TForm)
    B_OK: TBitBtn;
    E_short_name: TEdit;
    E_name: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    chb_active: TCheckBox;
    chb_add_act: TCheckBox;
    procedure B_OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_materials_rec: TF_materials_rec;

implementation

{$R *.dfm}
uses DM;

function get_str_null(in_:string):string;
begin
  if in_='' then result:='null' else result:='"'+in_+'"';
end;
function get_b_s(in_:boolean):string;
begin
  if in_ then result:='1' else result:='0';
end;

procedure TF_materials_rec.B_OKClick(Sender: TObject);
var SavePlace: TBookmark;
begin
  if e_name.Text='' then showmessage('Пустые поля')
  else
    begin
      if tag=1 then
        begin
          dm_.zq_TMP.SQL.Text:='insert into ls_materials (short_name,name_material,active,add_act) values ('+
            get_str_null(e_short_name.Text)+','+get_str_null(e_name.Text)+','+
            get_b_s(chb_active.Checked)+','+get_b_s(chb_add_act.Checked)+')';
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      if tag=2 then
        begin
          dm_.zq_TMP.SQL.Text:='update ls_materials set short_name= '+get_str_null(e_short_name.Text)+',name_material='+
            get_str_null(e_name.Text)+',active='+get_b_s(chb_active.Checked)+',add_act='+get_b_s(chb_add_act.Checked)+
            ' where id_material='+dm_.zq_materials.FieldByName('id_material').AsString;
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      if chb_active.Checked then
        begin
          SavePlace:=dm_.zq_materials.GetBookmark();
          dm_.zq_materials.Refresh();
          dm_.zq_materials.GotoBookmark(SavePlace);
          dm_.zq_materials.FreeBookmark(SavePlace);
        end
      else
        dm_.zq_materials.Refresh();
      close();
    end;
end;

end.
