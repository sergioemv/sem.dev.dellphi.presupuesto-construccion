object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 438
  Top = 302
  Height = 301
  Width = 420
  object Insumos: TTable
    IndexFieldNames = 'Cod_grupoIns'
    MasterFields = 'Cod_grupoIns'
    MasterSource = ds_grup_ins
    TableName = 'Insumo.DB'
    Left = 64
    Top = 24
    object InsumosCod_grupoIns: TStringField
      FieldName = 'Cod_grupoIns'
      Size = 10
    end
    object InsumosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object InsumosUnidad: TStringField
      FieldName = 'Unidad'
    end
    object InsumosPrecio: TCurrencyField
      FieldName = 'Precio'
    end
  end
  object ds_insumos: TDataSource
    DataSet = Insumos
    Left = 64
    Top = 80
  end
  object Grupo_ins: TTable
    TableName = 'Grupo_insumo.db'
    Left = 184
    Top = 16
    object Grupo_insCod_grupoIns: TStringField
      FieldName = 'Cod_grupoIns'
      Size = 10
    end
    object Grupo_insGrupo_ins: TStringField
      FieldName = 'Grupo_ins'
      Required = True
      Size = 50
    end
  end
  object ds_grup_ins: TDataSource
    DataSet = Grupo_ins
    Left = 176
    Top = 80
  end
end
