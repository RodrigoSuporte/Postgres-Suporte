CREATE TABLE percurso.agendamentodadosclinicos (
id_agendamentodadosclinicos uuid DEFAULT gen_random_uuid() NOT NULL,
des_condicaopaciente varchar(300) NULL,
des_alergias varchar(600) NULL,
id_cidprincipal uuid NOT NULL,
num_caratercirurgia int4 NULL,
num_reservauti int4 NULL,
num_isolamento int4 NULL,
num_biopsiaisolamento int4 NULL,
num_banhoclorexidina int4 NULL ,
num_lateralidade int4 NULL,
des_restricao varchar(600) NULL,
id_cirurgia uuid NOT NULL,
CONSTRAINT agendamentodadosclinicos_pkey PRIMARY KEY (id_agendamentodadosclinicos)
);

ALTER TABLE percurso.agendamentodadosclinicos ADD CONSTRAINT agendamentodadosclinicos_fk1
FOREIGN KEY (id_cirurgia) REFERENCES percurso.cirurgia(id_cirurgia);