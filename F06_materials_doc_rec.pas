unit F06_materials_doc_rec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,db;

type
  TF_materials_doc_rec = class(TForm)
    B_ok: TBitBtn;
    Label1: TLabel;
    Memo1: TMemo;
    procedure B_okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_materials_doc_rec: TF_materials_doc_rec;

implementation

{$R *.dfm}
uses DM;
procedure TF_materials_doc_rec.B_okClick(Sender: TObject);
var SavePlace: TBookmark;
begin
  if memo1.Text='' then showmessage('Пустые поля')
  else
    begin
      if tag=1 then
        begin
          dm_.zq_TMP.SQL.Text:='insert into ls_materials_doc (id_material_a,name) values ('+dm_.zq_materials.FieldByName('id_material').AsString+',"'+memo1.Text+'")';
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      if tag=2 then
        begin
          dm_.zq_TMP.SQL.Text:='update ls_materials_doc set name="'+memo1.Text+'" '+
            ' where id_material_doc='+dm_.zq_materials_doc.FieldByName('id_material_doc').AsString;
          dm_.zq_TMP.ExecSQL();
          dm_.zq_TMP.SQL.Clear();
        end;
      SavePlace:=dm_.zq_materials_doc.GetBookmark();
      dm_.zq_materials_doc.Refresh();
      dm_.zq_materials_doc.GotoBookmark(SavePlace);
      dm_.zq_materials_doc.FreeBookmark(SavePlace);
      close();
    end;

end;

end.
