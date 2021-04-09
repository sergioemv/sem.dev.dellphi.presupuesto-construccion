unit Uf_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, Mask,db, Buttons;

type
  Tf_item = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Bevel1: TBevel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBNavigator2: TDBNavigator;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Bevel2: TBevel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Bevel3: TBevel;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBEdit20: TDBEdit;
    Label17: TLabel;
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_item: Tf_item;

implementation
{$R *.dfm}
uses
        um_datos;
procedure Tf_item.DBGrid1Enter(Sender: TObject);
begin
        with m_datos do
         if (item_cab.State = dsedit) or (item_cab.State = dsinsert) then
               item_cab.post;
         m_datos.item_det.edit;
end;

procedure Tf_item.DBGrid1EditButtonClick(Sender: TObject);
begin
       m_datos.ExecuteAction(m_datos.ac_actinsumos)
end;

end.
