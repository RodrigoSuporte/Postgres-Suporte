CREATE TABLE percurso.historicochamadas (
	id_registrochamada uuid DEFAULT gen_random_uuid() NOT NULL,
	dho_chamada timestamp NOT NULL,
	dho_entrada timestamp NULL,
	dho_saida timestamp NULL,
	cod_externo varchar(100) NOT NULL,
	id_cirurgia uuid NOT NULL,
	id_modulochamada uuid NOT NULL,
	id_usuario uuid NOT NULL,
	CONSTRAINT historicochamadas_pkey PRIMARY KEY (id_registrochamada)
);


ALTER TABLE percurso.historicochamadas ADD CONSTRAINT historicochamadas_fk1 FOREIGN KEY (id_cirurgia) REFERENCES percurso.cirurgia(id_cirurgia);
ALTER TABLE percurso.historicochamadas ADD CONSTRAINT historicochamadas_fk2 FOREIGN KEY (id_modulochamada) REFERENCES percurso.modulochamadas(id_modulochamada);
ALTER TABLE percurso.historicochamadas ADD CONSTRAINT historicochamadas_usuarios_fk FOREIGN KEY (id_usuario) REFERENCES percurso.usuarios(id_usuario);