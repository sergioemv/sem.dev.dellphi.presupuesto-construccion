object f_insumos: Tf_insumos
  Left = 294
  Top = 216
  BorderStyle = bsDialog
  Caption = 'Actualizacion de insumos'
  ClientHeight = 285
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnHide = FormHide
  DesignSize = (
    554
    285)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 549
    Height = 193
    Anchors = [akLeft, akTop, akRight]
    DataSource = m_datos.ds_insumos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Cod_prod'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Clasif'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descripcion'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Precio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 254
    Width = 540
    Height = 25
    DataSource = m_datos.ds_insumos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Anchors = [akLeft, akRight, akBottom]
    Flat = True
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 41
    Align = alTop
    TabOrder = 2
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 552
      Height = 40
      ButtonHeight = 36
      ButtonWidth = 74
      Caption = 'ToolBar1'
      Flat = True
      Images = m_datos.Imagenes
      ShowCaptions = True
      TabOrder = 0
      object ToolButton3: TToolButton
        Left = 0
        Top = 0
        Width = 49
        Caption = 'ToolButton3'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object DBText1: TDBText
        Left = 49
        Top = 0
        Width = 153
        Height = 36
        DataField = 'Grupo_ins'
        DataSource = m_datos.ds_grup_ins
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBNavigator2: TDBNavigator
        Left = 202
        Top = 0
        Width = 96
        Height = 36
        DataSource = m_datos.ds_grup_ins
        VisibleButtons = [nbPrior, nbNext]
        Flat = True
        Hints.Strings = (
          'Anterior tipo'
          'Siguiente tipo')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object ToolButton1: TToolButton
        Left = 298
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        Style = tbsSeparator
      end
      object ToolButton2: TToolButton
        Left = 306
        Top = 0
        Action = m_datos.Ac_filtrarIns
        DropdownMenu = PopupMenu1
        Style = tbsDropDown
      end
      object ToolButton4: TToolButton
        Left = 393
        Top = 0
        Action = m_datos.ac_gruposins
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 89
    Top = 3
    object Filtrartabla1: TMenuItem
      Action = m_datos.Ac_filtrarIns
      AutoCheck = True
    end
    object Nofiltlar1: TMenuItem
      Action = m_datos.Ac_noFiltrarIns
      AutoCheck = True
    end
  end
end
