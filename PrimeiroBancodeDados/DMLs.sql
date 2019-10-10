/* Inserir dado de um aluno */ -- Colocar as colunas que estão dentro da tabela e na sequência os valores que serão inseridos dentro da tabela
INSERT INTO aluno (Nome, RA, Idade) VALUES ('Bruna', 'R124', 22);

/*Inserir dado na tabela materia*/
INSERT INTO materia (Materia) VALUES ('Português');

/*Alterar dado(s)*/
UPDATE aluno SET 
	Nome ='Bruna Ribeiro',
	Idade = 21
WHERE IdAluno = 2;

DELETE FROM materia
WHERE IdMateria = 2;

INSERT INTO trabalho (Nota, IdMateria, IdAluno) VALUES (9.8 , 1, 1);

/* TRUNCATE - apaga todos os registros de uma tabela */
TRUNCATE TABLE trabalho;