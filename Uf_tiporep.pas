unit Uf_tiporep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tf_tiporep = class(TForm)
    RadioGroup1: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_tiporep: Tf_tiporep;

implementation

{$R *.dfm}

procedure Tf_tiporep.FormShow(Sender: TObject);
begin
   radiogroup1.itemindex:= -1;
end;

procedure Tf_tiporep.RadioGroup1Click(Sender: TObject);
begin
      f_tiporep.Close;
end;

end.
