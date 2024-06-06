CREATE TABLE percurso.HistoricoEquipeMedica (
id_HistoricoEquipeMedica uuid DEFAULT gen_random_uuid() NOT NULL,
dho_Cadastro timestamp NOT NULL,
dho_Entrada timestamp NULL,
dho_Saida timestamp NULL,
cod_Integracao varchar(100) NOT NULL,
id_ModuloEquipeMedica uuid NOT NULL,
id_Cirurgia uuid NOT NULL,
CONSTRAINT HistoricoEquipeMedica_pkey PRIMARY KEY (id_HistoricoEquipeMedica)
);

ALTER TABLE percurso.HistoricoEquipeMedica ADD CONSTRAINT HistoricoEquipeMedica_fk1
FOREIGN KEY (id_ModuloEquipeMedica) REFERENCES percurso.ModuloEquipeMedica(id_ModuloEquipeMedica);

ALTER TABLE percurso.HistoricoEquipeMedica ADD CONSTRAINT HistoricoEquipeMedica_fk2
FOREIGN KEY (id_Cirurgia) REFERENCES percurso.Cirurgia(id_Cirurgia);
