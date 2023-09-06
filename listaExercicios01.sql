-- exercício 1
select titulo from livros;

-- exercício 2
select NOME from autores
WHERE nascimento < '1900-01-01';

-- exercício 3
SELECT titulo 
from livros 
inner join autores on autor_id=autores.id
where NOME = 'J.K. Rowling';

-- exercício 4
select alunos.nome
from alunos 
join matriculas on alunos.id = matriculas.aluno_id
where matriculas.curso = 'Engenharia de Software';

-- exercício 5
SELECT produto, SUM(receita) as  receita_total
FROM vendas
GROUP BY produto;

-- exercício 6
select autores.nome, count(livros.id) as numero_de_livros
from autores
left join livros on autores.id = livros.autor_id
group by autores.id;

-- exercício 7
select curso, count(aluno_id) as numero_de_alunos
from matriculas
group by curso;

-- exercício 8
SELECT produto, AVG(receita) AS media_receita
FROM vendas
GROUP BY produto;

-- exercício 9
SELECT produto, SUM(receita) AS receita_total
FROM vendas
GROUP BY produto
HAVING SUM(receita) > 10000;

-- exercício 10
SELECT autores.nome, COUNT(livros.id) AS numero_de_livros
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.id
HAVING COUNT(livros.id) > 2;

-- exercício 11
SELECT livros.titulo, autores.nome AS autor
FROM livros
JOIN autores ON livros.autor_id = autores.id;

-- exercício 12
SELECT alunos.nome, matriculas.curso
FROM alunos
LEFT JOIN matriculas ON alunos.id = matriculas.aluno_id;

-- exercício 13
SELECT autores.nome, livros.titulo
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id;
