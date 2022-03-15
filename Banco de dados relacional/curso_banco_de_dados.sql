create database curso_banco_de_dados;

-- Mostra os bancos de dados
show databases;

-- Seleciona um banco de dados
use curso_banco_de_dados;

-- Criar tabela
create table `posts`(`id` INT NOT NULL AUTO_INCREMENT, `titulo` VARCHAR(255) NOT NULL, `conteudo` TEXT NOT NULL, autor_id INT NOT NULL, PRIMARY KEY(`id`) ) engine=InnoDB;

-- Mostras as tabelas
show tables;

create table `autores`(`id` INT NOT NULL AUTO_INCREMENT, `nome` VARCHAR(255) NOT NULL, PRIMARY KEY(`id`) ) engine=InnoDB;

-- Seleciona da tabela autores
select * from `autores`;

-- Mostra as colunas de posts
show columns from posts;

-- Insere alguma coisa na tabela posts
insert into `posts` values(null, "Meu primeiro post","Conteúdo do primeiro post", 0);

show columns from `autores`;

insert into `autores` values(null,'Guilherem');

select * from `autores`;

-- Atualiza a tabela
update `autores` set nome = 'felipe'; -- Nesse caso irá atualizar a tabela inteira para o nome felipe 

-- Atualiza tabela com condição se o id fo igual 1
update `autores` set nome = 'gui' where id = 1;

-- Deleta a tabela autores
delete from autores;

-- Delete com condição caso o nome seja zezinho e if for igual a 4
delete from autores where nome = 'zezinho' and id = 4; 

-- Seleciona e mostra somente conteúdo e títula de posts
select conteudo,titulo from posts;

-- Seleciona e mostra de posts por ordem de id decrescente
select * from posts order by id desc;

-- Seleciona e mostra de posts de ordem crescente
select * from posts order by id asc;

-- Seleciona e mostra por título em ordem crescente de ordem alfabética
select * from `posts` order by titulo asc;

-- Seleciona de posts e agrupa por autor e mostra somente a primeiro conteudo do autor
select * from posts group by autor_id;

-- Seleciona de posts e agrupa por autor id e ordena por id descrescente
select * from posts group by autor_id order by id desc;

-- Seleciona de posts limita a 5 registrose ordena por ordem descendente
select * from posts order by id desc limit 5;

-- Seleciona de posts e começa do 2 e o limite de registros é 3, ou seja traz 3 registros
select * from posts limit 2,3;

-- Seleciona de posts onde o id é igual a 1
select * from posts where id = 1;

-- Seleciona de posts onde o id do outro é igual a 2 e o id é maior que 6
select * from posts where autor_id = 2 and id > 6;

-- Seleciona de posts onde o id do autor seja 2 ou id seja maior que 1
select * from posts where autor_id = 2 or id >=1;

-- Seleciona de posts onde o autor id é igual a 2 ou autor id é igual a 0 e o título seja igual titulo de teste
select * from posts where (autor_id = 2 or autor_id = 0) and titulo = 'titulo de teste';

-- Seleciona de posts onde o conteudo contém alguma coisa teste
select * from posts where conteudo like '%teste%';

-- Seleciona de posts onde o posts.autor_id é igual a autor = id, caso o autor exista 
select * from posts inner join autores on posts.autor_id = autor_id;

-- Seleciona de posts os autores mesmo que o autor não exista
select * from posts left join autores on posts.autor_id = autores.id;

-- Seleciona de posts autores mesmo que o autor não existe e ordena de ordem decrescente
select * from posts left join autores on posts.autor_id = autores.id order by posts.id desc;

-- Seleciona de posts os autores mesmo que não tenha nada postado relacionado ao autor
select * from posts right join autores on posts.autor_id = autores.id;