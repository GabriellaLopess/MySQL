create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Carnoso",true);
insert into tb_categoria (descricao, ativo) values ("Seco",true);
insert into tb_categoria (descricao, ativo) values ("Exotica",true);
insert into tb_categoria (descricao, ativo) values ("Tropical",true);
select * from tb_categoria;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto,categoria_id) values ("Romã",60.00,1, 3);
insert into tb_produtos (nome, preco, qtProduto,categoria_id) values ("Abacaxi",50.00,1, 4);
insert into tb_produtos (nome, preco, qtProduto,categoria_id) values ("Lichia",50.00,10, 3);
insert into tb_produtos (nome, preco, qtProduto,categoria_id) values ("Laranja",40.00,6, 1);
insert into tb_produtos (nome, preco, qtProduto,categoria_id) values ("Maça",40.00,6, 1);
insert into tb_produtos (nome, preco, qtProduto,categoria_id) values ("Castanhas",50.00,20, 2);

select* from tb_produtos where preco > 50;

select* from tb_produtos where preco between 3 and 60;

select* from tb_produtos where nome like "%C";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
