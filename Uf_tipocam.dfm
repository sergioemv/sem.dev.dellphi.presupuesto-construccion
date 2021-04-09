object f_tipo_cam: Tf_tipo_cam
  Left = 479
  Top = 425
  BorderStyle = bsToolWindow
  Caption = 'Tipo de Cambio'
  ClientHeight = 91
  ClientWidth = 205
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
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 42
    Height = 13
    Caption = 'Cambio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 21
    Width = 73
    Height = 21
    DataField = 'Tipo_cambio'
    DataSource = m_datos.ds_tipo_cam
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 64
    Top = 56
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
end
