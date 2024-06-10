CREATE TABLE percurso.tipomodulopessoas (
	id_tipomodulopessoa uuid DEFAULT gen_random_uuid() NOT NULL,
	des_nome varchar(100) NOT NULL,
	des_observacao varchar(255) NULL,
	dho_cadastro timestamp NOT NULL,
	id_modulo uuid NOT NULL,
	id_tipodocumento uuid NOT NULL,
	CONSTRAINT tipomodulopessoas_pkey PRIMARY KEY (id_tipomodulopessoa)
);

ALTER TABLE percurso.tipomodulopessoas ADD CONSTRAINT tipomodulopessoas_fk1 FOREIGN KEY (id_modulo) REFERENCES percurso.modulos(id_modulo);
ALTER TABLE percurso.tipomodulopessoas ADD CONSTRAINT tipomodulopessoas_tipodocumento_fk FOREIGN KEY (id_tipodocumento) REFERENCES percurso.tipodocumento(id_tipodocumento);