object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 327
  Width = 640
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\bleed\OneDrive\Documentos\cursos\delphi\projet' +
        'oERP\HASERP.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=win1252'
      'DriverID=FB')
    Left = 64
    Top = 40
  end
  object Cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 448
    Top = 64
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 448
    Top = 128
  end
  object qry_Filial: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from filial  where fil_codigo = :codigo')
    Left = 64
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qry_FilialFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_FilialFIL_RAZAO: TStringField
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Size = 100
    end
    object qry_FilialFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 100
    end
    object qry_FilialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 50
    end
    object qry_FilialFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 50
    end
  end
end
