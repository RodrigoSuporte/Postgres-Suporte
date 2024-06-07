CREATE TABLE percurso.tipoequipamentos (
	id_tipoequipamento uuid DEFAULT gen_random_uuid() NOT NULL,
	des_nome varchar(10) NOT NULL,
	des_descricao varchar(100) NOT NULL,
	des_corbotao varchar NOT NULL,
	posicao int4 NOT NULL,
	dho_cadastro timestamp NOT NULL,
	id_modulo uuid NOT NULL,
	CONSTRAINT tipoequipamentos_pk PRIMARY KEY (id_tipoequipamento)
);

ALTER TABLE percurso.tipoequipamentos ADD CONSTRAINT tipoequipamentos_modulos_fk FOREIGN KEY (id_modulo) REFERENCES percurso.modulos(id_modulo);