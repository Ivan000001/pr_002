unit DM;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZDataset, MemTableDataEh, MemTableEh, ZSqlUpdate;

type
  TDM_ = class(TDataModule)
    ZConnection1: TZConnection;
    zq_cb_districts: TZReadOnlyQuery;
    DS_cb_districts: TDataSource;
    DS_cb_gr_streets: TDataSource;
    DS_oot: TDataSource;
    zq_cb_gr_streets: TZReadOnlyQuery;
    zq_oot: TZReadOnlyQuery;
    zq_cb_exe: TZReadOnlyQuery;
    zq_cb_schema_check: TZReadOnlyQuery;
    zq_cb_ready: TZReadOnlyQuery;
    zq_oot_cb_districts: TZReadOnlyQuery;
    zq_oot_cb_gr_streets: TZReadOnlyQuery;
    DS_cb_exe: TDataSource;
    DS_cb_schema_check: TDataSource;
    DS_cb_ready: TDataSource;
    DS_oot_cb_districts: TDataSource;
    DS_oot_cb_gr_streets: TDataSource;
    zq_oot_cb_exe: TZReadOnlyQuery;
    DS_oot_cb_exe: TDataSource;
    zq_oot_cb_schems: TZReadOnlyQuery;
    zq_oot_cb_tu: TZReadOnlyQuery;
    zq_tp_points: TZReadOnlyQuery;
    DS_oot_cb_tu: TDataSource;
    DS_oot_cb_schems: TDataSource;
    DS_tp_points: TDataSource;
    zq_oot_rec_get: TZReadOnlyQuery;
    zq_TMP: TZReadOnlyQuery;
    zq_schems: TZReadOnlyQuery;
    zq_schems_oot: TZReadOnlyQuery;
    zq_cb_tp: TZReadOnlyQuery;
    DS_schems: TDataSource;
    DS_schems_oot: TDataSource;
    DS_cb_tp: TDataSource;
    zq_docs: TZReadOnlyQuery;
    DS_docs: TDataSource;
    zq_gbu: TZReadOnlyQuery;
    DS_gbu: TDataSource;
    zq_gbu_oot: TZReadOnlyQuery;
    DS_gbu_oot: TDataSource;
    zq_materials: TZReadOnlyQuery;
    DS_materials: TDataSource;
    zq_materials_doc: TZReadOnlyQuery;
    DS_materials_doc: TDataSource;
    zq_pid_docs: TZReadOnlyQuery;
    procedure DS_materialsDataChange(Sender: TObject; Field: TField);
    procedure DS_schemsDataChange(Sender: TObject; Field: TField);
    procedure DS_cb_districtsDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_: TDM_;

implementation

{$R *.dfm}

procedure TDM_.DS_cb_districtsDataChange(Sender: TObject; Field: TField);
begin
  zq_cb_gr_streets.Close();
  zq_cb_gr_streets.ParamByName('p_districts').AsInteger:=zq_cb_districts.FieldByName('id_district').AsInteger;
  zq_cb_gr_streets.Open();
end;

procedure TDM_.DS_materialsDataChange(Sender: TObject; Field: TField);
begin
  zq_materials_doc.Close();
  zq_materials_doc.ParamByName('p_id_material').AsInteger:=zq_materials.FieldByName('id_material').AsInteger;
  zq_materials_doc.Open();
end;

procedure TDM_.DS_schemsDataChange(Sender: TObject; Field: TField);
begin
  zq_schems_oot.Close();
  zq_schems_oot.ParamByName('p_schema').AsInteger:=zq_schems.FieldByName('id_schema').AsInteger;
  zq_schems_oot.Open();
  zq_gbu.Close();
  zq_gbu.ParamByName('p_schema').AsInteger:=zq_schems.FieldByName('id_schema').AsInteger;
  zq_gbu.Open();
end;

end.
