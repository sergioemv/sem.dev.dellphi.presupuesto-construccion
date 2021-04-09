unit Urep_item;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables, QRExport;

type
  TRep_item = class(TQuickRep)
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    GR_mat: TQRGroup;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRCSVFilter1: TQRCSVFilter;
    item_det: TTable;
    item_detCod_item: TStringField;
    item_detCod_gr_ins: TStringField;
    item_detCod_ins: TStringField;
    item_detRendimiento: TFloatField;
    item_detDescripcionGr: TStringField;
    item_detDescripcionIns: TStringField;
    item_detprecioU: TCurrencyField;
    item_detSubtotal: TCurrencyField;
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
    item_detTotalDirecto: TCurrencyField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    SummaryBand1: TQRBand;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText16: TQRDBText;
    procedure item_detCalcFields(DataSet: TDataSet);
    procedure QRLabel1Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  Rep_item: TRep_item;

implementation
uses
        um_datos;

{$R *.DFM}

procedure TRep_item.item_detCalcFields(DataSet: TDataSet);
begin
          item_detSubtotal.Value  := item_detRendimiento.Value * item_detPrecioU.Value;
     m_datos.C_totalitem.Close;
     m_datos.C_totalitem.ParamByName('Pitem').Value:=trim(item_detCod_Item.Value);
     m_datos.C_totalitem.ParamByName('Pgrupo').Value:='1';
     m_datos.C_totalitem.Open;
     item_detTotalmat.Value := m_datos.C_totalitemSub.Value;
     m_datos.C_totalitem.Close;
     m_datos.C_totalitem.ParamByName('Pitem').Value:=trim(item_detCod_Item.Value);
     m_datos.C_totalitem.ParamByName('Pgrupo').Value:='2';
     m_datos.C_totalitem.Open;
     item_detTotalmano.Value := m_datos.C_totalitemSub.Value;
     m_datos.C_totalitem.Close;
     m_datos.C_totalitem.ParamByName('Pitem').Value:=trim(item_detCod_Item.Value);
     m_datos.C_totalitem.ParamByName('Pgrupo').Value:='3';
     m_datos.C_totalitem.Open;
     item_detTotalequip.Value := m_datos.C_totalitemSub.Value;
     m_datos.C_totalitem.Close;
     item_detHerrMenores.Value :=  item_detTotalmano.Value * m_datos.item_cabHerrmenores.Value/100;
     item_detTotalManoHerr.Value  := item_detHerrMenores.Value + item_detTotalmano.Value;
     item_detGasGen.Value := ((m_datos.item_cabGasGen.Value /100)*
                (item_detTotalManoHerr.Value+ item_detTotalmat.Value+item_detTotalequip.Value));
     item_detUtilidad.Value := ((m_datos.item_cabUtilidad.Value /100)*
                (item_detTotalManoHerr.Value+ item_detTotalmat.Value+item_detTotalequip.Value));
     item_detImprevistos.Value := ((m_datos.item_cabImprevistos.Value /100)*
                (item_detTotalManoHerr.Value+ item_detTotalmat.Value+item_detTotalequip.Value));
     item_detBenSoc.Value := ((m_datos.item_cabBenSoc.Value /100)*
                (item_detTotalManoHerr.Value));
     item_detTotalInd.Value :=item_detBenSoc.Value+item_detImprevistos.Value+
                                item_detUtilidad.Value+item_detGasGen.Value;
     item_detTotalTotal.Value := item_detBenSoc.Value+item_detImprevistos.Value
                                +item_detUtilidad.Value+item_detGasGen.Value+
                                item_detTotalManoHerr.Value+item_detTotalequip.Value
                                +item_detTotalmat.Value;
     item_detTotalDirecto.Value := item_detTotalTotal.Value - item_detTotalInd.Value;
end;

procedure TRep_item.QRLabel1Print(sender: TObject; var Value: String);
begin
  case m_datos.item_detCod_gr_ins.AsInteger of
        1 :begin
        //   QRLabel1.Left := 400;
           value:='Subtotal :  '+m_datos.item_detTotalMat.Text+'        ';
           end;
        2 :begin
      //     QRLabel1.Left := 0;
           value:='Herramientas Menores : '+m_datos.item_detHerrmenores.text+'             Subtotal : '+m_datos.item_detTotalManoHerr.text+'        ';
           end;
        3 : begin
       //    QRLabel1.Left := 100;
           value:='Subtotal :  '+m_datos.item_detTotalEquip.Text+'        ';
           end;
  end;
end;
end.
