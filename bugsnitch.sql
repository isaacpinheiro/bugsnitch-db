create database bugsnitch;
use bugsnitch;

create table usuario(
	id_usuario serial,
	email varchar(60) not null,
	senha varchar(32) not null,
	primary key(id_usuario)
);

create table equipe(
	id_equipe serial,
	descricao varchar(140) not null,
	primary key(id_equipe)
);

create table usuario_equipe(
	usuario_equipe_id serial,
	id_usuario bigint unsigned not null,
	id_equipe bigint unsigned not null,
	constraint fk_usuario_equipe_id_usuario foreign key (id_usuario) references usuario(id_usuario),
	constraint fk_usuario_equipe_id_equipe foreign key (id_equipe) references equipe(id_equipe),
	primary key(usuario_equipe_id)
);

create table registro(
	id_registro serial,
	data_hora timestamp not null,
	resumo text not null,
	id_equipe bigint unsigned not null,
	constraint fk_registro_id_equipe foreign key (id_equipe) references equipe(id_equipe),
	primary key(id_registro)
);

create table anexo(
	id_anexo serial,
	arquivo text not null,
	id_registro bigint unsigned not null,
	constraint fk_anexo_id_registro foreign key (id_registro) references registro(id_registro),
	primary key(id_anexo)
);

