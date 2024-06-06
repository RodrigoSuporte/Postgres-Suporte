CREATE TABLE percurso.blocos (
id_bloco uuid DEFAULT gen_random_uuid() NOT NULL,
des_nome varchar(100) NOT NULL,
dho_iniciovalidade timestamp NOT NULL,
dho_fimvalidade timestamp NULL,
id_unidade uuid NOT NULL,
dho_ultatualizacao timestamp NOT NULL,
dho_inativacao timestamp NULL,
cod_situacao int4 NOT NULL,
CONSTRAINT blocos_pkey PRIMARY KEY (id_bloco)
);
  
ALTER TABLE percurso.blocos ADD CONSTRAINT blocos_fk1 FOREIGN KEY (id_unidade) REFERENCES percurso.unidades(id_unidade);