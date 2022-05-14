drop table livros;
drop table usuarios;
drop table emprestimos;

CREATE TABLE livros (
id serial primary key,
titulo varchar(100)
);

CREATE TABLE usuarios (
id serial primary key,
nome varchar(100) not null,
idade integer
);

CREATE TABLE emprestimos (
id serial primary key,
id_do_livro integer,
id_do_usuario integer,
data_do_emprestimo date,
data_da_devolucao date
);


insert into livros (titulo) values ('1984');
insert into livros (titulo) values ('A cinco passos de voce');
insert into livros (titulo) values ('Princesa Mecanica');
insert into livros (titulo) values ('Principe Mecanico');
insert into livros (titulo) values ('Anjo Mecanico');
insert into livros (titulo) values ('O duque e eu');
insert into livros (titulo) values ('A perseguicao');
insert into livros (titulo) values ('Hitler - A encarnacao do mal');
insert into livros (titulo) values ('O cortico');
insert into livros (titulo) values ('O homem de giz');


insert into usuarios (nome) values 
('Dylan'), 
('Mary'), 
('Maya'),
('Oliver'), 
('Giulia'), 
('Giovanni'),
('Noah'), 
('Ashley'), 
('Sebastian'),
('Chloe');


select * from usuarios;
select * from emprestimos;
select * from livros;
