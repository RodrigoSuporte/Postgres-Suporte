CREATE TABLE percurso.modulos (
id_Modulo uuid DEFAULT gen_random_uuid() NOT NULL,
cod_done int4 NOT NULL,
num_prioridade int4 NULL,
num_posX int4 NOT NULL,
num_posY int4 NOT NULL,
id_Sala uuid NOT NULL,
id_Fluxo uuid NOT null,
CONSTRAINT Modulos_pkey PRIMARY KEY (id_Modulo)
);
 
ALTER TABLE percurso.Modulos ADD CONSTRAINT id_Modulo_fk1 FOREIGN KEY (id_Sala) REFERENCES percurso.Salas(id_Sala);

ALTER TABLE percurso.Modulos ADD CONSTRAINT id_Modulo_fk2 FOREIGN KEY (id_Fluxo) REFERENCES percurso.Fluxos(id_Fluxo);
