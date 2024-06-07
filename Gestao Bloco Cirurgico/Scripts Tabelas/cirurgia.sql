CREATE TABLE percurso.cirurgia (
	id_cirurgia uuid DEFAULT gen_random_uuid() NOT NULL,
	dho_criacao timestamp NULL,
	dho_inicioprevisto timestamp NULL,
	des_procedimentos varchar(255) NULL,
	"Num_cirurgia" varchar(30) NULL,
	dho_fimprevisto timestamp NULL,
	des_nomepaciente varchar(100) NULL,
	id_sala uuid NOT NULL,
	dho_cancelamento timestamp NULL,
	des_motivocancelamento varchar(255) NULL,
	CONSTRAINT cirurgia_pkey PRIMARY KEY (id_cirurgia)
);

ALTER TABLE percurso.cirurgia ADD CONSTRAINT cirurgia_fk1 FOREIGN KEY (id_sala) REFERENCES percurso.salas(id_sala);