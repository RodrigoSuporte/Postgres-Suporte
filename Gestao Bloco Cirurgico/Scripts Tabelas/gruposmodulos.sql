CREATE TABLE percurso.GruposModulos (
id_GrupoModulo uuid DEFAULT gen_random_uuid() NOT NULL,
id_Grupo uuid NOT NULL,
id_Modulo uuid NOT NULL,
CONSTRAINT GruposModulos_pkey PRIMARY KEY (id_GrupoModulo)
);
 
ALTER TABLE percurso.GruposModulos ADD CONSTRAINT id_GrupoModulo_fk1 FOREIGN KEY (id_Grupo) REFERENCES percurso.Grupos(id_Grupo);
ALTER TABLE percurso.GruposModulos ADD CONSTRAINT id_GrupoModulo_fk2 FOREIGN KEY (id_Modulo) REFERENCES percurso.Modulos(id_Modulo);
