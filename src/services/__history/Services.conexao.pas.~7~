unit Services.conexao;

interface

uses
  System.SysUtils,
  System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB,
  System.iniFiles, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, providers.constantes;

type
  TServiceConexao = class(TDataModule)
    FDConnection: TFDConnection;
    Cursor: TFDGUIxWaitCursor;
    FBDriverLink: TFDPhysFBDriverLink;
    qry_Filial: TFDQuery;
    qry_FilialFIL_CODIGO: TIntegerField;
    qry_FilialFIL_RAZAO: TStringField;
    qry_FilialFIL_FANTASIA: TStringField;
    qry_FilialFIL_CNPJ: TStringField;
    qry_FilialFIL_TELEFONE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var
  LiniFile    : TIniFile;
  LDatabase  : string;
  LUser_Name : string;
  LPassword  : string;
  LServidor  : string;
  LPorta     : integer;
  LCaminho   : string;

begin

try

  FDconnection.Connected := False;

  LCaminho := ExtractFileDir(ParamStr(0)) + '\login.ini';

  LInifile := TIniFile.Create(LCaminho);

  LDatabase := LIniFile.ReadString('Conexao','Database', LDatabase);
  LServidor := LIniFile.ReadString('Conexao','Servidor', LServidor);
  LPorta    := LIniFile.ReadInteger('Conexao','Porta', LPorta);

  LUser_Name := 'SYSDBA';
  LPassword  := 'masterkey';

  FDconnection.Params.Values['Database']  := LDatabase;
  FDConnection.Params.Values['User_Name'] := LUser_Name;
  FDConnection.Params.Values['Password']  := LPassword;
  FDConnection.Params.Values['Server']    := LServidor;
  FDConnection.Params.Values['Porta']     := LPorta.ToString;
finally
 FreeAndNil(LInifile);
end;

  qry_Filial.Close;
  qry_Filial.Params[0].AsInteger := 2;
  qry_Filial.Open();

  iCod_FILIAL   := qry_FilialFIL_CODIGO.AsInteger;
  sRAZAO_FILIAL := qry_FilialFIL_RAZAO.AsString;
end;

end.
