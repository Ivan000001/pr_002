unit F06_materials;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, StdCtrls, Buttons,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TF_materials = class(TForm)
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    B_add: TBitBtn;
    B_edit: TBitBtn;
    B_del: TBitBtn;
    B_m_add: TBitBtn;
    B_m_del: TBitBtn;
    B_m_edit: TBitBtn;
    chb_active_material: TCheckBox;
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure chb_active_materialClick(Sender: TObject);
    procedure B_editClick(Sender: TObject);
    procedure B_addClick(Sender: TObject);
    procedure B_delClick(Sender: TObject);
    procedure B_m_delClick(Sender: TObject);
    procedure B_m_editClick(Sender: TObject);
    procedure B_m_addClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_materials: TF_materials;

implementation

{$R *.dfm}
uses DM, F06_materials_doc_rec, F06_materials_rec;

procedure TF_materials.B_addClick(Sender: TObject);
begin
      f_materials_rec.E_short_name.Text:='';
      f_materials_rec.E_name.Text:='';
      f_materials_rec.chb_active.Checked:=false;
      f_materials_rec.chb_add_act.Checked:=false;
      f_materials_rec.Tag:=1;
      f_materials_rec.show();
end;

procedure TF_materials.B_delClick(Sender: TObject);
begin
  if dm_.zq_materials_doc.RecordCount>0 then
  if MessageDlg('Удалить запись о материале',mtInformation,[mbOK]+[mbCancel],0)=1 then
    begin
      dm_.zq_TMP.SQL.Text:='delete from ls_materials where id_material='+dm_.zq_materials.FieldByName('id_material').AsString;
      dm_.zq_materials_doc.DisableControls();
      dm_.zq_materials_doc.Prior();
      dm_.zq_TMP.ExecSQL();
      dm_.zq_TMP.SQL.Clear();
      dm_.zq_materials_doc.Refresh();
      dm_.zq_materials_doc.EnableControls();
    end;
end;

procedure TF_materials.B_editClick(Sender: TObject);
function check_(in_:integer):boolean;
begin
  if in_=1 then result:=true else result:=false;
end;
begin
  if dm_.zq_materials.RecordCount>0 then
    begin
      f_materials_rec.E_short_name.Text:=dm_.zq_materials.FieldByName('short_name').AsString;
      f_materials_rec.E_name.Text:=dm_.zq_materials.FieldByName('name_material').AsString;
      f_materials_rec.chb_active.Checked:=check_(dm_.zq_materials.FieldByName('active').AsInteger);
      f_materials_rec.chb_add_act.Checked:=check_(dm_.zq_materials.FieldByName('add_act').AsInteger);
      f_materials_rec.Tag:=2;
      f_materials_rec.show();
    end;
end;

procedure TF_materials.B_m_addClick(Sender: TObject);
begin
  if dm_.zq_materials.RecordCount>0 then
    begin
      f_materials_doc_rec.Memo1.Text:='';
      f_materials_doc_rec.Tag:=1;
      f_materials_doc_rec.show();
    end;
end;

procedure TF_materials.B_m_delClick(Sender: TObject);
begin
  if dm_.zq_materials_doc.RecordCount>0 then
  if MessageDlg('Удалить запись',mtInformation,[mbOK]+[mbCancel],0)=1 then
    begin
      dm_.zq_TMP.SQL.Text:='delete from ls_materials_doc where id_materials_doc='+dm_.zq_materials_doc.FieldByName('id_material_doc').AsString;
      dm_.zq_materials_doc.DisableControls();
      dm_.zq_materials_doc.Prior();
      dm_.zq_TMP.ExecSQL();
      dm_.zq_TMP.SQL.Clear();
      dm_.zq_materials_doc.Refresh();
      dm_.zq_materials_doc.EnableControls();
    end;
end;

procedure TF_materials.B_m_editClick(Sender: TObject);
begin
  if dm_.zq_materials_doc.RecordCount>0 then
    begin
      f_materials_doc_rec.Memo1.Text:=dm_.zq_materials_doc.FieldByName('name').AsString;
      f_materials_doc_rec.Tag:=2;
      f_materials_doc_rec.show();
    end;
end;

procedure TF_materials.chb_active_materialClick(Sender: TObject);
begin
 if chb_active_material.Checked=true then
   begin
   //  chb_active_material.Checked:=false;
     dm_.zq_materials.ParamByName('p_visible').AsInteger:=1;
     dm_.zq_materials.Refresh();
   end
      else
   begin
   //  chb_active_material.Checked:=true;
     dm_.zq_materials.ParamByName('p_visible').AsInteger:=0;
     dm_.zq_materials.Refresh();
   end;
 
end;

procedure TF_materials.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if dm_.zq_materials.FieldByName('active').AsInteger=0 then
    DBGridEh1.Canvas.Brush.Color:=rgb(98,99,155);
  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TF_materials.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm_.zq_materials_doc.Close();
  dm_.zq_materials.Close();
end;

procedure TF_materials.FormShow(Sender: TObject);
begin
  dm_.zq_materials.Open();
end;

end.
