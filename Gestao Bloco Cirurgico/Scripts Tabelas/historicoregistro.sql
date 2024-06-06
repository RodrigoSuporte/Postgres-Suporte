-- percurso.historicoregistro definition

-- Drop table

-- DROP TABLE percurso.historicoregistro;

CREATE TABLE percurso.historicoregistro (
	historicoregistroid uuid NOT NULL,
	tipofarmacoid uuid NULL,
	tipoopmesid uuid NULL,
	tipoequipamentosid uuid NULL,
	tipohemoderivadosid uuid NULL,
	cirurgiaid uuid NOT NULL,
	dho_registro timestamp NULL,
	CONSTRAINT historicoregistro_pk PRIMARY KEY (historicoregistroid)
);


-- percurso.historicoregistro foreign keys

ALTER TABLE percurso.historicoregistro ADD CONSTRAINT historicoregistro_cirurgia_fk FOREIGN KEY (cirurgiaid) REFERENCES percurso.cirurgia(id_cirurgia);
ALTER TABLE percurso.historicoregistro ADD CONSTRAINT historicoregistro_tipoequipamentos_fk FOREIGN KEY (tipoequipamentosid) REFERENCES percurso.tipoequipamentos(id_tipoequipamento);
ALTER TABLE percurso.historicoregistro ADD CONSTRAINT historicoregistro_tipofarmaco_fk FOREIGN KEY (tipofarmacoid) REFERENCES percurso.tipofarmaco(tipofarmacoid);
ALTER TABLE percurso.historicoregistro ADD CONSTRAINT historicoregistro_tipohemoderivados_fk FOREIGN KEY (tipohemoderivadosid) REFERENCES percurso.tipohemoderivados(tipohemoderivadosid);
ALTER TABLE percurso.historicoregistro ADD CONSTRAINT historicoregistro_tipoopmes_fk FOREIGN KEY (tipoopmesid) REFERENCES percurso.tipoopmes(tipoopmeid);