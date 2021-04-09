program presupuesto;

uses
  Forms,
  Uf_insumos in 'Uf_insumos.pas' {f_insumos},
  Um_datos in 'Um_datos.pas' {m_datos: TDataModule},
  Uf_gruposins in 'Uf_gruposins.pas' {f_grinsumos},
  Uf_item in 'Uf_item.pas' {f_item},
  Urep_item in 'Urep_item.pas' {Rep_item: TQuickRep},
  Uf_presupuesto in 'Uf_presupuesto.pas' {f_presupuesto},
  Uf_tiporep in 'Uf_tiporep.pas' {f_tiporep},
  Urep_resumenpas in 'Urep_resumenpas.pas' {Rep_resumen: TQuickRep};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Generador de Presupuestos';
  Application.CreateForm(Tf_presupuesto, f_presupuesto);
  Application.CreateForm(Tf_item, f_item);
  Application.CreateForm(Tf_insumos, f_insumos);
  Application.CreateForm(Tm_datos, m_datos);
  Application.CreateForm(Tf_grinsumos, f_grinsumos);
  Application.CreateForm(TRep_item, Rep_item);
  Application.CreateForm(Tf_tiporep, f_tiporep);
  Application.CreateForm(TRep_resumen, Rep_resumen);
  m_datos.Insumos.Active:=true;
  m_datos.Grupo_ins.Active:=true;
  m_datos.item_cab.Active:=true;
  m_datos.item_det.Active:=true;
  m_datos.pres_cab.Active:=true;
  m_datos.pres_det.Active:=true;

  application.Run;
  m_datos.tipo_cam.Active := false;
  m_datos.pres_cab.Active:=false;
  m_datos.pres_det.Active:=false;

  m_datos.item_cab.Active:=false;
  m_datos.item_det.Active:=false;
  m_datos.Insumos.Active:=false;
  m_datos.Grupo_ins.Active:=false;


  end.
