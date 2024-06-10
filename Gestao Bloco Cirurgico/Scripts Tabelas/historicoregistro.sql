CREATE TABLE percurso.historicoregistro (
	historicoregistroid uuid NOT NULL,
	tipofarmacoid uuid NULL,
	tipoopmesid uuid NULL,
	tipoequipamentosid uuid NULL,
	tipohemoderivadosid uuid NULL,
	cirurgiaid uuid NOT NULL,
	dho_registro timestamp NULL,
	id_usuario uuid NOT NULL,
	CONSTRAINT historicoregistro_pk PRIMARY KEY (historicoregistroid)
);

ALTER TABLE percurso.historicoregistro ADD CONSTRAINT historicoregistro_cirurgia_fk FOREIGN KEY (cirurgiaid) REFERENCES percurso.cirurgia(id_cirurgia);
ALTER TABLE percurso.historicoregistro ADD CONSTRAINT historicoregistro_tipoequipamentos_fk FOREIGN KEY (tipoequipamentosid) REFERENCES percurso.tipoequipamentos(id_tipoequipamento);
ALTER TABLE percurso.historicoregistro ADD CONSTRAINT historicoregistro_tipofarmaco_fk FOREIGN KEY (tipofarmacoid) REFERENCES percurso.tipofarmaco(tipofarmacoid);
ALTER TABLE percurso.historicoregistro ADD CONSTRAINT historicoregistro_tipohemoderivados_fk FOREIGN KEY (tipohemoderivadosid) REFERENCES percurso.tipohemoderivados(tipohemoderivadosid);
ALTER TABLE percurso.historicoregistro ADD CONSTRAINT historicoregistro_tipoopmes_fk FOREIGN KEY (tipoopmesid) REFERENCES percurso.tipoopmes(tipoopmeid);
ALTER TABLE percurso.historicoregistro ADD CONSTRAINT historicoregistro_usuarios_fk FOREIGN KEY (id_usuario) REFERENCES percurso.usuarios(id_usuario);