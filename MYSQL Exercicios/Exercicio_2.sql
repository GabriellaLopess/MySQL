create database db_ecommerce;

use db_ecommerce;
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null ,
preco decimal (5,2) not null,
localdeorigem varchar(255) not null,
tamanho char not null,
marca varchar(255) not null ,
primary key (id)  );
alter table tb_produtos modify tamanho varchar (255); 
insert into tb_produtos(nome,preco,localdeorigem,tamanho,marca) values ("Regata",705.00,"Brasil","P","Gucci");
insert into tb_produtos(nome,preco,localdeorigem,tamanho,marca) values ("Calça Jeans",200.00,"China","M","Versace");
insert into tb_produtos(nome,preco,localdeorigem,tamanho,marca) values ("Mini-saia",600.00,"Estados Unidos","G","Renner");
insert into tb_produtos(nome,preco,localdeorigem,tamanho,marca) values ("Meia",150.00,"Tailandia","P","Gucci");
insert into tb_produtos(nome,preco,localdeorigem,tamanho,marca) values ("Jaqueta de couro",970.00,"França","M","Baw") ;
insert into tb_produtos(nome,preco,localdeorigem,tamanho,marca) values ("Bolsa",800.00,"Inglaterra","38x34","Louis Vuitton") ;
insert into tb_produtos(nome,preco,localdeorigem,tamanho,marca) values ("Salto-alto",900.00,"Italia","36","Prada") ;
insert into tb_produtos(nome,preco,localdeorigem,tamanho,marca) values ("perfume",400.00,"França","200ml","Chanel") ;

select * from tb_produtos;

 select * from tb_produtos where preco > 600.00;
 select * from tb_produtos where preco < 600.00;
 
 update tb_produtos set preco = 600 where id = 8; 