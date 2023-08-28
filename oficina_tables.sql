drop database oficina;
create database oficina;
use oficina;

create table cliente(
	idCliente int auto_increment primary key,
    Nome varchar(10),
    Sobrenome varchar(20),
    CPF char(11) not null,
    constraint unique_cpf_client unique (CPF)
);

create table veiculo(
	idVeiculo int auto_increment primary key,
    idVCliente int,
    modeloVeic varchar(10),
    placaVeic char(15) not null,
    constraint fk_veiculo_cliente foreign key (idVCliente) references cliente(idCliente),
    constraint unique_placa_veiculo unique (placaVeic)
);

create table concerto (
  	idConcerto int auto_increment primary key,
    idConcertoVeiculo int,
    concertoStatus enum('A fazer','Em andamento', 'Terminado') default 'Em andamento',
    dataPedido date,
    descricaoConcerto varchar (255),
    constraint fk_concerto_veiculo foreign key (idConcertoVeiculo) references veiculo(idVeiculo)
);

create table pagamento(
    idPagamento int auto_increment primary key,
    idPagConcerto int,
    tipoPagamento enum('Boleto', 'Cartão Débito', 'Cartão Crédito', 'Dinheiro'),
    constraint fk_pagamento_concerto foreign key (idPagConcerto) references concerto(idConcerto)
);


create table estoque(
  	idEstoque int auto_increment primary key,
    estoqueLocal varchar(100)
);

create table fornecedor (
  	idFornecedor int auto_increment primary key,
    socialName varchar(45) not null,
    CNPJ char(15) not null,
    contact char(11) not null,
    constraint unique_supplier unique (CNPJ)
);

create table peça(
		idPeça int auto_increment primary key,
        nomePeça varchar (45)
);

create table peçaEstoque(
    idPEpeça int,
    idPEestoque int,
    quantidadePeça int default 1,
    primary key (idPEpeça, idPEestoque),
    statusEstoque enum('Disponível', 'Sem estoque') default 'Disponível',
    constraint fk_estoque_peça foreign key (idPEpeça) references peça(idPeça),
    constraint fk_estoque_estoque foreign key (idPEestoque) references estoque(idEstoque)
);

create table peçaFornecedor (
        idPFornecedor int,
        idFPeça int,
        primary key (idPFornecedor, idFPeça),
		constraint fk_fornecedor_peça foreign key (idPFornecedor) references fornecedor(idFornecedor),
		constraint fk_peça_fornecedor foreign key (idFPeça) references peça(idPeça)
);

show tables;