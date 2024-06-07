CREATE TABLE percurso.tipoopmes (
	tipoopmeid uuid NOT NULL,
	des_nome varchar(10) NOT NULL,
	des_descricao varchar(100) NOT NULL,
	des_corbotao varchar(8) NOT NULL,
	posicao int4 NOT NULL,
	dho_cadastro timestamp NOT NULL,
	id_modulo uuid NOT NULL,
	CONSTRAINT tipoopmes_pk PRIMARY KEY (tipoopmeid)
);

ALTER TABLE percurso.tipoopmes ADD CONSTRAINT "moduloId" FOREIGN KEY (id_modulo) REFERENCES percurso.modulos(id_modulo);