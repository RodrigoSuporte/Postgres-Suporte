CREATE TABLE percurso.HistoricoEmergencia (
id_HistoricoEmergencia uuid DEFAULT gen_random_uuid() NOT NULL,
dho_Chamada TimeStamp NOT NULL,
dho_Entrada TimeStamp NULL,
dho_Saida TimeStamp NULL,
des_cod_externo varchar(100) NOT NULL,
id_Cirurgia uuid NOT NULL,
id_ModuloEmergencia uuid NOT NULL,
CONSTRAINT HistoricoEmergencia_pkey PRIMARY KEY (id_HistoricoEmergencia)
);

ALTER TABLE percurso.HistoricoEmergencia ADD CONSTRAINT HistoricoEmergencia_fk1
FOREIGN KEY (id_Cirurgia) REFERENCES percurso.Cirurgia(id_Cirurgia);

ALTER TABLE percurso.HistoricoEmergencia ADD CONSTRAINT HistoricoEmergencia_fk2
FOREIGN KEY (id_ModuloEmergencia) REFERENCES percurso.ModuloEmergencia(id_ModuloEmergencia);