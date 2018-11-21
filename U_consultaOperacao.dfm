object frmConsultaOperacao: TfrmConsultaOperacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsultaOperacao'
  ClientHeight = 368
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 105
    Align = alTop
    Caption = 'OPERA'#199#213'ES'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 635
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 645
    Height = 263
    Align = alClient
    TabOrder = 1
    ExplicitTop = 111
    ExplicitWidth = 635
    ExplicitHeight = 290
    object DBGrid1: TDBGrid
      Left = 19
      Top = 16
      Width = 598
      Height = 224
      DataSource = dm.ds_operacao
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'hp_mes'
          Title.Caption = 'M'#234's'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'clientes'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipoop'
          Title.Caption = 'Tipo de Opera'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valorop'
          Title.Caption = 'Valor da Opera'#231#227'o'
          Visible = True
        end>
    end
  end
end
