CREATE TABLE percurso.historicoequipemedica (
	id_historicoequipemedica uuid DEFAULT gen_random_uuid() NOT NULL,
	dho_cadastro timestamp NOT NULL,
	dho_entrada timestamp NULL,
	dho_saida timestamp NULL,
	cod_integracao varchar(100) NOT NULL,
	id_moduloequipemedica uuid NOT NULL,
	id_cirurgia uuid NOT NULL,
	id_usuario uuid NOT NULL,
	CONSTRAINT historicoequipemedica_pkey PRIMARY KEY (id_historicoequipemedica)
);

ALTER TABLE percurso.historicoequipemedica ADD CONSTRAINT historicoequipemedica_fk1 FOREIGN KEY (id_moduloequipemedica) REFERENCES percurso.moduloequipemedica(id_moduloequipemedica);
ALTER TABLE percurso.historicoequipemedica ADD CONSTRAINT historicoequipemedica_fk2 FOREIGN KEY (id_cirurgia) REFERENCES percurso.cirurgia(id_cirurgia);
ALTER TABLE percurso.historicoequipemedica ADD CONSTRAINT historicoequipemedica_usuarios_fk FOREIGN KEY (id_usuario) REFERENCES percurso.usuarios(id_usuario);