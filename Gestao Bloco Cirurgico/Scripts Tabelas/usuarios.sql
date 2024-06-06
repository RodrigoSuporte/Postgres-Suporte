CREATE TABLE percurso.usuarios (
id_usuario varchar(36) NOT NULL,
des_nome varchar(100) NOT NULL,
des_email varchar(100) NOT NULL,
ddd_telefon varchar(4) NULL,
num_telefone varchar(20) NULL,
ddd_celular varchar(4) NULL,
num_celular varchar(20) NULL,
dho_inativacao timestamp NULL,
CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario)
);