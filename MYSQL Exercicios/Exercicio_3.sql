create database db_escola;

use db_escola;
create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null ,
nota decimal (5,2) not null,
genero varchar(255) not null,
turma varchar(255) not null,
responsavel varchar(255) not null ,
primary key (id)  );

insert into tb_alunos(nome,genero,responsavel,turma,nota) values ("Renata da Cruz","Feminino","Bianca da Cruz","SUPER A",10.0);
insert into tb_alunos(nome,genero,responsavel,turma,nota) values ("Tiago Ferreira","Masculino","Taina Ferreira","SUPER B",9.0);
insert into tb_alunos(nome,genero,responsavel,turma,nota) values ("Leticia Jesus da Silva","Feminino","Rodrigo Jesus da Silva","SUPER A",7.0);
insert into tb_alunos(nome,genero,responsavel,turma,nota) values ("Luz Siqueira","Não-Binarie","Paz Siqueira","SUPER B",10.0);
insert into tb_alunos(nome,genero,responsavel,turma,nota) values ("Cíntia Pimenta","Feminino","Carlos Pimenta","SUPER A",8.0);
insert into tb_alunos(nome,genero,responsavel,turma,nota) values ("Ednaldo Pereira","Masculino","Patricia Pereira","SUPER B",10.0);
insert into tb_alunos(nome,genero,responsavel,turma,nota) values ("Gabriel Monteiro","Masculino","Claudia Monteiro","SUPER A",4.0);
insert into tb_alunos(nome,genero,responsavel,turma,nota) values ("Silvio Santos","Masculino","Rebeca Abravanel","SUPER B",5.5);

select * from tb_alunos;

 select * from tb_alunos where nota > 7.0;
 select * from tb_alunos where nota < 7.0;
 
 update tb_alunos set nota = 8.8 where id = 5; 