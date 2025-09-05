unit providers.constantes;

interface

       procedure GET_Pessoas(iTIPO: integer);
       PROCEDURE GET_PRODUTOS;
       procedure get_produtos_detalhe(iCOD_PRODUTO: integer);


var
  iCod_FILIAL : integer;
  sRAZAO_FILIAL: string;

implementation
        // procedure para buscar clientes, fornecedores, funcionarios

        uses
Services.cadastro;
procedure GET_Pessoas(iTIPO: integer);
begin
          ServicesCadastro.Qry_Pessoas.Close;
          ServicesCadastro.Qry_Pessoas.SQL.Clear;
          ServicesCadastro.Qry_Pessoas.SQL.Add('select * from pessoas where pes_tipopessoa = :tipopessoa');
          ServicesCadastro.Qry_Pessoas.SQL.Add('order by pes_codigo asc');
          ServicesCadastro.Qry_Pessoas.Params[0].AsInteger := iTIPO;
          ServicesCadastro.Qry_Pessoas.Open();
end;

    procedure GET_produtos;
    begin         //BUSCA TODOS OS PRODUTOS
          ServicesCadastro.qry_produto1.Close;
          ServicesCadastro.qry_produto1.SQL.Clear;
          ServicesCadastro.qry_produto1.SQL.Add('select * from produtos order by pr1_codigo');
          ServicesCadastro.qry_produto1.Open();


    end;

    procedure get_produtos_detalhe(iCOD_PRODUTO: integer);
    begin        // acho que busca apenas o detalhe do produto
          ServicesCadastro.qry_produto2.Close;
          ServicesCadastro.qry_produto2.SQL.Clear;
          ServicesCadastro.qry_produto2.SQL.Add('select * from produtos_2 where pr2_codigopr1 = :codigo');
          ServicesCadastro.qry_produto2.Params[0].AsInteger := iCOD_PRODUTO;
          ServicesCadastro.qry_produto2.Open();
    end;
end.
