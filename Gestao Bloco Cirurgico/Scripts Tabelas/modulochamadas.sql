CREATE TABLE percurso.ModuloChamadas (
id_ModuloChamada uuid DEFAULT gen_random_uuid() NOT NULL,
num_tipo int4 NOT null,
des_nome varchar(100) NOT NULL,
des_nomeArea varchar(100) NOT NULL,
cod_Area_externa varchar(100) NOT NULL,
des_mensagem varchar(255) NULL,
id_Modulo uuid NOT NULL,
CONSTRAINT ModuloChamadas_pkey PRIMARY KEY (id_ModuloChamada)
);

ALTER TABLE percurso.ModuloChamadas ADD CONSTRAINT ModuloChamada_fk1
FOREIGN KEY (id_Modulo) REFERENCES percurso.Modulos(id_Modulo);
