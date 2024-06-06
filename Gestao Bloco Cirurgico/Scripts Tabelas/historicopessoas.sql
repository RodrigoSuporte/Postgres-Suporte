CREATE TABLE percurso.HistoricoPessoas (
id_HistoricoPessoa uuid DEFAULT gen_random_uuid() NOT NULL,
des_NomePessoa varchar(100) NOT NULL,
des_Especialidade varchar(100) NOT NULL,
dho_Entrada timestamp NULL,
dho_Saida timestamp NULL,
cod_Pessoa_Externa varchar(100) NOT NULL,
id_TipoModuloPessoa uuid NOT NULL,
id_Cirurgia uuid NOT NULL,
CONSTRAINT HistoricoPessoas_pkey PRIMARY KEY (id_HistoricoPessoa)
);

ALTER TABLE percurso.HistoricoPessoas ADD CONSTRAINT HistoricoPessoas_fk1
FOREIGN KEY (id_TipoModuloPessoa) REFERENCES percurso.TipoModuloPessoas(id_TipoModuloPessoa);

ALTER TABLE percurso.HistoricoPessoas ADD CONSTRAINT HistoricoPessoas_fk2
FOREIGN KEY (id_Cirurgia) REFERENCES percurso.Cirurgia(id_Cirurgia);
