CREATE TABLE percurso.historicopessoas (
	id_historicopessoa uuid DEFAULT gen_random_uuid() NOT NULL,
	des_nomepessoa varchar(100) NOT NULL,
	des_especialidade varchar(100) NOT NULL,
	dho_entrada timestamp NULL,
	dho_saida timestamp NULL,
	cod_pessoa_externa varchar(100) NOT NULL,
	id_tipomodulopessoa uuid NOT NULL,
	id_cirurgia uuid NOT NULL,
	id_usuario uuid NOT NULL,
	CONSTRAINT historicopessoas_pkey PRIMARY KEY (id_historicopessoa)
);

ALTER TABLE percurso.historicopessoas ADD CONSTRAINT historicopessoas_fk1 FOREIGN KEY (id_tipomodulopessoa) REFERENCES percurso.tipomodulopessoas(id_tipomodulopessoa);
ALTER TABLE percurso.historicopessoas ADD CONSTRAINT historicopessoas_fk2 FOREIGN KEY (id_cirurgia) REFERENCES percurso.cirurgia(id_cirurgia);
ALTER TABLE percurso.historicopessoas ADD CONSTRAINT historicopessoas_usuarios_fk FOREIGN KEY (id_usuario) REFERENCES percurso.usuarios(id_usuario);