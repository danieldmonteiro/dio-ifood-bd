-- Criação do banco de dados da oficina

CREATE database oficina;

USE oficina;

-- Criação da tabela Clientes

CREATE TABLE Clientes (
	idCliente INT AUTO_INCREMENT PRIMARY KEY,
	Nome VARCHAR(255),
	Sobrenome VARCHAR(255),
	Endereço VARCHAR(255),
	Telefone VARCHAR(11),
	CPF CHAR(11),
	CONSTRAINT unique_cpf UNIQUE (CPF)
);

ALTER TABLE Clientes AUTO_INCREMENT=1;

drop table Clientes;


-- Criação da tabela Veículo

CREATE TABLE Veículo (
	idVeículo INT AUTO_INCREMENT PRIMARY KEY,
	Marca VARCHAR(100),
	Modelo VARCHAR(100),
	Ano INT,
	Placa VARCHAR(15),
	CONSTRAINT unique_placa UNIQUE (Placa)
);

drop table Veículo;

-- Criação da tabela Serviços

CREATE TABLE Serviços (
	idServiços INT AUTO_INCREMENT PRIMARY KEY,
	Nome ENUM('Lataria', 'Pintura', 'Retífica motor', 'Embreagem', 'Troca de óleo', 'Outros') NOT NULL,
	Preço FLOAT
);

drop table Serviços;

-- Criação da tabela ordem de serviço

CREATE TABLE OrdemServiço (
	idOS INT PRIMARY KEY,
	idOSC INT,
	idOSV INT,
	idOSS INT,
	Situação ENUM('Serviço Contratado', 'Em processo', 'Concluída') DEFAULT 'Serviço Contratado',
	DataContrato DATE,
	PreçoTotal FLOAT,
	FOREIGN KEY (idOSC) REFERENCES Clientes(idCliente),
	FOREIGN KEY (idOSV) REFERENCES Veículo(idVeículo),
	FOREIGN KEY (idOSS) REFERENCES Serviços(idServiços)
);

