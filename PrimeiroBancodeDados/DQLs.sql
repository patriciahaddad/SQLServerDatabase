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