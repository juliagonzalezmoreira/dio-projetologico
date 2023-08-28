
USE ecommerce;

INSERT INTO clients(Fname, Lname, CPF, Address) VALUES
('José', 'da Silva', '123456789', 'Rua Janeiro - 123'),
('Julia', 'Gonzalez', '987654321', 'Rua Fevereiro - 321'),
('Ana', 'Mosti', '321456789', 'Rua Março - 456');


INSERT INTO product(Pname, avaliação, categoria, valor) VALUES
('Notebook', 5, 'Eletrônico', 4999.99),
('vestido', 3, 'Vestimenta', 49.90),
('Lustre', 4, 'Móveis', 229.99);

INSERT INTO orders (idOrderClient, orderStatus, orderDescription) VALUES
(1, default, 'Pedido #2022-34533056'),
(2, 'Confirmado','Pedido #2022-34644235'),
(3, default, 'Pedido #2022-75464264');

INSERT INTO payments (idPOrder, typePayment) VALUES
(1, 'Cartão'),
(2, 'PIX'),
(3, 'Boleto');

INSERT INTO storages (idProdStorages, storageLocation, quantity) VALUES
(1, 'SP', 50),
(2, 'RJ', 1000),
(3, 'MG', 250);


INSERT INTO supplier (socialName, CNPJ, contact) VALUES
('Forncedor1', '123456789123456', '12997999345'),
('Fornecedor2', '987654321123456', '1134556783');

INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) VALUES
(1, 1, 10, default),
(2, 2, 5, 'Sem Estoque'),
(3, 3, 2, default);

select * from clients;



