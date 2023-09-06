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
