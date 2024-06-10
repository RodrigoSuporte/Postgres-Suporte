CREATE TABLE percurso.usuarios (
	id_usuario uuid DEFAULT gen_random_uuid() NOT NULL,
	des_nome varchar(100) NOT NULL,
	des_email varchar(100) NOT NULL,
	ddd_telefone varchar(4) NULL,
	num_telefone varchar(20) NULL,
	ddd_celular varchar(4) NULL,
	num_celular varchar(20) NULL,
	dho_inativacao timestamp NULL,
	CONSTRAINT usuarios_pk PRIMARY KEY (id_usuario)
);