CREATE TABLE percurso.RelacionaAcaoResgistro (
id_RelacionaAcaoRegistro uuid DEFAULT gen_random_uuid() NOT NULL,
id_historicoacaoregistro uuid NOT NULL,
id_historicoacaoopcional uuid NOT NULL,
CONSTRAINT RelacionaAcaoResgistro_pkey PRIMARY KEY (id_RelacionaAcaoRegistro)
);

ALTER TABLE percurso.RelacionaAcaoResgistro ADD CONSTRAINT RelacionaAcaoRegistro_fk1
FOREIGN KEY (id_historicoacaoregistro) REFERENCES percurso.historicoacaoregistro(id_historicoacaoregistro);
			 
ALTER TABLE percurso.RelacionaAcaoResgistro ADD CONSTRAINT RelacionaAcaoRegistro_fk2
FOREIGN KEY (id_historicoacaoopcional) REFERENCES percurso.historicoacaoopcional(id_historicoacaoopcional);