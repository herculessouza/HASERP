unit provider.Conversao;

interface


uses
SysUtils,
StrUtils,
Classes;


type
    TPCPessoas = (tpCliente, tpFornecedores, tpFuncionarios);
    TPCTelas = (tpProdutos, tpCaixa, tpGrupo, tpSubGrupo);

      function  PessoasToInt(const t: TPCPessoas): integer;
      function  telasToStr(const t: TPCTelas): string;


implementation
  //implementando pessoas

      function  PessoasToInt(const t: TPCPessoas): integer;
      begin
        case t of
          tpCliente:              Result := 1 ;
          tpFornecedores:         Result := 2 ;
          tpFuncionarios:         Result := 3 ;
        end;
      end;

      //implementando telas
 function  telasToStr(const t: TPCTelas): string;
 begin
   case t of
     tpProdutos:        result := 'Produtos';
     tpCaixa:           result := 'Caixa';
     tpGrupo:           result := 'Grupo';
     tpSubGrupo:        result := 'SubGrupo';
   end;
 end;




end.
