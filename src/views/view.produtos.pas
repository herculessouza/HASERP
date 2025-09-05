unit view.produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.ExtCtrls, Services.cadastro, providers.constantes, view.base.listas,
  Vcl.Mask, Vcl.DBCtrls;

type
  TviewProdutos = class(TviewBaseListas)
    dsProdutos2: TDataSource;
    pnlDetalhe: TPanel;
    DBG_Detalhes: TDBGrid;
    pnlTituloCadproduto: TPanel;
    lblTituloCadastro: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure DBG_CellClick(Column: TColumn);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewProdutos: TviewProdutos;

implementation

{$R *.dfm}

procedure TviewProdutos.btnNovoClick(Sender: TObject);
begin          //novo produto
  inherited;
   // Services.cadastro.qry_produto1PR1_GRUPO.AsInteger := 1;
   // Services.cadastro.qry_produto1PR1_SUBGRUPO.AsInteger := 1;
end;

procedure TviewProdutos.DBG_CellClick(Column: TColumn);
begin
  inherited;
       get_produtos_detalhe(ServicesCadastro.qry_produto1PR1_CODIGO.AsInteger);
end;

procedure TviewProdutos.FormShow(Sender: TObject);
begin
  inherited;
          get_produtos;
end;

end.
