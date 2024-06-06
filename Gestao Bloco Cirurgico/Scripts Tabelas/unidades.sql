CREATE TABLE percurso.unidades (
id_unidade uuid DEFAULT gen_random_uuid() NOT NULL,
id_empresa uuid NOT NULL,
des_nome varchar(100) NOT NULL,
des_numcnpj varchar(50) NOT NULL,
num_dddtelfone varchar(4) NULL,
num_telefone varchar(20) NULL,
num_dddcelular varchar(4) NULL,
num_telefonecelular varchar(20) NULL,
des_cep varchar(50) NOT NULL,
des_uf varchar(4) NOT NULL,
des_cidade varchar(100) NOT NULL,
des_bairro varchar(100) NOT NULL,
des_endereco varchar(100) NOT NULL,
des_email varchar(100) NOT NULL,
num_numero varchar(10) NOT NULL,
des_complementoendereco varchar(100) NULL,
dho_cadastro timestamp NOT NULL,
dho_ultatualizacao timestamp NOT NULL,
cod_situacao int4 NOT NULL,
dho_inativacao timestamp NULL,
CONSTRAINT unidade_pkey PRIMARY KEY (id_unidade)
);

ALTER TABLE percurso.unidades ADD CONSTRAINT unidades_fk1 FOREIGN KEY (id_empresa) REFERENCES percurso.empresas(id_empresa);
