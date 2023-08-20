use ecommerce;

-- idClient, Fname, Minit, Lname, CPF, Address (ok)

insert into Clients (Fname, Minit, Lname, CPF, Address) values
	('Maria', 'M', 'Silva', 12346789, 'R. Silva da Prata 29 - RJ'),
	('Matheus', 'O','Pimentel', 987654321, 'R Alameda 289 - RJ'),
	('Ricardo', 'F', 'Silva', 45678913, 'Av. Alameda Vinha 1889 - RJ'),
	('Júlia', 'S', 'França', 789123456, 'R. Laranjeiras 851 - RJ'), 
	('Roberta', 'G', 'Assis', 98745631, 'Av. Koller 19 - RJ'),
	('Isabela', 'M', 'Cruz', 654789123, 'R. Almeda das Flores 28 - RJ');
	

-- idProduct, Pname, classification_kids, category, avaliação, size (ok)

insert into product (Pname, classification_kids, category, avaliação, size) values
	('Fone', False, 'Eletrônico', 4, null),
	('Barbie', True, 'Brinquedos', 3, null),
	('Body', True, 'Vestimneta', 5, null),
	('Microfone', False, 'Eletrônico', 4, null),
	('Sofá', False, 'Móveis', 3, '3x57x80'),
	('Farinha', False, 'Alimentos', 2, null),
	('Fire Stick', False, 'Eletrônico', 3, null);


-- idOrder, idOrderClient, ordersStatus, orderDescription, sendValue, paymentCash (ok)

insert into orders (idOrderClient, ordersStatus, orderDescription, sendValue, paymentCash) values 
	(1, null, 'Compra via aplicativo', null, 1),
    (2, null, 'Compra via aplicativo', 50, 0),
    (3, 'Confirmado', null, null, 1),
    (4, null, 'Compra via site', 150, 0);
   

-- idPOproduct, idPOorder, poQuantity, poStatus (ok)

insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
	(1, 1, 2, null),
	(2, 1, 1, null),
	(3, 2, 1, null);


    
-- storageLocation, quantity (ok)
    
insert into productStorage (storageLocation, quantity) values
	('Rio de Janeiro', 1000),
    ('Rio de Janeiro', 500),
    ('São Paulo', 10),
    ('São Paulo', 100),
    ('São Paulo', 10),
    ('Brasília', 60);
        
	
-- idLproduct, idLstorage, location (ok)
    
insert into storageLocation (idLproduct, idLstorage, location) values
	(1, 2, 'RJ'),
    (2, 6, 'GO');
        
-- idSupplier, socialName, CNPJ, contact (ok)
    
insert into supplier (socialName, CNPJ, contact) values
	('Almeida e filhos', 123456789123456, '21985474'),
    ('Eletrônicos Silva', 854519649143457, '21985484'),
    ('Eletrônicos Vilma', 934567893934695, '21975494');
    
    
-- idPsSupplier, idPsProduct, quantity (ok)
    
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
	(1, 1, 500),
    (1, 2, 400),
    (2, 4, 633),
    (3, 3, 5),
    (2, 5, 10);
        
-- idSeller, socialName, abstName, CNPJ, CPF, location, contact (ok)
    
insert into seller (socialName, abstName, CNPJ, CPF, location, contact) values
	('Tech eletronics', null, 123456789456321, null, 'Rio de Janeiro', 21994628758),
    ('Botique Durgas', null, null, 12345678323, 'Rio de Janeiro', 21956789569),
    ('Kids World', null, 456789123654485, null, 'São Paulo', 11986574841);
        

-- idPseller, idPproduct, prodQuantity (ok)

insert into productSeller (idPseller, idPproduct, prodQuantity) values
	(1, 6, 80),
	(2, 7, 10);


        