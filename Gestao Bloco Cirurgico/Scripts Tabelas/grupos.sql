CREATE TABLE percurso.Grupos (
id_Grupo uuid DEFAULT gen_random_uuid() NOT NULL,
cod_done int4 NULL,
num_prioridade int4 NULL,
id_Sala uuid NOT NULL,
CONSTRAINT GruposModulosModulos_pkey PRIMARY KEY (id_Grupo)
);
 
ALTER TABLE percurso.Grupos ADD CONSTRAINT Grupo_fk1 FOREIGN KEY (id_Sala) REFERENCES percurso.Salas(id_Sala);