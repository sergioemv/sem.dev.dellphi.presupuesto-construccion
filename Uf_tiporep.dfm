object f_tiporep: Tf_tiporep
  Left = 432
  Top = 350
  BorderStyle = bsToolWindow
  Caption = 'Tipo de Reporte'
  ClientHeight = 116
  ClientWidth = 168
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 16
    Width = 137
    Height = 89
    Caption = 'Elija eltipo de Reporte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'Detallado'
      'Res'#250'men')
    ParentFont = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
end
