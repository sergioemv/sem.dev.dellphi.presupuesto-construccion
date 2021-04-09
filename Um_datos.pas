unit Um_datos;

interface

uses
  SysUtils, Classes, DB, DBTables, ActnList, ImgList,variants, Controls,dialogs;

type
  Tm_datos = class(TDataModule)
    Insumos: TTable;
    ds_insumos: TDataSource;
    Grupo_ins: TTable;
    ds_grup_ins: TDataSource;
    Grupo_insCod_grupoIns: TStringField;
    Grupo_insGrupo_ins: TStringField;
    accionesIns: TActionList;
    Imagenes: TImageList;
    Ac_filtrarIns: TAction;
    Ac_noFiltrarIns: TAction;
    InsumosCod_prod: TStringField;
    InsumosCod_grupoIns: TStringField;
    InsumosDescripcion: TStringField;
    InsumosUnidad: TStringField;
    InsumosPrecio: TCurrencyField;
    InsumosClasif: TStringField;
    InsumosFecha: TDateField;
    ac_gruposins: TAction;
    item_cab: TTable;
    item_cabCod_item: TStringField;
    item_cabDescripcion: TStringField;
    item_cabUnidad: TStringField;
    item_cabImprevistos: TFloatField;
    item_cabBenSoc: TFloatField;
    item_cabGasGen: TFloatField;
    item_cabHerrmenores: TFloatField;
    item_cabUtilidad: TFloatField;
    ds_cab_item: TDataSource;
    item_det: TTable;
    ds_det_item: TDataSource;
    item_detCod_item: TStringField;
    item_detCod_gr_ins: TStringField;
    item_detCod_ins: TStringField;
    item_detRendimiento: TFloatField;
    item_detDescripcionGr: TStringField;
    item_detDescripcionIns: TStringField;
    item_detprecioU: TCurrencyField;
    item_detSubtotal: TCurrencyField;
    ac_actinsumos: TAction;
    C_totalItem: TQuery;
    item_detGasGen: TCurrencyField;
    item_detUtilidad: TCurrencyField;
    item_detBenSoc: TCurrencyField;
    item_detImprevistos: TCurrencyField;
    item_detHerrMenores: TCurrencyField;
    item_detTotalMat: TCurrencyField;
    item_detTotalEquip: TCurrencyField;
    item_detTotalMano: TCurrencyField;
    item_detTotalManoHerr: TCurrencyField;
    item_detTotalTotal: TCurrencyField;
    item_detTotalInd: TCurrencyField;
    C_totalItemSub: TCurrencyField;
    Insumos1: TTable;
    Insumos1Cod_prod: TStringField;
    Insumos1Cod_grupoIns: TStringField;
    Insumos1Descripcion: TStringField;
    Insumos1Unidad: TStringField;
    Insumos1Precio: TCurrencyField;
    Insumos1Clasif: TStringField;
    Insumos1Fecha: TDateField;
    ac_impitem: TAction;
    item_detTotalDirecto: TCurrencyField;
    item_cab1: TTable;
    item_cab1Cod_item: TStringField;
    item_cab1Descripcion: TStringField;
    item_cab1Unidad: TStringField;
    item_cab1Imprevistos: TFloatField;
    item_cab1BenSoc: TFloatField;
    item_cab1GasGen: TFloatField;
    item_cab1Herrmenores: TFloatField;
    item_cab1Utilidad: TFloatField;
    Pres_cab: TTable;
    Pres_cabCod_presupuesto: TStringField;
    Pres_cabEmpresa: TStringField;
    Pres_cabCliente: TStringField;
    Pres_cabObre: TStringField;
    Pres_cabUbicacion: TStringField;
    Pres_cabFecha: TDateField;
    Pres_cabObservaciones: TStringField;
    pres_det: TTable;
    pres_detCod_presupuesto: TStringField;
    pres_detCod_item: TStringField;
    pres_detCantidad: TFloatField;
    ds_pres_cab: TDataSource;
    ds_pres_det: TDataSource;
    pres_detItemNom: TStringField;
    pres_detItemDirecto: TCurrencyField;
    pres_detItemdirindir: TCurrencyField;
    pres_detSubtotal: TCurrencyField;
    pres_detSubtotal2: TCurrencyField;
    pres_detTotaldirecto: TCurrencyField;
    pres_detTotalTotalTotal: TCurrencyField;
    Pres_cab1: TTable;
    Pres_cab1Cod_presupuesto: TStringField;
    Pres_cab1Empresa: TStringField;
    Pres_cab1Cliente: TStringField;
    Pres_cab1Obre: TStringField;
    Pres_cab1Ubicacion: TStringField;
    Pres_cab1Fecha: TDateField;
    Pres_cab1Observaciones: TStringField;
    Ac_item: TAction;
    Ac_imppre: TAction;
    item_det1: TTable;
    item_det1Cod_item: TStringField;
    item_det1Cod_gr_ins: TStringField;
    item_det1Cod_ins: TStringField;
    item_det1Rendimiento: TFloatField;
    item_det1DescripcionGr: TStringField;
    item_det1DescripcionIns: TStringField;
    item_det1precioU: TCurrencyField;
    item_det1Subtotal: TCurrencyField;
    item_det1GasGen: TCurrencyField;
    item_det1Utilidad: TCurrencyField;
    item_det1BenSoc: TCurrencyField;
    item_det1Imprevistos: TCurrencyField;
    item_det1HerrMenores: TCurrencyField;
    item_det1TotalMat: TCurrencyField;
    item_det1TotalEquip: TCurrencyField;
    item_det1TotalMano: TCurrencyField;
    item_det1TotalManoHerr: TCurrencyField;
    item_det1TotalTotal: TCurrencyField;
    item_det1TotalInd: TCurrencyField;
    item_det1TotalDirecto: TCurrencyField;
    pres_det1: TTable;
    pres_det1Cod_presupuesto: TStringField;
    pres_det1Cod_item: TStringField;
    pres_det1Cantidad: TFloatField;
    pres_det1ItemDirecto: TCurrencyField;
    pres_det1Itemdirindir: TCurrencyField;
    pres_det1Subtotal: TCurrencyField;
    pres_det1Subtotal2: TCurrencyField;
    tipo_cam: TTable;
    tipo_camTipo_cambio: TFloatField;
    ds_tipo_cam: TDataSource;
    item_detUnidad: TStringField;
    pres_detUnidad: TStringField;
    procedure Ac_filtrarInsExecute(Sender: TObject);
    procedure InsumosBeforePost(DataSet: TDataSet);
    procedure InsumosCod_prodSetText(Sender: TField; const Text: String);
    procedure Ac_noFiltrarInsExecute(Sender: TObject);
    procedure ac_gruposinsExecute(Sender: TObject);
    procedure item_cabUtilidadSetText(Sender: TField; const Text: String);
    procedure item_detCalcFields(DataSet: TDataSet);
    procedure ac_actinsumosExecute(Sender: TObject);
    procedure InsumosAfterPost(DataSet: TDataSet);
    procedure ds_det_itemStateChange(Sender: TObject);
    procedure ac_impitemExecute(Sender: TObject);
    procedure item_cabCod_itemChange(Sender: TField);
    procedure item_cabNewRecord(DataSet: TDataSet);
    procedure item_cabUtilidadChange(Sender: TField);
    procedure item_cabBeforeDelete(DataSet: TDataSet);
    procedure pres_detCalcFields(DataSet: TDataSet);
    procedure ds_pres_cabDataChange(Sender: TObject; Field: TField);
    procedure ds_pres_cabUpdateData(Sender: TObject);
    procedure Pres_cabNewRecord(DataSet: TDataSet);
    procedure Ac_itemExecute(Sender: TObject);
    procedure Ac_imppreExecute(Sender: TObject);
    procedure ds_pres_detStateChange(Sender: TObject);
    procedure item_det1CalcFields(DataSet: TDataSet);
    procedure pres_det1CalcFields(DataSet: TDataSet);
    procedure InsumosMonedaValidate(Sender: TField);
    procedure ac_tipocambioExecute(Sender: TObject);
  private
    { Private declarations }

  public
   fcambiado:boolean;
    { Public declarations }
  end;

var
  m_datos: Tm_datos;

implementation

uses Uf_gruposins, Uf_insumos, Urep_item, Uf_presupuesto, Uf_item,
  Uf_tiporep, Urep_resumenpas, Uf_tipocam;

{$R *.dfm}

procedure Tm_datos.Ac_filtrarInsExecute(Sender: TObject);
var
        criterio:string;
begin
      criterio:=trim(inputbox('Criterio de seleccion','Ingrese el criterio',''))+'*';
      if length(criterio)> 0 then
      try
                insumos.Close;
                insumos.Filter :='descripcion='+uppercase(quotedstr(criterio));
                insumos.Filtered := true;
                insumos.Open;
                if insumos.RecordCount = 0 then
                begin
                        insumos.Close;
                        insumos.Filtered := false;
                        insumos.Open;
                end;
      except
                showmessage('Filtro erroneo');
                insumos.Filtered := false;
                insumos.Open;
      end;
end;

procedure Tm_datos.InsumosBeforePost(DataSet: TDataSet);
begin
        if (copy(insumosCod_prod.Value,1,2)<>copy(insumosDescripcion.Value,1,2)) then
        begin
             raise ERangeError.CreateFmt('El codigo difiere de la descripcion,'+chr(13)+
                               ' las primeras dos letras deben coincidir, VERIFIQUE!',[]);

        end;

end;

procedure Tm_datos.InsumosCod_prodSetText(Sender: TField;
  const Text: String);
begin
      sender.AsString := uppercase(text);
end;

procedure Tm_datos.Ac_noFiltrarInsExecute(Sender: TObject);
begin
        insumos.Filtered := false;
end;

procedure Tm_datos.ac_gruposinsExecute(Sender: TObject);
begin
     f_grinsumos.showmodal;
end;

procedure Tm_datos.item_cabUtilidadSetText(Sender: TField;
  const Text: String);
begin
       if (strtofloat(text) <0) or (strtofloat(text)>100) then
           sender.AsString:='0'
       else
           sender.AsString:=text;
end;

procedure Tm_datos.item_detCalcFields(DataSet: TDataSet);
begin
     item_detSubtotal.Value  := item_detRendimiento.Value * item_detPrecioU.Value;
     C_totalitem.Close;
     C_totalitem.ParamByName('Pitem').Value:=trim(item_detCod_Item.Value);
     C_totalitem.ParamByName('Pgrupo').Value:='1';
     C_totalitem.Open;
     item_detTotalmat.Value := C_totalitemSub.Value;
     C_totalitem.Close;
     C_totalitem.ParamByName('Pitem').Value:=trim(item_detCod_Item.Value);
     C_totalitem.ParamByName('Pgrupo').Value:='2';
     C_totalitem.Open;
     item_detTotalmano.Value := C_totalitemSub.Value;
     C_totalitem.Close;
     C_totalitem.ParamByName('Pitem').Value:=trim(item_detCod_Item.Value);
     C_totalitem.ParamByName('Pgrupo').Value:='3';
     C_totalitem.Open;
     item_detTotalequip.Value := C_totalitemSub.Value;
     C_totalitem.Close;
     item_detHerrMenores.Value :=  item_detTotalmano.Value * item_cabHerrmenores.Value/100;
     item_detTotalManoHerr.Value  := item_detHerrMenores.Value + item_detTotalmano.Value;
     item_detGasGen.Value := ((item_cabGasGen.Value /100)*
                (item_detTotalManoHerr.Value+ item_detTotalmat.Value+item_detTotalequip.Value));
     item_detUtilidad.Value := ((item_cabUtilidad.Value /100)*
                (item_detTotalManoHerr.Value+ item_detTotalmat.Value+item_detTotalequip.Value));
     item_detImprevistos.Value := ((item_cabImprevistos.Value /100)*
                (item_detTotalManoHerr.Value+ item_detTotalmat.Value+item_detTotalequip.Value));
     item_detBenSoc.Value := ((item_cabBenSoc.Value /100)*
                (item_detTotalManoHerr.Value));
     item_detTotalInd.Value :=item_detBenSoc.Value+item_detImprevistos.Value+
                                item_detUtilidad.Value+item_detGasGen.Value;
     item_detTotalTotal.Value := item_detBenSoc.Value+item_detImprevistos.Value
                                +item_detUtilidad.Value+item_detGasGen.Value+
                                item_detTotalManoHerr.Value+item_detTotalequip.Value
                                +item_detTotalmat.Value;
     item_detTotalDirecto.Value := item_detTotalTotal.Value - item_detTotalInd.Value;
end;

procedure Tm_datos.ac_actinsumosExecute(Sender: TObject);
begin
      f_insumos.showmodal;
      item_det.Refresh;
      pres_det.Refresh;
end;

procedure Tm_datos.InsumosAfterPost(DataSet: TDataSet);
begin
     item_det.Refresh ;

end;

procedure Tm_datos.ds_det_itemStateChange(Sender: TObject);
begin
   if item_det.state <> dsbrowse then
   begin
      insumos1.MasterSource :=  insumos.MasterSource;
      insumos1.MasterFields :=  insumos.MasterFields;
   end
   else
       insumos1.MasterSource:= nil

end;

procedure Tm_datos.ac_impitemExecute(Sender: TObject);
begin
     rep_item.item_det.Open;
     rep_item.preview;
     rep_item.item_det.Close;
end;

procedure Tm_datos.item_cabCod_itemChange(Sender: TField);
begin
     if item_cab.State <> dsinsert then
        if messagedlg('Si cambia el codigo se perderan todos los cambios, continuar?',
                        mtwarning,[mbno,mbyes],0) = mrno then
        begin
                   item_cab.Cancel;
                   sysutils.Abort;
        end;
end;

procedure Tm_datos.item_cabNewRecord(DataSet: TDataSet);
var
        i:integer;
begin
        item_cab1.Open;
        item_cab1.Last ;
        i:= item_cab1Cod_item.AsInteger;
        i:=i+1;
        item_cabCOd_item.asinteger := i;
        while  length(trim(item_cabCOd_item.asstring))<6 do
               item_cabCOd_item.asstring:='0'+item_cabCOd_item.asstring;
        item_cab1.Close;

end;

procedure Tm_datos.item_cabUtilidadChange(Sender: TField);
begin
     item_det.First;
end;

procedure Tm_datos.item_cabBeforeDelete(DataSet: TDataSet);
begin
      while  item_DET.locate('cod_item',item_cabcod_item.value,[locaseinsensitive]) do
      item_det.Delete
end;

procedure Tm_datos.pres_detCalcFields(DataSet: TDataSet);
var

     total:double;
     total2:double;
begin
     pres_det1.open;
     pres_detSubtotal.Text := floattostr(pres_detcantidad.Value * pres_detitemdirecto.Value );
     pres_detSubtotal2.Text := floattostr(pres_detcantidad.Value * pres_detitemdirindir.Value );          pres_det1.First;
     total:=0;
     total2:=0;
     if pres_det.State <> dsinsert then
     begin
     pres_det1.first;
      while not pres_det1.Eof do
        begin
          total:=total+pres_det1Subtotal.Value;
          total2:=total2+pres_det1Subtotal2.Value;
          pres_det1.Next;
        end;
      pres_detTotaldirecto.text:=floattostr(total);
      pres_detTotalTotalTotal.text:=floattostr(total2);
      pres_det1.close;
     end;
end;

procedure Tm_datos.ds_pres_cabDataChange(Sender: TObject; Field: TField);
begin
    if not Fcambiado then
    try
        Fcambiado:=true;
        f_presupuesto.fecha1.datetime:=pres_cabfecha.value;
    finally
        Fcambiado:=false;
    end;
end;

procedure Tm_datos.ds_pres_cabUpdateData(Sender: TObject);
begin
     pres_cabfecha.value:=f_presupuesto.fecha1.datetime;
end;

procedure Tm_datos.Pres_cabNewRecord(DataSet: TDataSet);
var
        i:integer;
begin
        pres_cab1.Open ;
        if not pres_cab1.IsEmpty then
        begin
        pres_cab1.Last ;
        i:= pres_cab1Cod_presupuesto.AsInteger;
        i:=i+1;
        pres_cabCOd_presupuesto.asinteger := i;
        while  length(trim(pres_cabCOd_presupuesto.asstring))<10 do
               pres_cabCOd_presupuesto.asstring:='0'+pres_cabCOd_presupuesto.asstring;
        end
        else
        pres_cab1.close;
end;

procedure Tm_datos.Ac_itemExecute(Sender: TObject);
begin
      f_item.showmodal;
      pres_det.Refresh;
end;

procedure Tm_datos.Ac_imppreExecute(Sender: TObject);
begin
    f_tiporep.showmodal;
    if f_tiporep.radiogroup1.itemindex=0 then
    begin
        pres_det.First;
        while not pres_det.eof do
        begin
             item_cab.Locate('cod_item',pres_detCod_item.Value,[locaseinsensitive]);
             item_det.First;
             rep_item.PrINT;
             pres_det.next;
        end;
    end
    else
      rep_resumen.preview;
end;

procedure Tm_datos.ds_pres_detStateChange(Sender: TObject);
begin
  if pres_det.state = dsinsert then
   begin
      item_det1.MasterSource :=  item_det.MasterSource;
      item_det1.MasterFields :=  item_det.MasterFields;
   end
   else
       item_det1.MasterSource:= nil

end;

procedure Tm_datos.item_det1CalcFields(DataSet: TDataSet);


begin
     item_det1Subtotal.Value  := item_det1Rendimiento.Value * item_det1PrecioU.Value;
     C_totalitem.Close;
     C_totalitem.ParamByName('Pitem').Value:=trim(item_det1Cod_Item.Value);
     C_totalitem.ParamByName('Pgrupo').Value:='1';
     C_totalitem.Open;
     item_det1Totalmat.Value := C_totalitemSub.Value;
     C_totalitem.Close;
     C_totalitem.ParamByName('Pitem').Value:=trim(item_det1Cod_Item.Value);
     C_totalitem.ParamByName('Pgrupo').Value:='2';
     C_totalitem.Open;
     item_det1Totalmano.Value := C_totalitemSub.Value;
     C_totalitem.Close;
     C_totalitem.ParamByName('Pitem').Value:=trim(item_det1Cod_Item.Value);
     C_totalitem.ParamByName('Pgrupo').Value:='3';
     C_totalitem.Open;
     item_det1Totalequip.Value := C_totalitemSub.Value;
     C_totalitem.Close;
     item_det1Subtotal.Value  := item_det1Rendimiento.Value * item_det1PrecioU.Value;
     item_det1HerrMenores.Value :=  item_det1Totalmano.Value * item_cabHerrmenores.Value/100;
     item_det1TotalManoHerr.Value  := item_det1HerrMenores.Value + item_det1Totalmano.Value;
     item_det1GasGen.Value := ((item_cabGasGen.Value /100)*
                (item_det1TotalManoHerr.Value+ item_det1Totalmat.Value+item_det1Totalequip.Value));
     item_det1Utilidad.Value := ((item_cabUtilidad.Value /100)*
                (item_det1TotalManoHerr.Value+ item_det1Totalmat.Value+item_det1Totalequip.Value));
     item_det1Imprevistos.Value := ((item_cabImprevistos.Value /100)*
                (item_det1TotalManoHerr.Value+ item_det1Totalmat.Value+item_det1Totalequip.Value));
     item_det1BenSoc.Value := ((item_cabBenSoc.Value /100)*
                (item_det1TotalManoHerr.Value));
     item_det1TotalInd.Value :=item_det1BenSoc.Value+item_det1Imprevistos.Value+
                                item_det1Utilidad.Value+item_det1GasGen.Value;
     item_det1TotalTotal.Value := item_det1BenSoc.Value+item_det1Imprevistos.Value
                                +item_det1Utilidad.Value+item_det1GasGen.Value+
                                item_det1TotalManoHerr.Value+item_det1Totalequip.Value
                                +item_det1Totalmat.Value;
     item_det1TotalDirecto.Value := item_det1TotalTotal.Value - item_det1TotalInd.Value;
end;

procedure Tm_datos.pres_det1CalcFields(DataSet: TDataSet);
begin
     pres_det1Subtotal.Text := floattostr(pres_det1cantidad.Value * pres_det1itemdirecto.Value );
     pres_det1Subtotal2.Text := floattostr(pres_det1cantidad.Value * pres_det1itemdirindir.Value );
end;

procedure Tm_datos.InsumosMonedaValidate(Sender: TField);
begin
     if (trim(sender.Text) <> 'D') and (trim(sender.Text) <> 'B') then
     begin
         raise econverterror.Create('Debe introducir D (dolares) o B (bolivianos)');
     end;
end;

procedure Tm_datos.ac_tipocambioExecute(Sender: TObject);
begin
      f_tipo_cam.showmodal;
end;

end.
