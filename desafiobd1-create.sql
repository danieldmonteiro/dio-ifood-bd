-- Criação de banco de dados para o cenário de e-commerce

CREATE DATABASE ecommerce;

use ecommerce;



-- Criar tabela clientes 1

CREATE table clients(
	idClient int auto_increment primary key,
    Fname varchar(50),
    Minit char(3),
    Lname varchar(50),
    clientType enum('PF', 'PJ') not null,
    CPF char(11),
    CNPJ char(15),
    Address varchar(255),
    constraint unique_cpf_cnpj unique (CPF, CNPJ)
);

alter table clients auto_increment=1;


-- Criar tabela produto 2



CREATE table product(
	idProduct int auto_increment primary key,
    Pname varchar(50) not null,
    classification_kids bool default false,
    category enum('Eletrônico', 'Vestimenta', 'Brinquedos', 'Alimentos', 'Móveis') not null,
    avaliação float default 0,
    size varchar(10)
);



-- Criar tabela pagamentos 3



CREATE table payments(
	idClient int,
    idPayment int,
    typePayment enum('Boleto', 'Cartão', 'Dois cartões'),
    limitAvaliable float,
    primary key(idClient, idPayment)
);


-- Criar tabela pedidos 4



CREATE table orders(
	idOrders int auto_increment primary key,
    idOrderClient int,
    ordersStatus enum('Cancelado', 'Confirmado', 'Em processamento') default 'Em processamento',
    orderDescription varchar(255),
    sendValue float default 10,
    paymentCash bool default false,
    constraint fk_orders_client foreign key(idOrderClient) references clients(idClient)  
);




-- Criar tabela product order 5


CREATE table productOrder(
	idPOproduct int,
	idPOorder int,
	poQuantity int not null,
	poStatus enum('Cancelado', 'Confirmado', 'Em processamento') default 'Em processamento',
	primary key (idPOproduct, idPOorder),
    constraint fk_productorder_product_product foreign key (idPOproduct) references product(idProduct),
    constraint fk_productorder_order foreign key (idPOorder) references orders(idOrderClient)

);



-- Criar tabela estoque 6



CREATE 	table productStorage(
	idProdStorage int auto_increment primary key,
    storageLocation varchar(255),
    quantity int default 0
);



-- Criar tabela fornecedor 7



CREATE table supplier(
	idSupplier int auto_increment primary key,
    socialName varchar(255) not null,
    CNPJ char(15) not null,
    contact char(11) not null,
    constraint unique_supplier unique (CNPJ)
);



-- Criar tabela vendedor 8



CREATE table seller(
	idSeller int auto_increment primary key,
    socialName varchar(255) not null,
    abstName varchar(255),
    CNPJ char(15),
    CPF char(11),
    location varchar(255),
    contact char(11) not null,
	constraint unique_cnpj_seller unique (CNPJ),
	constraint unique_cpf_seller unique (CPF)
);



-- Criar tabela product seller 9



CREATE table productSeller(
	idPseller int,
    idPproduct int,
	prodQuantity int default 1,
    primary key (idPseller, idPproduct),
    constraint fk_productorder_seller foreign key (idPseller) references seller(idSeller),
    constraint fk_productorder_product foreign key (idPproduct) references product(idProduct)
);


-- Criar tabela storage location 10



CREATE table storageLocation(
	idLproduct int,
    idLstorage int,
    location varchar(255) not null,
    primary key (idLproduct, idLstorage),
    constraint fk_storage_location_product foreign key (idLproduct) references product(idProduct),
    constraint fk_storage_location_storage foreign key (idLstorage) references productStorage(idProdStorage)
);



-- Criar tabela product supplier 11


CREATE table productSupplier(
	idPsSupplier int,
	idPsProduct int,
    quantity int not null,
    primary key (idPsSupplier, idPsProduct),
    constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
    constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct) 
);


-- Criar tabela entrega 12


CREATE table delivery(
	idDproduct int,
	idDorder int,
	deQuantity int not null,
	deStatus enum('Aguardando pagamento', 'Enviado', 'Entreguei') default 'Aguardando pagamento',
	trackingCode char(10),
	primary key (idDproduct, idDorder),
    constraint fk_productorder_product_delivery foreign key (idDproduct) references product(idProduct),
    constraint fk_productorder_order_delivery foreign key (idDorder) references orders(idOrderClient)

);


