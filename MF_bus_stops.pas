unit MF_bus_stops;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TMainForm = class(TForm)
    B_bus_list: TBitBtn;
    B_tp_point: TBitBtn;
    B_schema: TBitBtn;
    B_docs: TBitBtn;
    B_materials: TBitBtn;
    procedure B_materialsClick(Sender: TObject);
    procedure B_docsClick(Sender: TObject);
    procedure B_schemaClick(Sender: TObject);
    procedure B_tp_pointClick(Sender: TObject);
    procedure B_bus_listClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses F01_bus_list, F02_tp_points, F03_schems, F04_docs, F06_materials,
  F05_pid_list;

{$R *.dfm}

procedure TMainForm.B_bus_listClick(Sender: TObject);
begin
  f_bus_list.show();
end;

procedure TMainForm.B_docsClick(Sender: TObject);
begin
  f_docs.show();
end;

procedure TMainForm.B_materialsClick(Sender: TObject);
begin
  f_materials.show();
end;

procedure TMainForm.B_schemaClick(Sender: TObject);
begin
  f_schems.show();
end;

procedure TMainForm.B_tp_pointClick(Sender: TObject);
begin
  f_tp_points.show();
end;

end.
