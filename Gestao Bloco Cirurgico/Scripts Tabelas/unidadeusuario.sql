CREATE TABLE percurso.unidadeusuario (
	id_unidadeusuario uuid DEFAULT gen_random_uuid() NOT NULL,
	id_unidade uuid NOT NULL,
	id_usuario uuid NOT NULL,
	CONSTRAINT unidadeusuario_pkey PRIMARY KEY (id_unidadeusuario)
);

ALTER TABLE percurso.unidadeusuario ADD CONSTRAINT unidadeusuario_fk1 FOREIGN KEY (id_unidade) REFERENCES percurso.unidades(id_unidade);
ALTER TABLE percurso.unidadeusuario ADD CONSTRAINT unidadeusuario_usuarios_fk FOREIGN KEY (id_usuario) REFERENCES percurso.usuarios(id_usuario);