create database biblioteca;

use biblioteca;

show databases;

create table autor(
	id_autor int primary key,
    nome varchar(100) not null,
    nacionalidade varchar(50)
);

create table livro(
	id_livro int primary key,
    titulo varchar(150) not null,
    ano int,
    aditora varchar(180)
);

create table aluno(
	id_aluno int primary key,
    nome varchar(100) not null,
    email varchar(100) unique,
    curso varchar(50)
);

alter table aluno add telefone varchar(20);
alter table livro add isbn varchar(13);
alter table livro modify editora varchar(120);
alter table livro rename column ano to ano_publicacao;
alter table aluno drop telefone;

alter table livro add id_autor int;
alter table livro add foreign key (id_autor)
references livro (id_autor);
alter table livro modify editora varchar(120) not null;
alter table livro modify ano_publicacao date;
alter table livro add email varchar(100) unique;

drop table aluno;
drop table livro;
drop database biblioteca;