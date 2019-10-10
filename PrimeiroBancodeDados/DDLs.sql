/* Criar banco */
CREATE DATABASE boletim;

/* Excluir banco */
DROP DATABASE boletim;

/* Usar o banco */
USE boletim;

/* Criar tabela de aluno */
-- Not null serve para obrigar que o dado seja preenchido
-- Identity serve para autoincrementar de 1 em 1
-- Todos são strings até que você mude para inteiro, money..
CREATE TABLE aluno (
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL, 
	RA VARCHAR(20), -- não colocar char porquê pode mudar a ordem dos números
	Idade INT
);
/*Criar tabela de matéria*/
CREATE TABLE materia(
	IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Materia VARCHAR(50) NOT NULL,
);

/*Criar tabela de trabalho*/
CREATE TABLE trabalho(
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,
	-- Chamamos nossas chaves estrangeiras
	IdMateria INT FOREIGN KEY REFERENCES materia(IdMateria),
	IdAluno   INT FOREIGN KEY REFERENCES aluno(IdAluno),
);

/* Incluir nova coluna */
ALTER TABLE materia ADD Teste VARCHAR(2);

/*Excluir coluna*/
ALTER TABLE materia DROP COLUMN Teste;


