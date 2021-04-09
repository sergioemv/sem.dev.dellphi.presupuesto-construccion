unit Uf_presupuesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, Menus;

type
  Tf_presupuesto = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    fecha1: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    MainMenu1: TMainMenu;
    Items1: TMenuItem;
    Insumos1: TMenuItem;
    Imprimir1: TMenuItem;
    procedure fecha1Change(Sender: TObject);
    procedure fecha1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_presupuesto: Tf_presupuesto;

implementation
 uses
        um_datos;
{$R *.dfm}

procedure Tf_presupuesto.fecha1Change(Sender: TObject);
begin
     with m_datos do
      if not fcambiado then
      try
        fcambiado := true;
        ds_pres_cab.edit;
      finally
        fcambiado:=false;
      end;

end;

procedure Tf_presupuesto.fecha1Exit(Sender: TObject);
begin
   if m_datos.Pres_cab.UpdatesPending then
     m_datos.Pres_cab.UpdateRecord;
end;

end.
