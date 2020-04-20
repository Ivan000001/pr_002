unit F01_bus_list;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, GridsEh,
  DBAxisGridsEh, DBGridEh, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, Buttons,
  DBCtrls, ComCtrls;

type
  TF_bus_list = class(TForm)
    DBGridEh2: TDBGridEh;
    cb_districts: TDBLookupComboboxEh;
    cb_gr_streets: TDBLookupComboboxEh;
    B_add: TBitBtn;
    B_del: TBitBtn;
    B_edit: TBitBtn;
    cb_exe: TDBLookupComboboxEh;
    cb_schema_check: TDBLookupComboboxEh;
    cb_ready: TDBLookupComboboxEh;
    B_f_apply: TButton;
    DBText1: TDBText;
    StatusBar1: TStatusBar;
    DBText2: TDBText;
    B_pid: TBitBtn;
    procedure B_pidClick(Sender: TObject);
    procedure B_delClick(Sender: TObject);
    procedure B_editClick(Sender: TObject);
    procedure B_addClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure B_f_applyClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_bus_list: TF_bus_list;

implementation

{$R *.dfm}
uses dm, F01_oot_rec, F05_pid_list, zdataset,db;

procedure TF_bus_list.B_addClick(Sender: TObject);
begin
  dm_.zq_oot_cb_districts.Open();
  dm_.zq_oot_cb_gr_streets.Open();
  dm_.zq_oot_cb_tu.Open();
  dm_.zq_oot_cb_schems.Open();
  dm_.zq_oot_cb_exe.Open();
  if cb_districts.KeyValue<>0 then f_oot_rec.cb_districts.KeyValue:=cb_districts.KeyValue;
  if cb_gr_streets.KeyValue<>0 then f_oot_rec.cb_gr_streets.KeyValue:=cb_gr_streets.KeyValue;
  f_oot_rec.E_nn_oot.Text:='';
  f_oot_rec.e_name.Text:='';
  f_oot_rec.cb_dist.ItemIndex:=-1;
  f_oot_rec.cb_tu.KeyValue:=0;
  f_oot_rec.e_lat.Text:='';
  f_oot_rec.e_long.Text:='';
  f_oot_rec.e_address.Text:='';
//  f_oot_rec.chb_agreed_res.Checked:=false;
  f_oot_rec.cb_schems.KeyValue:=0;
  f_oot_rec.cb_exe.KeyValue:=0;
  f_oot_rec.chb_ready.Checked:=false;
  f_oot_rec.e_p_output.Text:='1';
  f_oot_rec.cb_where_output.ItemIndex:=-1;
  f_oot_rec.e_trench.Text:='0';
  f_oot_rec.e_laythepipe.Text:='0';
  f_oot_rec.e_lay_cl.Text:='0';
  f_oot_rec.e_montage_al.Text:='0';
  f_oot_rec.e_count_vrsh.Text:='0';
  f_oot_rec.cb_type_oot.Text:='3.1';
  f_oot_rec.Tag:=1;
  f_oot_rec.showmodal();
end;

procedure TF_bus_list.B_delClick(Sender: TObject);
begin
  if dm_.zq_oot.RecordCount>0 then
  if MessageDlg('Удалить запись',mtInformation,[mbOK]+[mbCancel],0)=1 then
    begin
      dm_.zq_TMP.SQL.Text:='delete from oot where id_oot='+dm_.zq_oot.FieldByName('id_oot').AsString;
      dm_.zq_oot.DisableControls();
      dm_.zq_oot.Prior();
      dm_.zq_TMP.ExecSQL();
      dm_.zq_TMP.SQL.Clear();
      dm_.zq_oot.Refresh();
      dm_.zq_oot.EnableControls();
    end;
end;

procedure TF_bus_list.B_editClick(Sender: TObject);
begin
  if dm_.zq_oot.RecordCount>0 then
    begin
      dm_.zq_oot_rec_get.ParamByName('p_oot').AsInteger:=dm_.zq_oot.FieldByName('id_oot').AsInteger;
      dm_.zq_oot_rec_get.Open();
      dm_.zq_oot_rec_get.First();
      dm_.zq_oot_cb_districts.Open();
      dm_.zq_oot_cb_gr_streets.Open();
      dm_.zq_oot_cb_tu.Open();
      dm_.zq_oot_cb_schems.Open();
      dm_.zq_oot_cb_exe.Open();
      if dm_.zq_oot_rec_get.FieldByName('id_district').IsNull then f_oot_rec.cb_districts.KeyValue:=0
        else f_oot_rec.cb_districts.KeyValue:= dm_.zq_oot_rec_get.FieldByName('id_district').AsInteger;
      if dm_.zq_oot_rec_get.FieldByName('id_gr_street').IsNull then f_oot_rec.cb_gr_streets.KeyValue:=0
        else f_oot_rec.cb_gr_streets.KeyValue:= dm_.zq_oot_rec_get.FieldByName('id_gr_street').AsInteger;
      f_oot_rec.E_nn_oot.Text:=dm_.zq_oot_rec_get.FieldByName('nn_oot').AsString;
      f_oot_rec.e_name.Text:=dm_.zq_oot_rec_get.FieldByName('name_oot').AsString;
      f_oot_rec.cb_dist.Text:=dm_.zq_oot_rec_get.FieldByName('direction').AsString;
      if dm_.zq_oot_rec_get.FieldByName('id_doc_a').IsNull then f_oot_rec.cb_tu.KeyValue:=0
        else f_oot_rec.cb_tu.KeyValue:= dm_.zq_oot_rec_get.FieldByName('id_doc_a').AsInteger;
      f_oot_rec.e_lat.Text:=dm_.zq_oot_rec_get.FieldByName('gps_lat').AsString;
      f_oot_rec.e_long.Text:=dm_.zq_oot_rec_get.FieldByName('gps_long').AsString;
      f_oot_rec.e_address.Text:=dm_.zq_oot_rec_get.FieldByName('address').AsString;
      if dm_.zq_oot_rec_get.FieldByName('id_schema').IsNull then f_oot_rec.cb_schems.KeyValue:=0
        else f_oot_rec.cb_schems.KeyValue:= dm_.zq_oot_rec_get.FieldByName('id_schema').AsInteger;
      if dm_.zq_oot_rec_get.FieldByName('id_exe_a').IsNull then f_oot_rec.cb_exe.KeyValue:=0
        else f_oot_rec.cb_exe.KeyValue:= dm_.zq_oot_rec_get.FieldByName('id_exe_a').AsInteger;
      if (dm_.zq_oot_rec_get.FieldByName('job_state').IsNull)or (dm_.zq_oot_rec_get.FieldByName('job_state').AsInteger=0) then f_oot_rec.chb_ready.Checked:=false
        else f_oot_rec.chb_ready.Checked:=true;
      f_oot_rec.e_p_output.Text:=dm_.zq_oot_rec_get.FieldByName('p_output').AsString;
      f_oot_rec.cb_where_output.ItemIndex:=dm_.zq_oot_rec_get.FieldByName('where_output').AsInteger;
      f_oot_rec.e_trench.Text:=dm_.zq_oot_rec_get.FieldByName('trench').AsString;
      f_oot_rec.e_laythepipe.Text:=dm_.zq_oot_rec_get.FieldByName('laythepipe').AsString;
      f_oot_rec.e_lay_cl.Text:=dm_.zq_oot_rec_get.FieldByName('lay_cl').AsString;
      f_oot_rec.e_montage_al.Text:=dm_.zq_oot_rec_get.FieldByName('montage_al').AsString;
      f_oot_rec.e_count_vrsh.Text:=dm_.zq_oot_rec_get.FieldByName('count_vrsh').AsString;
      f_oot_rec.cb_type_oot.Text:=dm_.zq_oot_rec_get.FieldByName('type_oot').AsString;
      dm_.zq_oot_rec_get.Close();
      f_oot_rec.Tag:=2;
      f_oot_rec.showmodal();
    end;
end;

procedure TF_bus_list.B_f_applyClick(Sender: TObject);
begin
  dm_.zq_oot.Close();
  dm_.zq_oot.ParamByName('p_districts').AsInteger:=dm_.zq_cb_districts.FieldByName('id_district').AsInteger;
  dm_.zq_oot.ParamByName('p_gr_streets').AsInteger:=dm_.zq_cb_gr_streets.FieldByName('id_gr_street').AsInteger;
  dm_.zq_oot.ParamByName('p_exe').AsInteger:=dm_.zq_cb_exe.FieldByName('id_exe').AsInteger;
  dm_.zq_oot.ParamByName('p_schema_check').AsInteger:=dm_.zq_cb_schema_check.FieldByName('id_check').AsInteger;
  dm_.zq_oot.ParamByName('p_ready').AsInteger:=dm_.zq_cb_ready.FieldByName('id_check').AsInteger;
  dm_.zq_oot.Open();
end;

procedure TF_bus_list.B_pidClick(Sender: TObject);
var F: TF_pid_list;
  zq:TZReadOnlyQuery;
  ds:TDataSource;
begin
  if dm_.zq_oot.RecordCount>0 then
    begin
      f:=TF_pid_list.Create(self);
      f.label1.caption:=dm_.zq_oot.FieldByName('d_short_name').AsString;
      f.label2.caption:=dm_.zq_oot.FieldByName('name_oot').AsString;
      f.label3.caption:=dm_.zq_oot.FieldByName('direction').AsString;
      f.label4.caption:=dm_.zq_oot.FieldByName('address').AsString;
      f.l_id_oot.caption:=dm_.zq_oot.FieldByName('id_oot').AsString;
      zq:=TZReadOnlyQuery.Create(self);
      zq.Connection:=dm_.ZConnection1;
      zq.SQL.Text:=dm_.zq_pid_docs.SQL.Text;
      zq.ParamByName('p_id_oot').AsInteger:= dm_.zq_oot.FieldByName('id_oot').AsInteger;
      ds:=TDataSource.Create(self);
      ds.DataSet:=zq;
      f.DBGridEh1.DataSource:=ds;
      zq.Open();
      f.show();
    end;
end;

procedure TF_bus_list.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //if (gdFocused in State) then f_bus_list.DBGridEh2.Canvas.Brush.Color:=clHighlight;
  if dm_.zq_oot.FieldByName('job_state').AsInteger=1 then
    f_bus_list.DBGridEh2.Canvas.Brush.Color:=$5DA130;
  DBGridEh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TF_bus_list.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm_.zq_cb_districts.Close();
  dm_.zq_cb_gr_streets.Close();
  dm_.zq_cb_exe.Close();
  dm_.zq_cb_schema_check.Close();
  dm_.zq_cb_ready.Close();
  dm_.zq_oot.Close();
end;

procedure TF_bus_list.FormShow(Sender: TObject);
begin
  dm_.zq_cb_districts.Open();
  cb_districts.KeyValue:=0;
  cb_gr_streets.KeyValue:=0;
  dm_.zq_cb_exe.Open();
  cb_exe.KeyValue:=0;
  dm_.zq_cb_schema_check.Open();
  cb_schema_check.KeyValue:=0;
  dm_.zq_cb_ready.Open();
  cb_ready.KeyValue:=0;
  dm_.zq_oot.Open();
 // dm_.zq_gr_streets.Open();
  
end;

end.
