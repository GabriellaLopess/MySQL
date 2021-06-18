create database db_servicoRH ;

use db_servicoRH;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null, 
salario decimal(5,5) not null,
funcao varchar(255) not null,
idade varchar(255) not null,

primary key (id)
);
alter table tb_funcionarios modify salario decimal (5,3); 

insert into tb_funcionarios(nome, salario, funcao, idade) values ("Maria", "3.000","Diretora de recursos humanos", 25) ;
insert into tb_funcionarios(nome, salario, funcao,idade) values ("Pedro", "2.500", "Consultor de recursos humanos", 26) ;
insert into tb_funcionarios(nome, salario,funcao,idade) values ("Tiago", "2.500","Consultor de recursos humanos", 25) ;
insert into tb_funcionarios(nome, salario,funcao,idade) values ("Tarantino", "2.900", "Gestor de recrutamento e seleção", 30) ;
insert into tb_funcionarios(nome, salario,funcao,idade) values ("Selena", "2.500","Analista de recursos humanos", 27) ;
select * from tb_funcionarios;




select * from tb_funcionarios where salario > 2.000;
select * from tb_funcionarios where salario < 2.000;

update tb_funcionarios set salario = 2.600 where id = 5; 