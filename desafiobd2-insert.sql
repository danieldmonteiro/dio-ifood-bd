USE oficina;

-- Inserir clientes

INSERT INTO Clientes (Nome, Sobrenome, Endereço, Telefone, CPF) VALUES 
	('João', 'da Silva', 'Rua Albertina, 123, Centro, Rio de Janeiro', '2122751103', '08699901741'),
	('Pablo', 'Amorim', 'Rua Conde dos Justos, 44, Tijuca, Rio de Janeiro', '2199835592', '08793465231'),
	('Michel', 'Mandel', 'Rua Santa Sofia, 567, Centro, Rio de Janeiro', '2199857742','09813056721'),
	('Ernesto', 'Senna', 'Rua dos Aflitos, 678, Santo Cristo, Rio de Janeiro', '21987345123', '09523356741');
	
	
-- Inserir veículos


INSERT INTO Veículo (Marca, Modelo, Ano, Placa) VALUES 
	('FIAT', 'Uno', 2020, 'ABC-1234'),
	('BMW', 'Silver', 2021, 'CDE-2345'),
	('FORD', 'F16', 2023, 'VCS-1530'),
	('FORD', 'K', 2021, 'VCF-1254');
	
INSERT INTO Veículo (Marca, Modelo, Ano, Placa) VALUES 
	('FIAT', 'Toro', 2020, 'CBU-1234'),
	('FORD', 'Focus', 2021, 'KUT-2645');
	
-- Inserir serviços

INSERT INTO Serviços (Nome, Preço) VALUES 
	('Lataria', 50.00),
	('Pintura', 100.00),
	('Troca de óleo', 30.00),
	('Outros', 300.00);

INSERT INTO Serviços (Nome, Preço) VALUES 
	('Outros', 400.00);


-- Inserir ordens de serviço

INSERT INTO OrdemServiço (idOS, idOSC, idOSV, idOSS, Situação, DataContrato, PreçoTotal) VALUES
	(1, 1, 1, 1, 'Serviço Contratado', '2023-08-16', 50.00),
	(2, 2, 2, 2, 'Concluída', '2023-07-23', 100.00),
	(3, 3, 3, 3, 'Em processo', '2023-08-21', 150.00),
	(4, 4, 4, 4, 'Concluída', '2022-05-22', 100.00);
	

