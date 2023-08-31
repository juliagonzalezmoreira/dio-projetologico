use oficina;

INSERT INTO cliente(Nome, Sobrenome, CPF) values 
('Daniele', 'Gonzalez', '123456789'),
('João', 'Saraiva', '987654321'),
('Julia', 'Gonzalez', '321456789');

INSERT INTO veiculo (idVCliente, modeloVeic, placaVeic) values 
(1, 'TIGGO', 'FHJ-9098'),
(2, 'Saveiro', 'DNO-2675'),
(3, 'Uno', 'JKG-0276');

INSERT INTO concerto (idConcertoVeiculo, concertoStatus, dataPedido, descricaoConcerto) values 
(1, default, '2023-08-28', 'Defeito na roda'),
(2, 'Em andamento','2023-08-27', 'Trocar parabrisa'),
(3, 'A fazer', '2023-08-26', 'Escapamento');

INSERT INTO pagamento(idPagConcerto, tipoPagamento) values
(1, 'Cartão Crédito'),
(2, 'Boleto'),
(3, 'Cartão Débito');

INSERT INTO estoque(estoqueLocal) values
('Belo Horizonte - MG'),
('Guarulhos - SP');

INSERT INTO fornecedor(socialName, CNPJ, contact) values
('Ricardo', '678954321', '1298756432');

INSERT INTO peça(nomePeça) values 
('Roda'),
('Parabrisa'),
('Embreagem');

INSERT INTO peçaEstoque(idPEpeça, idPEestoque, quantidadePeça, statusEstoque) values
(1, 1, 8, 'Disponível'),
(2, 2, 0, 'Sem estoque'),
(3, 1, 4, default);

INSERT INTO peçaFornecedor (idPFornecedor, idFPeça) values
(1, 1),
(1, 2),
(1, 3);

select * from fornecedor;
