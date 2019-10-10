CREATE DATABASE BD_Matricula;
USE BD_Matricula;

CREATE TABLE Curso(
	IdCurso INT IDENTITY PRIMARY KEY NOT NULL,
	NomeCurso VARCHAR (100) NOT NULL,
	Duracao VARCHAR(8),
);
CREATE TABLE Candidato(
	IdCandidato INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL, 
	IdCurso INT FOREIGN KEY REFERENCES Curso(IdCurso)
);
INSERT INTO Curso (NomeCurso, Duracao) VALUES ('Programação', '6 meses'), ('Jornalismo', '4 anos');
INSERT INTO Candidato (Nome, IdCurso) VALUES ('Patrícia', 1), ('Patrícia Haddad',2);

UPDATE Curso SET 
	NomeCurso ='Medicina',
	Duracao = '6 anos'
WHERE IdCurso = 2;

UPDATE Candidato SET 
	Nome ='Vanessa',
	IdCurso = 2
WHERE IdCandidato = 2;

SELECT * FROM Curso;
SELECT * FROM Candidato;