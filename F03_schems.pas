unit F03_schems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, GridsEh,
  DBAxisGridsEh, DBGridEh, StdCtrls, Buttons, DBCtrls;

type
  TF_schems = class(TForm)
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    B_add: TBitBtn;
    B_edit: TBitBtn;
    B_del: TBitBtn;
    DBText1: TDBText;
    BitBtn4: TBitBtn;
    B_link: TBitBtn;
    B_unlink: TBitBtn;
    DBGridEh3: TDBGridEh;
    B_g_add: TBitBtn;
    B_g_edit: TBitBtn;
    B_g_del: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure B_g_delClick(Sender: TObject);
    procedure B_g_editClick(Sender: TObject);
    procedure B_g_addClick(Sender: TObject);
    procedure B_unlinkClick(Sender: TObject);
    procedure B_editClick(Sender: TObject);
    procedure B_delClick(Sender: TObject);
    procedure B_addClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_schems: TF_schems;

implementation

{$R *.dfm}
uses dm, F03_schems_rec, F03_gbu_rec;
procedure TF_schems.BitBtn5Click(Sender: TObject);
var ch_:string;
begin
  if dm_.zq_gbu.RecordCount>0 then
    begin
      if dm_.zq_gbu.FieldByName('gbu_state').IsNull then ch_:='1';
      if dm_.zq_gbu.FieldByName('gbu_state').AsInteger=1 then ch_:='null';
      if dm_.zq_gbu.FieldByName('gbu_state').AsInteger=2 then ch_:='null';
      dm_.zq_TMP.SQL.Text:='update schems_gbu set gbu_state='+ch_+' where id_gbu='+dm_.zq_gbu.FieldByName('id_gbu').AsString;
      dm_.zq_TMP.ExecSQL();
      dm_.zq_TMP.SQL.Clear();
      dm_.zq_gbu.Refresh();

    end;
end;

procedure TF_schems.B_addClick(Sender: TObject);
begin
  dm_.zq_cb_tp.Open();
  f_schems_rec.e_name.Text:='';
  f_schems_rec.cb_tp.KeyValue:=0;
  f_schems_rec.chb_res.Checked:=false;
  f_schems_rec.cb_type_input.ItemIndex:=-1;
  f_schems_rec.Tag:=1;
  f_schems_rec.showmodal();
end;

procedure TF_schems.B_editClick(Sender: TObject);
begin
  if dm_.zq_schems.RecordCount>0 then
    begin
      dm_.zq_cb_tp.Open();
      f_schems_rec.e_name.Text:=dm_.zq_schems.FieldByName('name_schema').AsString;
      if dm_.zq_schems.FieldByName('id_tp_point_a').IsNull then f_schems_rec.cb_tp.KeyValue:=0
        else f_schems_rec.cb_tp.KeyValue:=dm_.zq_schems.FieldByName('id_tp_point_a').AsInteger;
      if (dm_.zq_schems.FieldByName('agreed_res').IsNull) or (dm_.zq_schems.FieldByName('agreed_res').AsInteger=0) then
        f_schems_rec.chb_res.Checked:=false else f_schems_rec.chb_res.Checked:=true;
      f_schems_rec.cb_type_input.Text:=dm_.zq_schems.FieldByName('type_input').AsString;
      f_schems_rec.Tag:=2;
      f_schems_rec.showmodal();
    end;
end;

procedure TF_schems.B_g_addClick(Sender: TObject);
begin
  if dm_.zq_schems.RecordCount>0 then
  begin
    dm_.zq_gbu_oot.ParamByName('p_schema').AsInteger:=dm_.zq_schems.FieldByName('id_schema').AsInteger;
    dm_.zq_gbu_oot.Open();
    f_gbu_rec.e_num.text:='';
    f_gbu_rec.e_address.Text:='';
    f_gbu_rec.cb_oot.KeyValue:=0;
    f_gbu_rec.e_len.Text:='0';
    f_gbu_rec.e_squ.Text:='0';
    f_gbu_rec.Tag:=1;
    f_gbu_rec.showmodal();
  end;
end;

procedure TF_schems.B_g_delClick(Sender: TObject);
begin
  if dm_.zq_gbu.RecordCount>0 then
  if MessageDlg('Удалить запись ГБУ',mtInformation,[mbOK]+[mbCancel],0)=1 then
    begin
      dm_.zq_TMP.SQL.Text:='delete from schems_gbu where id_gbu='+dm_.zq_gbu.FieldByName('id_gbu').AsString;
      dm_.zq_gbu.DisableControls();
      dm_.zq_gbu.Prior();
      dm_.zq_TMP.ExecSQL();
      dm_.zq_TMP.SQL.Clear();
      dm_.zq_gbu.Refresh();
      dm_.zq_gbu.EnableControls();
    end;
end;

procedure TF_schems.B_g_editClick(Sender: TObject);
begin
  if dm_.zq_gbu.RecordCount>0 then
    begin
      dm_.zq_gbu_oot.ParamByName('p_schema').AsInteger:=dm_.zq_schems.FieldByName('id_schema').AsInteger;
      dm_.zq_gbu_oot.Open();
      f_gbu_rec.e_num.text:=dm_.zq_gbu.FieldByName('gbu_name').AsString;
      f_gbu_rec.e_address.Text:=dm_.zq_gbu.FieldByName('address_point').AsString;;
      f_gbu_rec.cb_oot.KeyValue:=dm_.zq_gbu.FieldByName('id_oot_a').AsString;;
      f_gbu_rec.e_len.Text:=dm_.zq_gbu.FieldByName('len').AsString;;
      f_gbu_rec.e_squ.Text:=dm_.zq_gbu.FieldByName('squ').AsString;;
      f_gbu_rec.Tag:=2;
      f_gbu_rec.showmodal();
    end;
end;

procedure TF_schems.B_unlinkClick(Sender: TObject);
begin
  if dm_.zq_schems_oot.RecordCount>0 then
  if MessageDlg('Убрать связь',mtInformation,[mbOK]+[mbCancel],0)=1 then
    begin
      dm_.zq_TMP.SQL.Text:='update oot set id_schema_a=null where id_oot='+dm_.zq_schems_oot.FieldByName('id_oot').AsString;
      dm_.zq_schems_oot.DisableControls();
      dm_.zq_schems_oot.Prior();
      dm_.zq_TMP.ExecSQL();
      dm_.zq_TMP.SQL.Clear();
      dm_.zq_schems_oot.Refresh();
      dm_.zq_schems_oot.EnableControls();
    end;
end;

procedure TF_schems.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if dm_.zq_schems.FieldByName('state').AsInteger=1 then
    f_schems.DBGridEh1.Canvas.Brush.Color:=$5DA130;
  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TF_schems.DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if dm_.zq_schems_oot.FieldByName('job_state').AsInteger=1 then
    f_schems.DBGridEh2.Canvas.Brush.Color:=$5DA130;
  DBGridEh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TF_schems.DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if dm_.zq_gbu.FieldByName('gbu_state').AsInteger=2 then
    f_schems.DBGridEh3.Canvas.Brush.Color:=$5DA130;
  DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TF_schems.B_delClick(Sender: TObject);
begin
  if dm_.zq_schems.RecordCount>0 then
  if MessageDlg('Удалить запись',mtInformation,[mbOK]+[mbCancel],0)=1 then
    begin
      dm_.zq_TMP.SQL.Text:='update oot set id_schema_a=null where id_schema_a='+dm_.zq_schems.FieldByName('id_schema').AsString;
      dm_.zq_TMP.ExecSQL();
      dm_.zq_TMP.SQL.Text:='delete from schems where id_schema='+dm_.zq_schems.FieldByName('id_schema').AsString;
      dm_.zq_schems.DisableControls();
      dm_.zq_schems.Prior();
      dm_.zq_TMP.ExecSQL();
      dm_.zq_TMP.SQL.Clear();
      dm_.zq_schems.Refresh();
      dm_.zq_schems.EnableControls();
    end;
end;

procedure TF_schems.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm_.zq_schems.Close();
  dm_.zq_schems_oot.Close();
end;

procedure TF_schems.FormShow(Sender: TObject);
begin
  dm_.zq_schems.Open();
end;

end.
