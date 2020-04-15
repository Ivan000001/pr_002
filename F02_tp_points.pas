unit F02_tp_points;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, StdCtrls, Buttons,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TF_tp_points = class(TForm)
    DBGridEh1: TDBGridEh;
    b_add: TBitBtn;
    B_edit: TBitBtn;
    B_del: TBitBtn;
    procedure B_delClick(Sender: TObject);
    procedure B_editClick(Sender: TObject);
    procedure b_addClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_tp_points: TF_tp_points;

implementation

{$R *.dfm}
uses dm, F02_tp_points_rec;
procedure TF_tp_points.b_addClick(Sender: TObject);
begin
  f_tp_points_rec.e_tp.text:='';
  f_tp_points_rec.e_address.Text:='';
  f_tp_points_rec.e_lat.Text:='';
  f_tp_points_rec.e_long.Text:='';
  f_tp_points_rec.Tag:=1;
  f_tp_points_rec.ShowModal();
end;

procedure TF_tp_points.B_delClick(Sender: TObject);
begin
  if dm_.zq_tp_points.RecordCount>0 then
  if MessageDlg('Удалить запись',mtInformation,[mbOK]+[mbCancel],0)=1 then
    begin
      dm_.zq_TMP.SQL.Text:='delete from tp_point where id_tp_point='+dm_.zq_tp_points.FieldByName('id_tp_point').AsString;
      dm_.zq_tp_points.DisableControls();
      dm_.zq_tp_points.Prior();
      dm_.zq_TMP.ExecSQL();
      dm_.zq_TMP.SQL.Clear();
      dm_.zq_tp_points.Refresh();
      dm_.zq_tp_points.EnableControls();
    end;
end;

procedure TF_tp_points.B_editClick(Sender: TObject);
begin
  if dm_.zq_tp_points.RecordCount>0 then
    begin
      f_tp_points_rec.e_tp.text:=dm_.zq_tp_points.FieldByName('tp_name').AsString;
      f_tp_points_rec.e_address.Text:=dm_.zq_tp_points.FieldByName('address_point').AsString;
      f_tp_points_rec.e_lat.Text:=dm_.zq_tp_points.FieldByName('gps_lat').AsString;
      f_tp_points_rec.e_long.Text:=dm_.zq_tp_points.FieldByName('gps_long').AsString;
      f_tp_points_rec.Tag:=2;
      f_tp_points_rec.ShowModal();
    end;
end;

procedure TF_tp_points.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm_.zq_tp_points.Close();
end;

procedure TF_tp_points.FormShow(Sender: TObject);
begin
  dm_.zq_tp_points.Open();
end;

end.
