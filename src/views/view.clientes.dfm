inherited viewClientes: TviewClientes
  Caption = 'viewClientes'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited topo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited titulo: TLabel
      Caption = 'Clientes'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 68
    end
    inherited icone: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlFechar: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited rodape: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited btnCancelar: TSpeedButton
      ExplicitLeft = 646
    end
    inherited btnSalvar: TSpeedButton
      ExplicitLeft = 814
      ExplicitHeight = 40
    end
    inherited btnExcluir: TSpeedButton
      Font.Charset = ANSI_CHARSET
      Font.Color = clBtnText
      Font.Height = -16
      Font.Name = 'Segoe UI Semilight'
    end
  end
  inherited pnlLinhadeFundo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited CPLista: TCardPanel
      ActiveCard = card_Cadastro
      StyleElements = [seFont, seClient, seBorder]
      inherited card_Cadastro: TCard
        StyleElements = [seFont, seClient, seBorder]
        object Label1: TLabel
          Left = 5
          Top = 109
          Width = 54
          Height = 21
          Caption = 'C'#243'digo'
          FocusControl = edtPES_COD
          Font.Charset = ANSI_CHARSET
          Font.Color = clBtnText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 276
          Top = 109
          Width = 124
          Height = 21
          Caption = 'Nome do Cliente'
          FocusControl = edtPES_RAZAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clBtnText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 535
          Top = 109
          Width = 106
          Height = 21
          Caption = 'Nome Fantasia'
          FocusControl = edtPES_FANTASIA
          Font.Charset = ANSI_CHARSET
          Font.Color = clBtnText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 120
          Top = 165
          Width = 63
          Height = 21
          Caption = 'Telefone'
          FocusControl = edtPES_TELEFONE
          Font.Charset = ANSI_CHARSET
          Font.Color = clBtnText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 120
          Top = 109
          Width = 78
          Height = 21
          Caption = 'CNPJ / CPF'
          FocusControl = edtPES_CPFCNPJ
          Font.Charset = ANSI_CHARSET
          Font.Color = clBtnText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 5
          Top = 165
          Width = 49
          Height = 21
          Caption = 'IE / RG'
          FocusControl = edtPES_IERG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBtnText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 5
          Top = 216
          Width = 87
          Height = 21
          Caption = 'Observa'#231#227'o'
          FocusControl = edtPES_OBSERVACAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clBtnText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlTituloCadCliente: TPanel
          Left = 0
          Top = 0
          Width = 1022
          Height = 100
          Align = alTop
          BevelOuter = bvNone
          Color = 13619151
          ParentBackground = False
          TabOrder = 0
          object lblTituloCadastro: TLabel
            Left = 276
            Top = 40
            Width = 181
            Height = 30
            Caption = 'Cadastro de Cliente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object edtPES_COD: TDBEdit
          Left = 5
          Top = 136
          Width = 95
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'En'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtPES_RAZAO: TDBEdit
          Left = 276
          Top = 136
          Width = 253
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtPES_FANTASIA: TDBEdit
          Left = 535
          Top = 136
          Width = 241
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtPES_TELEFONE: TDBEdit
          Left = 120
          Top = 187
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtPES_CPFCNPJ: TDBEdit
          Left = 120
          Top = 136
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_CPFCNPJ'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtPES_IERG: TDBEdit
          Left = 5
          Top = 187
          Width = 100
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_IERG'
          DataSource = dsDados
          TabOrder = 6
        end
        object edtPES_OBSERVACAO: TDBEdit
          Left = 5
          Top = 237
          Width = 474
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          TabOrder = 7
        end
      end
      inherited card_Pesquisa: TCard
        StyleElements = [seFont, seClient, seBorder]
        inherited pnltituloPesquisa: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblTituloPesquisa: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited edtPesquisa: TSearchBox
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited DBG_: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#211'DIGO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'RAZ'#195'O'
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_FANTASIA'
              Title.Caption = 'FANTASIA'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'TELEFONE'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_ENDERECO'
              Title.Caption = 'ENDERECO'
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TIPOPESSOA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tipo'
              Font.Style = []
              Title.Caption = 'TIPO PESSOA'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CPFCNPJ'
              Title.Caption = 'CPF/CNPJ'
              Width = 124
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_IERG'
              Title.Caption = 'IE/RG'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_OBSERVACAO'
              Title.Caption = 'OBSERVA'#199#195'O'
              Width = 93
              Visible = True
            end>
        end
      end
    end
  end
  inherited dsDados: TDataSource
    Left = 673
    Top = 67
  end
end
