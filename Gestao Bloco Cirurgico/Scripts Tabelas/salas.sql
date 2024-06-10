CREATE TABLE percurso.salas (
	id_sala uuid DEFAULT gen_random_uuid() NOT NULL,
	des_nome varchar(100) NOT NULL,
	dho_iniciovalidade timestamp NOT NULL,
	dho_fimvalidade timestamp NULL,
	num_dddtelefone varchar(4) NULL,
	num_telefone varchar(20) NULL,
	num_ramal varchar(20) NULL,
	cod_situacao int4 NOT NULL,
	id_bloco uuid NOT NULL,
	dho_ultatualizacao timestamp NOT NULL,
	dho_inativacao timestamp NULL,
	dho_cadastro timestamp NOT NULL,
	des_observacao varchar(255) NULL,
	CONSTRAINT salas_pkey PRIMARY KEY (id_sala)
);

create trigger atualiza_currentdate_sala before
insert
    or
update
    on
    percurso.salas for each row execute function percurso.atualiza_dho_ultatualizacao();


ALTER TABLE percurso.salas ADD CONSTRAINT salas_fk1 FOREIGN KEY (id_bloco) REFERENCES percurso.blocos(id_bloco);