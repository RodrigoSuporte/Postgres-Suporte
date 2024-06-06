CREATE TABLE percurso.HistoricoChamadas (
id_RegistroChamada uuid DEFAULT gen_random_uuid() NOT NULL,
dho_Chamada timestamp NOT NULL,
dho_Entrada timestamp NULL,
dho_Saida timestamp NULL,
cod_externo varchar(100) NOT NULL,
id_Cirurgia uuid NOT NULL,
id_ModuloChamada uuid NOT NULL,
CONSTRAINT HistoricoChamadas_pkey PRIMARY KEY (id_RegistroChamada)
);

ALTER TABLE percurso.HistoricoChamadas ADD CONSTRAINT HistoricoChamadas_fk1
FOREIGN KEY (id_Cirurgia) REFERENCES percurso.Cirurgia(id_Cirurgia);

ALTER TABLE percurso.HistoricoChamadas ADD CONSTRAINT HistoricoChamadas_fk2
FOREIGN KEY (id_ModuloChamada) REFERENCES percurso.ModuloChamadas(id_ModuloChamada);