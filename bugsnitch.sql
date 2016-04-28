create database bugsnitch;
use bugsnitch;

create table usuario(
	id_usuario serial,
	nome varchar(60) not null,
	email varchar(60) not null unique, -- e-mails nao podem ser repetidos
	senha varchar(32) not null,
	primary key(id_usuario)
);

create table projeto(
	id_projeto serial,
	descricao varchar(140) not null,
	area varchar(50) not null, -- backend, frontend, banco de dados, etc.
	status varchar(12) not null, -- Em Andamento, Cancelado, Concluído
	data_inicio timestamp not null,
	data_fim timestamp,
	primary key(id_projeto)
);

create table usuario_projeto(
	id_usuario_projeto serial,
	status boolean not null, -- true -> administrador false -> contribuidor
	id_usuario bigint unsigned not null,
	id_projeto bigint unsigned not null,
	constraint fk_usuario_projeto_id_usuario foreign key (id_usuario) references usuario(id_usuario),
	constraint fk_usuario_projeto_id_projeto foreign key (id_projeto) references projeto(id_projeto),
	primary key(id_usuario_projeto)
);

create table registro(
	id_registro serial,
	data_hora timestamp not null,
	resumo text not null,
	prioridade varchar(50) not null,
	severidade varchar(50) not null,
	status boolean not null, -- true -> resolvido false -> não resolvido
	id_usuario_projeto bigint unsigned not null,
	constraint fk_registro_id_usuario_projeto foreign key (id_usuario_projeto) references usuario_projeto(id_usuario_projeto),
	primary key(id_registro)
);

create table comentario(
	id_comentario serial,
	texto_comentario text not null,
	data_hora timestamp not null,
	id_registro bigint unsigned not null,
	constraint fk_comentario_id_registro foreign key (id_registro) references registro(id_registro),
	id_usuario_projeto bigint unsigned not null,
	constraint fk_comentario_id_usuario_projeto foreign key (id_usuario_projeto) references usuario_projeto(id_usuario_projeto),
	primary key(id_comentario)
);

create table anexo(
	id_anexo serial,
	arquivo text not null,
	id_registro bigint unsigned not null,
	constraint fk_anexo_id_registro foreign key (id_registro) references registro(id_registro),
	id_comentario bigint unsigned,
	constraint fk_anexo_id_comentario foreign key (id_comentario) references comentario(id_comentario),
	primary key(id_anexo)
);

create table contato(
	id_contato serial,
	nome varchar(100) not null,
	telefone varchar(13),
	email varchar(100),
	mensagem text,
	primary key(id_contato)
);

