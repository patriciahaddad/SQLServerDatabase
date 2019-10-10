CREATE DATABASE BD_Escola
USE BD_Escola;
CREATE TABLE Turma(
	IdTurma INT IDENTITY PRIMARY KEY NOT NULL,
	NomeCurso VARCHAR (100) NOT NULL,
	Duracao VARCHAR (8),
	Periodo VARCHAR(10) NOT NULL,
);
CREATE TABLE Aluno(
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	NomeAluno VARCHAR (100) NOT NULL,
	NomeResponsavel VARCHAR (100) NOT NULL,
	IdTurma INT FOREIGN KEY REFERENCES Turma(IdTurma),
);
INSERT INTO Turma (NomeCurso, Duracao, Periodo) VALUES ('Programação', '6 meses', 'Integral'), 
('Jornalismo', '4 anos', 'Noturno'), ('Medicina', '6 anos', 'Integral');
INSERT INTO Aluno (NomeAluno, NomeResponsavel, IdTurma) VALUES ('Patrícia', 'Sueli', 1), 
('Giulia', 'Silvana', 2), ('Vanessa', 'Sueli', 3);

SELECT * FROM Turma;
SELECT * FROM Aluno;