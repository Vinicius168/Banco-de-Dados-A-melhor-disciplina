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
