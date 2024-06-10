CREATE TABLE percurso.historicoacaoregistro (
	id_historicoacaoregistro uuid DEFAULT gen_random_uuid() NOT NULL,
	dho_registro timestamp NOT NULL,
	id_tipoacaoregistro uuid NOT NULL,
	id_cirurgia uuid NOT NULL,
	id_usuario uuid NOT NULL,
	CONSTRAINT historicoacaoresgistro_pkey PRIMARY KEY (id_historicoacaoregistro)
);

ALTER TABLE percurso.historicoacaoregistro ADD CONSTRAINT historicoacaoregistro_fk1 FOREIGN KEY (id_tipoacaoregistro) REFERENCES percurso.tipoacaoregistro(id_tipoacaoregistro);
ALTER TABLE percurso.historicoacaoregistro ADD CONSTRAINT historicoacaoregistro_fk2 FOREIGN KEY (id_cirurgia) REFERENCES percurso.cirurgia(id_cirurgia);
ALTER TABLE percurso.historicoacaoregistro ADD CONSTRAINT historicoacaoregistro_usuarios_fk FOREIGN KEY (id_usuario) REFERENCES percurso.usuarios(id_usuario);