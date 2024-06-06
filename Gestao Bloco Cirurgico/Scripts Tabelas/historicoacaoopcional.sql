CREATE TABLE percurso.HistoricoAcaoOpcional (
id_HistoricoAcaoOpcional uuid DEFAULT gen_random_uuid() NOT NULL,
dho_Registro timestamp NOT NULL,
id_TipoAcaoOpcional uuid NOT NULL,
CONSTRAINT HistoricoAcaoOpcional_pkey PRIMARY KEY (id_HistoricoAcaoOpcional)
);
 
ALTER TABLE percurso.HistoricoAcaoOpcional ADD CONSTRAINT HistoricoAcaoOpcional_fk1 FOREIGN KEY (id_TipoAcaoOpcional) REFERENCES percurso.TipoAcaoOpcional(id_TipoAcaoOpcional);
