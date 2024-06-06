CREATE TABLE percurso.idiomas (
id_idioma uuid DEFAULT gen_random_uuid() NOT NULL,
des_idioma varchar(100) NOT NULL,
des_codigoidioma varchar(50) NOT NULL,
cod_situacao int4 NULL,
CONSTRAINT idiomas_pkey PRIMARY KEY (id_idioma)
);
