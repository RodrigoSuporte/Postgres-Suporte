CREATE TABLE percurso.empresas (
	id_empresa uuid DEFAULT gen_random_uuid() NOT NULL,
	des_nome varchar(100) NOT NULL,
	des_razaosocial varchar(100) NOT NULL,
	des_numcnpj varchar(50) NOT NULL,
	num_dddtelefone varchar(4) NULL,
	num_telefone varchar(20) NULL,
	num_dddcelular varchar(4) NULL,
	num_telefonecelular varchar(20) NULL,
	des_cep varchar(50) NOT NULL,
	des_uf varchar(4) NOT NULL,
	des_cidade varchar(100) NOT NULL,
	des_bairro varchar(100) NOT NULL,
	des_endereco varchar(100) NULL,
	des_email varchar(100) NOT NULL,
	num_numero varchar(10) NULL,
	des_complementoendereco varchar(100) NULL,
	cod_situacao int4 NOT NULL,
	dho_cadastro timestamp NOT NULL,
	dho_ultatualizacao timestamp NOT NULL,
	dho_inativacao timestamp NULL,
	CONSTRAINT empresas_pkey PRIMARY KEY (id_empresa)
);

create trigger atualiza_currentdate_empresa before
insert
    or
update
    on
    percurso.empresas for each row execute function percurso.atualiza_dho_ultatualizacao();