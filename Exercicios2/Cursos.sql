create database db_cursoDaMinhaVida ;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Linguagens de programação",true);
insert into tb_categoria (descricao, ativo) values ("Front-end",true);
insert into tb_categoria (descricao, ativo) values ("UX & DESIGN",true);
insert into tb_categoria (descricao, ativo) values ("DevOps",true);
insert into tb_categoria (descricao, ativo) values ("MOBILE",true);

select * from tb_categoria;

create table tb_curso (
id bigint(5) auto_increment,
nome varchar (255) not null,
instrutor varchar(100),
duracao varchar(225),
atividades int not null,
preco decimal(6,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_curso (nome, instrutor, duracao, atividades,preco, categoria_id) values ("Java","Jefferson", "16hrs",81, 50.0, 1);
insert into tb_curso (nome, instrutor, duracao, atividades,preco, categoria_id) values ("Python","Pedro", "12hrs",31, 60.0, 1);
insert into tb_curso (nome, instrutor, duracao, atividades,preco, categoria_id) values ("HTML e CSS","Patrick e Peter","30hrs",80, 100.0, 2);
insert into tb_curso (nome, instrutor, duracao, atividades,preco, categoria_id) values ("Angular","Caio", "26hrs",81, 50.0, 2);
insert into tb_curso (nome, instrutor, duracao, atividades,preco, categoria_id) values ("UI - User Interface","Tainá","20hrs",60, 50.0, 3);
insert into tb_curso (nome, instrutor, duracao, atividades,preco, categoria_id) values ("UX - User Experience","Caio e Tainá", "20hrs",60, 50.0, 3);
insert into tb_curso (nome, instrutor, duracao, atividades,preco, categoria_id) values ("Linux","Lucas","20hrs",80, 70.0, 4);
insert into tb_curso (nome, instrutor, duracao, atividades,preco, categoria_id) values ("Multiplataforma","Kaique", "12hrs",81, 50.0, 5);




select* from tb_curso where preco > 50;

select* from tb_curso where preco between 3 and 60;

select* from tb_curso where nome like "%J%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;