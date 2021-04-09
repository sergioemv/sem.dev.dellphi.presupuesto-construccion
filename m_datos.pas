unit m_datos;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDataModule1 = class(TDataModule)
    Insumos: TTable;
    ds_insumos: TDataSource;
    Grupo_ins: TTable;
    ds_grup_ins: TDataSource;
    InsumosCod_grupoIns: TStringField;
    InsumosDescripcion: TStringField;
    InsumosUnidad: TStringField;
    InsumosPrecio: TCurrencyField;
    Grupo_insCod_grupoIns: TStringField;
    Grupo_insGrupo_ins: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
