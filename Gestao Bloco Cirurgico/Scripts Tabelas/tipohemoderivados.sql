CREATE TABLE percurso.tipohemoderivados (
	tipohemoderivadosid uuid DEFAULT gen_random_uuid() NOT NULL,
	des_nome varchar(10) NOT NULL,
	des_descricao varchar(100) NOT NULL,
	des_corbotao varchar(8) NOT NULL,
	posicao int4 NOT NULL,
	dho_cadastro timestamp NOT NULL,
	moduloid uuid NOT NULL,
	CONSTRAINT tipohemoderivados_pk PRIMARY KEY (tipohemoderivadosid)
);

ALTER TABLE percurso.tipohemoderivados ADD CONSTRAINT tipohemoderivados_modulos_fk FOREIGN KEY (moduloid) REFERENCES percurso.modulos(id_modulo);