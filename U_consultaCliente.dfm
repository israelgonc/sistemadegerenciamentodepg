object frmConsultaCliente: TfrmConsultaCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsultaCliente'
  ClientHeight = 418
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 105
    Align = alTop
    Caption = 'CLIENTES'
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
    Height = 313
    Align = alClient
    TabOrder = 1
    ExplicitTop = 111
    ExplicitWidth = 635
    ExplicitHeight = 303
    object DBGrid1: TDBGrid
      Left = 24
      Top = 43
      Width = 561
      Height = 190
      DataSource = dm.ds_cliente
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_cpf'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_cnpj'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_rg'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_ie'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_tel'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_cel'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_nasc'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_abertura'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bairros'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Width = 64
          Visible = True
        end>
    end
    object btn_alt: TButton
      Left = 24
      Top = 254
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btn_altClick
    end
    object btn_canc: TButton
      Left = 128
      Top = 254
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btn_cancClick
    end
    object btn_exc: TButton
      Left = 232
      Top = 254
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btn_excClick
    end
    object btn_sav: TButton
      Left = 327
      Top = 254
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 4
      OnClick = btn_savClick
    end
    object btn_ant: TButton
      Left = 424
      Top = 254
      Width = 75
      Height = 25
      Caption = 'Anterior'
      TabOrder = 5
      OnClick = btn_antClick
    end
    object btn_pro: TButton
      Left = 518
      Top = 254
      Width = 75
      Height = 25
      Caption = 'Proximo'
      TabOrder = 6
      OnClick = btn_proClick
    end
  end
end
