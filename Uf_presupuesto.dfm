object f_presupuesto: Tf_presupuesto
  Left = 91
  Top = 15
  Width = 653
  Height = 587
  Caption = 'Presupuesto de Construcci'#243'n'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    645
    533)
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 16
    Top = 504
    Width = 91
    Height = 16
    Caption = 'Total Directo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 304
    Top = 504
    Width = 167
    Height = 16
    Caption = 'Total Directo + Indirecto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 120
    Top = 504
    Width = 137
    Height = 17
    DataField = 'Totaldirecto'
    DataSource = m_datos.ds_pres_det
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 480
    Top = 504
    Width = 137
    Height = 17
    DataField = 'TotalTotalTotal'
    DataSource = m_datos.ds_pres_det
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 184
    Width = 639
    Height = 273
    Anchors = [akLeft, akTop, akRight]
    DataSource = m_datos.ds_pres_det
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ItemNom'
        Title.Caption = 'Nombre de Item'
        Width = 150
        Visible = True
      end
      item
        ButtonStyle = cbsNone
        Expanded = False
        FieldName = 'Unidad'
        Width = 40
        Visible = True
      end
      item
        ButtonStyle = cbsNone
        Expanded = False
        FieldName = 'Cantidad'
        Visible = True
      end
      item
        ButtonStyle = cbsNone
        Expanded = False
        FieldName = 'ItemDirecto'
        Title.Caption = 'C/U directo'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Subtotal'
        Title.Caption = 'Subtotal directo'
        Width = 93
        Visible = True
      end
      item
        ButtonStyle = cbsNone
        Expanded = False
        FieldName = 'Itemdirindir'
        Title.Caption = 'C/U dir + ind'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Subtotal2'
        Title.Caption = 'Subtotal dir + ind'
        Width = 90
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 169
    Align = alTop
    TabOrder = 0
    DesignSize = (
      645
      169)
    object DBText1: TDBText
      Left = 440
      Top = 32
      Width = 113
      Height = 17
      DataField = 'Cod_presupuesto'
      DataSource = m_datos.ds_pres_cab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 66
      Top = 40
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Label2: TLabel
      Left = 84
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Obra'
    end
    object Label3: TLabel
      Left = 75
      Top = 64
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label4: TLabel
      Left = 59
      Top = 84
      Width = 48
      Height = 13
      Caption = 'Ubicacion'
    end
    object Label5: TLabel
      Left = 88
      Top = 112
      Width = 19
      Height = 13
      Caption = 'Obs'
    end
    object Label6: TLabel
      Left = 440
      Top = 64
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 440
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object DBEdit1: TDBEdit
      Left = 114
      Top = 12
      Width = 294
      Height = 21
      DataField = 'Obre'
      DataSource = m_datos.ds_pres_cab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 113
      Top = 60
      Width = 296
      Height = 21
      DataField = 'Cliente'
      DataSource = m_datos.ds_pres_cab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 114
      Top = 36
      Width = 295
      Height = 21
      DataField = 'Empresa'
      DataSource = m_datos.ds_pres_cab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 113
      Top = 83
      Width = 296
      Height = 21
      DataField = 'Ubicacion'
      DataSource = m_datos.ds_pres_cab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 113
      Top = 108
      Width = 296
      Height = 21
      DataField = 'Observaciones'
      DataSource = m_datos.ds_pres_cab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 136
      Width = 610
      Height = 25
      DataSource = m_datos.ds_pres_cab
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 6
    end
    object fecha1: TDateTimePicker
      Left = 440
      Top = 86
      Width = 113
      Height = 21
      CalAlignment = dtaLeft
      Date = 37412.5072296412
      Time = 37412.5072296412
      DateFormat = dfShort
      DateMode = dmComboBox
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkDate
      ParseInput = False
      ParentFont = False
      TabOrder = 5
      OnChange = fecha1Change
      OnExit = fecha1Exit
    end
  end
  object DBNavigator2: TDBNavigator
    Left = 16
    Top = 464
    Width = 600
    Height = 25
    DataSource = m_datos.ds_pres_det
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Images = m_datos.Imagenes
    Left = 568
    Top = 8
    object Items1: TMenuItem
      Action = m_datos.Ac_item
    end
    object Insumos1: TMenuItem
      Action = m_datos.ac_actinsumos
    end
    object Imprimir1: TMenuItem
      Action = m_datos.Ac_imppre
    end
  end
end
