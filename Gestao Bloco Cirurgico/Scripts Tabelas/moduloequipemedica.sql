CREATE TABLE percurso.ModuloEquipeMedica (
id_ModuloEquipeMedica uuid DEFAULT gen_random_uuid() NOT NULL,
id_Modulo uuid NOT NULL,
des_nome varchar(100) NOT NULL,
cod_espec_externa varchar(100) NOT NULL,
des_mensagem varchar(100) NOT null,
CONSTRAINT ModuloEquipeMedica_pkey PRIMARY KEY (id_ModuloEquipeMedica)
);

ALTER TABLE percurso.ModuloEquipeMedica ADD CONSTRAINT ModuloEquipeMedica_fk1
FOREIGN KEY (id_Modulo) REFERENCES percurso.Modulos(id_Modulo);