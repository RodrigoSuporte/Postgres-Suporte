CREATE TABLE percurso.historicoacaoopcional (
	id_historicoacaoopcional uuid DEFAULT gen_random_uuid() NOT NULL,
	dho_registro timestamp NOT NULL,
	id_tipoacaoopcional uuid NOT NULL,
	id_usuario uuid NOT NULL,
	id_cirurgia uuid NOT NULL,
	CONSTRAINT historicoacaoopcional_pkey PRIMARY KEY (id_historicoacaoopcional)
);

ALTER TABLE percurso.historicoacaoopcional ADD CONSTRAINT historicoacaoopcional_cirurgia_fk FOREIGN KEY (id_cirurgia) REFERENCES percurso.cirurgia(id_cirurgia);
ALTER TABLE percurso.historicoacaoopcional ADD CONSTRAINT historicoacaoopcional_fk1 FOREIGN KEY (id_tipoacaoopcional) REFERENCES percurso.tipoacaoopcional(id_tipoacaoopcional);
ALTER TABLE percurso.historicoacaoopcional ADD CONSTRAINT historicoacaoopcional_usuarios_fk FOREIGN KEY (id_usuario) REFERENCES percurso.usuarios(id_usuario);