program bus_stops;

uses
  Forms,
  MF_bus_stops in 'MF_bus_stops.pas' {MainForm},
  DM in 'DM.pas' {DM_: TDataModule},
  F01_bus_list in 'F01_bus_list.pas' {F_bus_list},
  F01_oot_rec in 'F01_oot_rec.pas' {F_oot_rec},
  F02_tp_points in 'F02_tp_points.pas' {F_tp_points},
  F02_tp_points_rec in 'F02_tp_points_rec.pas' {F_tp_points_rec},
  F03_schems in 'F03_schems.pas' {F_schems},
  F03_schems_rec in 'F03_schems_rec.pas' {F_schems_rec},
  F04_docs in 'F04_docs.pas' {f_docs},
  F04_docs_rec in 'F04_docs_rec.pas' {f_docs_rec},
  F03_gbu_rec in 'F03_gbu_rec.pas' {F_gbu_rec};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDM_, DM_);
  Application.CreateForm(TF_bus_list, F_bus_list);
  Application.CreateForm(TF_oot_rec, F_oot_rec);
  Application.CreateForm(TF_tp_points, F_tp_points);
  Application.CreateForm(TF_tp_points_rec, F_tp_points_rec);
  Application.CreateForm(TF_schems, F_schems);
  Application.CreateForm(TF_schems_rec, F_schems_rec);
  Application.CreateForm(Tf_docs, f_docs);
  Application.CreateForm(Tf_docs_rec, f_docs_rec);
  Application.CreateForm(TF_gbu_rec, F_gbu_rec);
  Application.Run;
end.
