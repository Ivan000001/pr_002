unit MF_bs_export;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TMF_bs_export_ = class(TForm)
    B_exp_001: TBitBtn;
    procedure B_exp_001Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MF_bs_export_: TMF_bs_export_;

implementation

{$R *.dfm}

function l2_go(p1,p2:string;path_filename:string):boolean;stdcall; external 'bs_shedv.dll';

procedure TMF_bs_export_.B_exp_001Click(Sender: TObject);
begin
  if l2_go('1','1,2','c:\3\exp_all_���_001.xls') then showmessage('������ ���');
  if l2_go('2','1,2','c:\3\exp_all_���_001.xls') then showmessage('������ ���');
end;

end.
