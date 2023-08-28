drop database ecommerce;
create database ecommerce;
use ecommerce;

create table clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Lname varchar(20),
    CPF char(11) not null,
	Address varchar(45),
    constraint unique_cpf_client unique (CPF)
);

create table product(
	idProduct int auto_increment primary key,
    Pname varchar(10),
    avaliação float default 0,
    categoria varchar (20),
    valor int not null
);

create table orders(
  	idOrder int auto_increment primary key,
    idOrderClient int,
    orderStatus enum('Cancelado', 'Confirmado', 'Em processamento') default 'Em processamento',
    orderDescription varchar (255),
    constraint fk_orders_client foreign key (idOrderClient) references clients(idClient)
			on update cascade
);

create table payments(
    idPayment int auto_increment primary key,
    idPOrder int,
    typePayment enum('Boleto', 'Cartão', 'PIX', 'Dinheiro'),
    constraint fk_payment_client foreign key (idPOrder) references orders(idOrder)
);
create table storages(
  	idStorages int auto_increment primary key,
    idProdStorages int,
    storageLocation varchar(250),
    quantity int default 0,
    constraint fk_prod_storage foreign key (idProdStorages) references product(idProduct)
);

create table supplier(
  	idSupplier int auto_increment primary key,
    socialName varchar(45) not null,
    CNPJ char(15) not null,
    contact char(11) not null,
    constraint unique_supplier unique (CNPJ)
);

create table productOrder(
	idPOproduct int,
    idPOorder int,
    poQuantity int default 1,
    poStatus enum('Disponível', 'Sem estoque') default 'Disponível',
    primary key (idPOproduct, idPOorder),
    constraint fk_productorder_seller foreign key (idPOproduct) references product(idProduct),
    constraint fk_productorder_product foreign key (idPOorder) references orders(idOrder)
);

show tables;

show databases;
use information_schema;
show tables;
desc table_constraints;