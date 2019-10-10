CREATE DATABASE Empresa;
USE Empresa;
CREATE TABLE Localizacao(
	IdLocalizacao INT IDENTITY PRIMARY KEY NOT NULL,
	Sala INT,
	Predio VARCHAR(30) NOT NULL
);
CREATE TABLE Departamento(
	IdDepartamento INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(20),
	IdLocalizacao INT FOREIGN KEY REFERENCES Localizacao(IdLocalizacao)
);
CREATE TABLE Empregado(
	IdEmpregado INT IDENTITY PRIMARY KEY NOT NULL,
	NomeEmpregado VARCHAR(100),
	IdDepartamento INT FOREIGN KEY REFERENCES Departamento(IdDepartamento)
);
CREATE TABLE Dependente(
	IdDependente INT IDENTITY PRIMARY KEY NOT NULL,
	NomeDependente VARCHAR(100),
	IdEmpregado INT FOREIGN KEY REFERENCES Empregado(IdEmpregado)
);
CREATE TABLE Projeto(
	IdProjeto INT IDENTITY PRIMARY KEY NOT NULL,
	NomeProjeto VARCHAR(30),
	IdDepartamento INT FOREIGN KEY REFERENCES Departamento(IdDepartamento)
);
CREATE TABLE Membros(
	IdMembros INT IDENTITY PRIMARY KEY NOT NULL,
	Cargo VARCHAR(30),
	IdEmpregado INT FOREIGN KEY REFERENCES Empregado(IdEmpregado),
	IdProjeto INT FOREIGN KEY REFERENCES Projeto(IdProjeto)
);
INSERT INTO Localizacao (Sala, Predio) VALUES (13, 'Senai Informática'),(14, 'Senai Informática');
INSERT INTO Departamento (Nome, IdLocalizacao) VALUES ('Code A', 1), ('Code B', 2);
INSERT INTO Empregado (NomeEmpregado, IdDepartamento) VALUES ('Vanessa', 1), ('Tatiana', 2), ('Patrícia', 2);
INSERT INTO Dependente (NomeDependente, IdEmpregado) VALUES ('Caio', 1), ('Theo', 2);
INSERT INTO Projeto (NomeProjeto, IdDepartamento) VALUES ('Marketplace', 2), ('Marmita', 1);
INSERT INTO Membros (Cargo, IdEmpregado, IdProjeto) VALUES ('Freela', 2, 1), ('PO', 3, 2);

SELECT * FROM Localizacao
SELECT * FROM Departamento
SELECT * FROM Empregado
SELECT * FROM Dependente
SELECT * FROM Projeto
SELECT * FROM Membros