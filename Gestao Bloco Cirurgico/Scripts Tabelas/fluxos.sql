CREATE TABLE percurso.Fluxos (
id_Fluxo uuid DEFAULT gen_random_uuid() NOT NULL,
id_GrupoModulo uuid NOT NULL,
id_Sala uuid NOT NULL,
CONSTRAINT Fluxos_pkey PRIMARY KEY (id_Fluxo)
);
 
ALTER TABLE percurso.Fluxos ADD CONSTRAINT id_Fluxo_fk1 FOREIGN KEY (id_GrupoModulo) REFERENCES percurso.GruposModulos(id_GrupoModulo);

ALTER TABLE percurso.Fluxos ADD CONSTRAINT id_Fluxo_fk2 FOREIGN KEY (id_Sala) REFERENCES percurso.Salas(id_Sala);