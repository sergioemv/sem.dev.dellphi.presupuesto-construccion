object f_item: Tf_item
  Left = 192
  Top = 98
  Width = 647
  Height = 562
  Caption = 'Presupuesto de construccion'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 145
    Width = 639
    Height = 8
    Cursor = crVSplit
    Align = alTop
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 153
    Width = 639
    Height = 204
    Align = alClient
    DataSource = m_datos.ds_det_item
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEditButtonClick = DBGrid1EditButtonClick
    OnEnter = DBGrid1Enter
    Columns = <
      item
        Expanded = False
        FieldName = 'DescripcionGr'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DescripcionIns'
        Width = 159
        Visible = True
      end
      item
        ButtonStyle = cbsNone
        Expanded = False
        FieldName = 'Unidad'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rendimiento'
        Width = 115
        Visible = True
      end
      item
        ButtonStyle = cbsNone
        Expanded = False
        FieldName = 'precioU'
        Visible = True
      end
      item
        ButtonStyle = cbsNone
        Expanded = False
        FieldName = 'Subtotal'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 639
    Height = 145
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Bevel1: TBevel
      Left = 496
      Top = 8
      Width = 17
      Height = 97
      Shape = bsLeftLine
    end
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 68
      Height = 13
      Caption = 'Codigo Item'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 29
      Top = 36
      Width = 68
      Height = 13
      Caption = 'Descripcion'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 296
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Unidad'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 34
      Top = 60
      Width = 65
      Height = 13
      Caption = 'Imprevistos'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 168
      Top = 60
      Width = 88
      Height = 13
      Caption = 'Beneficios soc.'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 338
      Top = 61
      Width = 99
      Height = 13
      Caption = 'Gastos generales'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 290
      Top = 89
      Width = 126
      Height = 13
      Caption = 'Herramientas menores'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 52
      Top = 88
      Width = 44
      Height = 13
      Caption = 'Utilidad'
      FocusControl = DBEdit8
    end
    object SpeedButton1: TSpeedButton
      Left = 512
      Top = 48
      Width = 97
      Height = 25
      Action = m_datos.ac_actinsumos
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
        FF000000000000FFFF0000FFFF0000FFFF0000000000FF00FF00FF00FF000000
        00000000000000000000FF00FF0000000000FFFF0000FFFF0000FFFF00000000
        000000000000000000007F7F7F007F7F7F007F7F7F0000000000000000000000
        FF000000FF000000FF00000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F
        7F007F7F7F007F7F7F007F7F7F0000000000FFFFFF0000000000000000000000
        FF000000FF000000FF000000FF00000000000000000000000000000000000000
        00000000000000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
        FF007F7F7F007F7F7F00FFFFFF007F7F7F007F7F7F00FFFFFF007F7F7F00FFFF
        FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
        FF007F7F7F007F7F7F00FFFFFF007F7F7F007F7F7F007F7F7F00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000000000000000
        0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
        0000FFFFFF0000000000FFFFFF000000000000000000FF00FF00000000000000
        00007F7F7F00000000007F7F7F00000000007F7F7F00000000007F7F7F000000
        00007F7F7F0000000000000000000000000000000000FF00FF007F7F7F000000
        00007F7F7F00000000007F7F7F00000000007F7F7F00000000007F7F7F000000
        00007F7F7F0000000000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF0000000000FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00
        FF0000000000FF00FF000000000000000000FF00FF00FF00FF00}
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 512
      Top = 74
      Width = 97
      Height = 25
      Action = m_datos.ac_impitem
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 115
      Top = 6
      Width = 82
      Height = 21
      Color = clScrollBar
      DataField = 'Cod_item'
      DataSource = m_datos.ds_cab_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 115
      Top = 32
      Width = 368
      Height = 21
      DataField = 'Descripcion'
      DataSource = m_datos.ds_cab_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 350
      Top = 6
      Width = 134
      Height = 21
      DataField = 'Unidad'
      DataSource = m_datos.ds_cab_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 115
      Top = 56
      Width = 46
      Height = 21
      DataField = 'Imprevistos'
      DataSource = m_datos.ds_cab_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 264
      Top = 56
      Width = 49
      Height = 21
      DataField = 'BenSoc'
      DataSource = m_datos.ds_cab_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 438
      Top = 56
      Width = 46
      Height = 21
      DataField = 'GasGen'
      DataSource = m_datos.ds_cab_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 429
      Top = 82
      Width = 57
      Height = 21
      DataField = 'Herrmenores'
      DataSource = m_datos.ds_cab_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 114
      Top = 83
      Width = 134
      Height = 21
      DataField = 'Utilidad'
      DataSource = m_datos.ds_cab_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBNavigator2: TDBNavigator
      Left = 24
      Top = 112
      Width = 567
      Height = 25
      DataSource = m_datos.ds_cab_item
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 8
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 357
    Width = 639
    Height = 25
    DataSource = m_datos.ds_det_item
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Align = alBottom
    Flat = True
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 382
    Width = 639
    Height = 146
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label9: TLabel
      Left = 8
      Top = 31
      Width = 101
      Height = 13
      Caption = 'Gastos Generales'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 16
      Top = 7
      Width = 100
      Height = 13
      Caption = 'Gastos Indirectos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 56
      Top = 53
      Width = 44
      Height = 13
      Caption = 'Utilidad'
      FocusControl = DBEdit10
    end
    object Label12: TLabel
      Left = 24
      Top = 71
      Width = 84
      Height = 13
      Caption = 'Beneficio Soc.'
      FocusControl = DBEdit11
    end
    object Label13: TLabel
      Left = 40
      Top = 89
      Width = 65
      Height = 13
      Caption = 'Imprevistos'
      FocusControl = DBEdit12
    end
    object Bevel2: TBevel
      Left = 216
      Top = -1
      Width = 18
      Height = 121
      Shape = bsRightLine
    end
    object Label14: TLabel
      Left = 248
      Top = 9
      Width = 81
      Height = 13
      Caption = 'Mano de Obra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 248
      Top = 72
      Width = 127
      Height = 13
      Caption = 'Herramientas Menores'
      FocusControl = DBEdit13
    end
    object Label16: TLabel
      Left = 248
      Top = 31
      Width = 132
      Height = 13
      Caption = 'Subtotal Mano de Obra'
      FocusControl = DBEdit14
    end
    object Bevel3: TBevel
      Left = 392
      Top = -2
      Width = 18
      Height = 121
      Shape = bsRightLine
    end
    object Label18: TLabel
      Left = 420
      Top = 6
      Width = 92
      Height = 13
      Caption = 'Total Materiales'
      FocusControl = DBEdit15
    end
    object Label19: TLabel
      Left = 420
      Top = 47
      Width = 79
      Height = 13
      Caption = 'Total Equipos'
      FocusControl = DBEdit16
    end
    object Label20: TLabel
      Left = 420
      Top = 27
      Width = 111
      Height = 13
      Caption = 'Total mano de obra'
      FocusControl = DBEdit17
    end
    object Label21: TLabel
      Left = 420
      Top = 67
      Width = 89
      Height = 13
      Caption = 'Total indirectos'
      FocusControl = DBEdit18
    end
    object Label22: TLabel
      Left = 421
      Top = 106
      Width = 30
      Height = 13
      Caption = 'Total'
      FocusControl = DBEdit19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 420
      Top = 88
      Width = 75
      Height = 13
      Caption = 'Total Directo'
      FocusControl = DBEdit19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit9: TDBEdit
      Left = 119
      Top = 27
      Width = 65
      Height = 21
      Color = clInactiveBorder
      DataField = 'GasGen'
      DataSource = m_datos.ds_det_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 119
      Top = 47
      Width = 65
      Height = 21
      Color = clInactiveBorder
      DataField = 'Utilidad'
      DataSource = m_datos.ds_det_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit11: TDBEdit
      Left = 119
      Top = 67
      Width = 65
      Height = 21
      Color = clInactiveBorder
      DataField = 'BenSoc'
      DataSource = m_datos.ds_det_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit12: TDBEdit
      Left = 119
      Top = 87
      Width = 65
      Height = 21
      Color = clInactiveBorder
      DataField = 'Imprevistos'
      DataSource = m_datos.ds_det_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit13: TDBEdit
      Left = 248
      Top = 87
      Width = 65
      Height = 21
      Color = clInactiveBorder
      DataField = 'HerrMenores'
      DataSource = m_datos.ds_det_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit14: TDBEdit
      Left = 248
      Top = 47
      Width = 65
      Height = 21
      Color = clInactiveBorder
      DataField = 'TotalMano'
      DataSource = m_datos.ds_det_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit15: TDBEdit
      Left = 536
      Top = 7
      Width = 73
      Height = 21
      Color = clInactiveBorder
      DataField = 'TotalMat'
      DataSource = m_datos.ds_det_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit16: TDBEdit
      Left = 536
      Top = 47
      Width = 73
      Height = 21
      Color = clInactiveBorder
      DataField = 'TotalEquip'
      DataSource = m_datos.ds_det_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit17: TDBEdit
      Left = 536
      Top = 27
      Width = 73
      Height = 21
      Color = clInactiveBorder
      DataField = 'TotalManoHerr'
      DataSource = m_datos.ds_det_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit18: TDBEdit
      Left = 536
      Top = 67
      Width = 73
      Height = 21
      Color = clInactiveBorder
      DataField = 'TotalInd'
      DataSource = m_datos.ds_det_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit19: TDBEdit
      Left = 536
      Top = 106
      Width = 72
      Height = 21
      Color = clInactiveBorder
      DataField = 'TotalTotal'
      DataSource = m_datos.ds_det_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit20: TDBEdit
      Left = 536
      Top = 86
      Width = 73
      Height = 21
      Color = clInactiveBorder
      DataField = 'TotalDirecto'
      DataSource = m_datos.ds_det_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
end
