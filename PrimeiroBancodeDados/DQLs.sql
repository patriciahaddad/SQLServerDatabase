/*Mostrar dados*/
SELECT * FROM aluno;
SELECT * FROM materia;

/*Mostrar dados específicos de um aluno pelo ID*/
SELECT * FROM aluno WHERE IdAluno = 2;

/*Mostrar dados em uma 'busca' com LIKE*/ -- Quando usa o % no começo significa que pode ter alguma coisa antes de começar o Bruna e o % no final significa que tem alguma coisa no final
SELECT * FROM aluno WHERE Nome LIKE '%Bruna%';

/*Ordenar por nome do aluno de forma ascendente*/
SELECT * FROM aluno ORDER BY Nome ASC;

/*Ordenar por nome do aluno de forma Decrescente*/
SELECT * FROM aluno ORDER BY Nome DESC;


/*JUNTAMOS AS 3 TABELAS USANDO INNER JOIN */
SELECT * FROM trabalho
	INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
	INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno;
     

/*JUNTAMOS AS 3 TABELAS USANDO INNER JOIN */ -- Deixamos somente os dados que nos interessam no momento 
SELECT 
	aluno.Nome,
	aluno.RA,
	aluno.Idade,
	materia.Materia,
	trabalho.Nota
FROM trabalho
	INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
	INNER JOIN aluno ON aluno.IdAluno = trabalho.IdAluno;


/*Utilizamos a função nativa COUNT para retornar o número de registros na minha tabela */
SELECT COUNT(*) FROM aluno;

/*Utilizamos a função nativa COUNT para retornar o número de registros na minha tabela */ 
-- Usamos o Alias 'AS' para nomear a coluna
SELECT COUNT(*) AS total_registros FROM aluno;

/*Pegamos a idade máxima dos alunos*/
SELECT MAX(Idade) AS idade_maxima FROM aluno;

/*Pegamos a idade mínima dos alunos*/
SELECT MIN(Idade) AS idade_minima FROM aluno;

/*Pegamos a média de idade dos alunos */
SELECT AVG(Idade) AS media_de_idade FROM aluno;

/*Somamos as idades*/
SELECT SUM(Idade) AS soma_idade FROM aluno;


/*Juntamos todas as funções em uma única consulta */
SELECT 
	COUNT (*) AS total,
	MAX(Idade) AS idade_maxima,
	MIN(Idade) AS idade_minima,
	AVG(Idade) AS media_idade,
	SUM(Idade) AS soma_idade
FROM aluno;

/*SUBSTRING*/
-- Pegamos parte de uma string
SELECT SUBSTRING(Nome, 0 ,2) AS iniciais FROM aluno;

/*UPPER*/
-- Deixar tudo em maiúsculo
SELECT UPPER(Nome) AS Nome FROM aluno;

/*LOWER*/
-- Deixar tudo em minúsculo
SELECT LOWER(Nome) AS Nome FROM aluno;
