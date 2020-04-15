program bs_export;

uses
  Forms,
  MF_bs_export in 'MF_bs_export.pas' {MF_bs_export_},
  DM_export in 'DM_export.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMF_bs_export_, MF_bs_export_);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
