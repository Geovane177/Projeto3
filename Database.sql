create database tarefasDB character set utf8mb4
collate utf8mb4_unicode_ci;

use tarefasDB;

create table if not exists usuarios(
id int primary key auto_increment not null,
nome varchar(250) not null,
senha varchar(250) not null,
cpf varchar(11) not null unique
);

create table if not exists tarefas(
usuario_id int not null,
id int not null primary key auto_increment,
titulo varchar(150) not null,
descricao varchar(250) not null,
estado varchar(30) not null,
foreign key (usuario_id) references usuarios(id)
);

insert into tarefas (titulo, descricao, estado) values ("limpeza", "limpar a casa", "pendente");
