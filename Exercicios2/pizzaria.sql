create database db_pizzaria_legal ;

use db_pizzaria_legal;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);


insert into tb_categoria (descricao,ativo) values ("Vegetariano",true);
insert into tb_categoria (descricao,ativo) values ("Vegano",true);
insert into tb_categoria (descricao,ativo) values ("Doce",true);
insert into tb_categoria (descricao,ativo) values ("Carne Vermelha",true);
insert into tb_categoria (descricao,ativo) values ("Carne Branca",true);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment, 
sabor varchar(225),
pedacos int,
preco decimal (6,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (sabor,pedacos,preco,categoria_id) values ("Calabresa", 8,30.00,4) ;
insert into tb_pizza (sabor,pedacos,preco,categoria_id) values ("Marguerita", 8,40.00,1) ;
insert into tb_pizza (sabor,pedacos,preco,categoria_id) values ("Chocolate", 4,25.00,3) ;
insert into tb_pizza (sabor,pedacos,preco,categoria_id) values ("Frango com catupiry",8,45.00,5) ;
insert into tb_pizza (sabor,pedacos,preco,categoria_id) values ("Palmito", 8,60.00,2) ;



select* from tb_pizza where preco > 45.00;

select* from tb_pizza where preco between 29.00 and 60;

select* from tb_pizza where sabor like "%c";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;