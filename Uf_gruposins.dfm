object f_grinsumos: Tf_grinsumos
  Left = 327
  Top = 335
  BorderStyle = bsDialog
  Caption = 'Grupos de insumos'
  ClientHeight = 102
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBEdit1: TDBEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    DataField = 'Grupo_ins'
    DataSource = m_datos.ds_grup_ins
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 64
    Width = 231
    Height = 25
    DataSource = m_datos.ds_grup_ins
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel]
    TabOrder = 1
  end
end
