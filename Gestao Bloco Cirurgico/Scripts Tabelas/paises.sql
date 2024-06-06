CREATE TABLE percurso.paises (
id_pais uuid DEFAULT gen_random_uuid() NOT NULL,
num_codigo int4 NOT NULL,
des_nome varchar(80) NOT NULL,
cod_situacao int4 NULL,
id_idioma uuid NULL,
CONSTRAINT paises_pkey PRIMARY KEY (id_pais)
);

ALTER TABLE percurso.paises ADD CONSTRAINT paises_fk1 FOREIGN KEY (id_idioma) REFERENCES percurso.idiomas(id_idioma);