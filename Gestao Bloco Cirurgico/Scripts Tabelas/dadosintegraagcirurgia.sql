CREATE TABLE percurso.dadosintegraagcirurgia (
	"id_dadosIntegraAgCirurgia" uuid DEFAULT gen_random_uuid() NOT NULL,
	id_cirurgia uuid NOT NULL,
	dadoscirurgia json NOT NULL,
	CONSTRAINT agendamentodadosclinicos_pkey PRIMARY KEY ("id_dadosIntegraAgCirurgia")
);

ALTER TABLE percurso.dadosintegraagcirurgia ADD CONSTRAINT agendamentodadosclinicos_fk1 FOREIGN KEY (id_cirurgia) REFERENCES percurso.cirurgia(id_cirurgia);