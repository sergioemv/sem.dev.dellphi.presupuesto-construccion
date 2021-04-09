unit Uf_tipocam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls;

type
  Tf_tipo_cam = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_tipo_cam: Tf_tipo_cam;

implementation
uses
   um_datos;
{$R *.dfm}

procedure Tf_tipo_cam.BitBtn1Click(Sender: TObject);
begin
    if  m_datos.tipo_cam.UpdatesPending then
     m_datos.tipo_cam.Post
end;

end.
