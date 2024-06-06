CREATE TABLE percurso.ModuloEmergencia (
id_ModuloEmergencia uuid DEFAULT gen_random_uuid() NOT NULL,
des_Nome varchar(100) NOT NULL,
des_Mensagem varchar(255),
id_Modulo uuid NOT NULL,
CONSTRAINT ModuloEmergencia_pkey PRIMARY KEY (id_ModuloEmergencia)
);

ALTER TABLE percurso.ModuloEmergencia ADD CONSTRAINT ModuloEmergencia_fk1
FOREIGN KEY (id_Modulo) REFERENCES percurso.Modulos(id_Modulo);
