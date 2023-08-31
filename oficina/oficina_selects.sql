use oficina;

select * from clientes
order by Nome;

select COUNT(*) from peçaEstoque
having quantidadePeça > 0;

select count(idVeiculo)
from veiculo;

select * from pagamento
where tipopagamento = 'Boleto';

select MAX(quantidadePeça) AS MaiorQuantidade
from peça;