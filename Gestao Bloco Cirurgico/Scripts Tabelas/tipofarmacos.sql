CREATE TABLE percurso.tipofarmaco (
	tipofarmacoid uuid DEFAULT gen_random_uuid() NOT NULL,
	des_nome varchar(10) NOT NULL,
	des_descricao varchar(100) NOT NULL,
	des_corbotao varchar(8) NOT NULL,
	posicao int4 NOT NULL,
	dho_cadastro timestamp NOT NULL,
	moduloid uuid NOT NULL,
	CONSTRAINT tipofarmaco_pk PRIMARY KEY (tipofarmacoid)
);

ALTER TABLE percurso.tipofarmaco ADD CONSTRAINT tipofarmaco_modulos_fk FOREIGN KEY (moduloid) REFERENCES percurso.modulos(id_modulo);