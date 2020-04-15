program bs_shedule;

uses
  Forms,
  MF_bs_shedule in 'MF_bs_shedule.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
