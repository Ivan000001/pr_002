unit MF_bs_shedule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

function l1_go:boolean;stdcall; external 'bs_shedv.dll';


procedure TForm3.Button1Click(Sender: TObject);
begin
  if l1_go then ;
end;

end.
