library bs_shedv;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  Dialogs,
  DM_dll in 'DM_dll.pas' {DM_: TDataModule},
  exp_xls in 'exp_xls.pas';

{$R *.res}
procedure mM;stdcall;
begin
  showmessage('ss');
end;

function l1_go:boolean;stdcall;
begin
  dm_:=tdm_.Create(nil);
  DM_.zq_l1_up1.ExecSQL();
  dm_.Free();
  result:=true;
end;

function l2_go(p1,p2:string;path_filename:string):boolean; stdcall;
begin
  dm_:=tdm_.Create(nil);
  dm_.zq_l2_req1.ParamByName('p_district').AsString:=p1;
  dm_.zq_l2_req1.ParamByName('p_t').Value:=p2;
  dm_.zq_l2_req1.Open();
  create_xls_rep_001(dm_.zq_l2_req1,path_filename);
  dm_.zq_l2_req1.Close();
  dm_.Free();
  result:=true;
end;

exports l1_go;
exports l2_go;
exports mM;



begin
end.
