CREATE TABLE livros (
id_livros int PRIMARY KEY NOT NULL,
titulo varchar(100) NOT NULL,
autor varchar(100) NOT NULL
);

CREATE TABLE usuarios (
id_usuarios int PRIMARY KEY,
nome varchar(100) not null,
idade integer NOT NULL
);

CREATE TABLE emprestimos (
id_emprestimos int PRIMARY KEY NOT NULL,
id_livros integer ,
id_usuarios integer,
data_emprestimo date ,
);

ALTER TABLE emprestimos
	ADD CONSTRAINT fk_livros FOREIGN KEY (id_livros) REFERENCES livros (id_livros);

ALTER TABLE emprestimos
	ADD CONSTRAINT fk_usuarios FOREIGN KEY (id_usuarios) REFERENCES usuarios (id_usuarios);


insert into livros
(id_livros, titulo, autor)
VALUES
(1,'O Carisma de Adolf Hitler','Laurence Rees')

insert into livros
(id_livros, titulo, autor)
VALUES
(2,'O duque e eu','Julia Quinn')

insert into livros
(id_livros, titulo, autor)
VALUES
(3,'Orgulho e preconceito','Jane Austin')

insert into livros
(id_livros, titulo, autor)
VALUES
(4,')

insert into livros
(id_livros, titulo, autor)
VALUES
(5,'A perseguição','Sidney Sheldon')

insert into livros
(id_livros, titulo, autor)
VALUES
(6,'O Cortiço','Aluisio de Azevedo')

insert into livros
(id_livros, titulo, autor)
VALUES
(7,'O pequeno principe','Antoine de Saint-Exupery')

insert into livros
(id_livros, titulo, autor)
VALUES
(8,'A cinco passos de voce','Rachael Lippincott')

insert into livros
(id_livros, titulo, autor)
VALUES
(9,'Coraline','Neil Gaiman)

insert into livros
(id_livros, titulo, autor)
VALUES
(10,'Mein Kampf','Adolf Hitler')


select * from livros

insert into usuarios
(id_usuarios, nome, idade)
VALUES
(1,'Dylan','14')

insert into usuarios
(id_usuarios, nome, idade)
VALUES
(2,'Mary','27')

insert into usuarios
(id_usuarios, nome, idade)
VALUES
(3,'Maya','32')

insert into dbo.usuarios
(id_usuarios, nome, idade)
VALUES
(4,'Oliver','13')

insert into usuarios
(id_usuarios, nome, idade)
VALUES
(5,'Giulia','18')

insert into usuarios
(id_usuarios, nome, idade)
VALUES
(6,'Giovanni','19')

insert into usuarios
(id_usuarios, nome, idade)
VALUES
(7,'Noah','22')

insert into usuarios
(id_usuarios, nome, idade)
VALUES
(8,'Henrique','17')

insert into usuarios
(id_usuarios, nome, idade)
VALUES
(9,'Rafael','22')

insert into usuarios
(id_usuarios, nome, idade)
VALUES
(10,'Kaua','21')

select * from usuarios

insert into emprestimos
(id_emprestimos, id_livros, id_usuarios, data_emprestimo)
VALUES
(1,1,3,'03/04/2022')

insert into emprestimos
(id_emprestimos, id_livros, id_usuarios, data_emprestimo)
VALUES
(2,6,3,'24/02/2022')

insert into emprestimos
(id_emprestimos, id_livros, id_usuarios, data_emprestimo)
VALUES
(3,2,2,'02/02/2022')

insert into emprestimos
(id_emprestimos, id_livros, id_usuarios, data_emprestimo)
VALUES
(4,9,7,'01/03/2022')

insert into emprestimos
(id_emprestimos, id_livros, id_usuarios, data_emprestimo)
VALUES
(5,8,6,'07/05/2022')

insert into emprestimos
(id_emprestimos, id_livros, id_usuarios, data_emprestimo)
VALUES
(6,4,9,'08/05/2022')

insert into emprestimos
(id_emprestimos, id_livros, id_usuarios, data_emprestimo)
VALUES
(7,5,5,'08/05/2022')

insert into emprestimos
(id_emprestimos, id_livros, id_usuarios, data_emprestimo)
VALUES
(8,10,1,'09/05/2022')

insert into emprestimos
(id_emprestimos, id_livros, id_usuarios, data_emprestimo)
VALUES
(9,5,2,'09/05/2022')

insert into emprestimos
(id_emprestimos, id_livros, id_usuarios, data_emprestimo)
VALUES
(10,8,10,'24/05/2022')


select l.id_livros, l.titulo, u.id_usuarios, u.nome,u.idade, e.data_emprestimo
	from emprestimos as e
	inner join usuarios as u on u.id_usuarios = e.id_emprestimos
	inner join livros as l on l.id_livros = e.id_usuarios
	where u.idade <18

select l.id_livros, l.titulo, u.id_usuarios, u.nome,u.idade, e.data_emprestimo
	from emprestimos as e
	inner join usuarios as u on u.id_usuarios = e.id_emprestimos
	inner join livros as l on l.id_livros = e.id_usuarios
