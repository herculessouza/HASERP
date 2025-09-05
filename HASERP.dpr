program HASERP;

uses
  Vcl.Forms,
  view.principal in 'src\views\view.principal.pas' {ViewPrincipal},
  Services.conexao in 'src\services\Services.conexao.pas' {ServiceConexao: TDataModule},
  Services.cadastro in 'src\services\Services.cadastro.pas' {ServicesCadastro: TDataModule},
  providers.constantes in 'src\providers\providers.constantes.pas',
  view.base in 'src\views\view.base.pas' {viewBase},
  view.base.listas in 'src\views\view.base.listas.pas' {viewBaseListas},
  view.clientes in 'src\views\view.clientes.pas' {viewClientes},
  view.fornecedores in 'src\views\view.fornecedores.pas' {viewFornecedores},
  provider.Conversao in 'src\providers\provider.Conversao.pas',
  view.produtos in 'src\views\view.produtos.pas' {viewProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServicesCadastro, ServicesCadastro);
  Application.CreateForm(TviewBaseListas, viewBaseListas);
  Application.CreateForm(TviewClientes, viewClientes);
  Application.CreateForm(TviewFornecedores, viewFornecedores);
  Application.CreateForm(TviewProdutos, viewProdutos);
  Application.Run;
end.
