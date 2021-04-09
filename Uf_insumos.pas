unit Uf_insumos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Buttons, ComCtrls, ToolWin,
  Menus,db;

type
  Tf_insumos = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    DBNavigator2: TDBNavigator;
    ToolButton1: TToolButton;
    DBText1: TDBText;
    ToolButton2: TToolButton;
    PopupMenu1: TPopupMenu;
    Filtrartabla1: TMenuItem;
    Nofiltlar1: TMenuItem;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_insumos: Tf_insumos;

implementation
 uses um_datos;
{$R *.DFM}

procedure Tf_insumos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if m_datos.Insumos.UpdatesPending then
     begin
        m_datos.Insumos.cancel;
        m_datos.Insumos1.cancel;
     end;
end;

procedure Tf_insumos.FormHide(Sender: TObject);
begin
        if m_datos.Insumos.UpdatesPending then
        begin
                m_datos.Insumos.cancel;
                m_datos.Insumos1.cancel;
        end;
end;

end.
