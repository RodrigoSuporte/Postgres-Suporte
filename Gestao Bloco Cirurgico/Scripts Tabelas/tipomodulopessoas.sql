CREATE TABLE percurso.TipoModuloPessoas (
id_TipoModuloPessoa uuid DEFAULT gen_random_uuid() NOT NULL,
des_nome varchar(100) NOT NULL,
des_observacao varchar(255) NULL,
dho_Cadastro timestamp NOT NULL,
id_Modulo uuid NOT NULL,
CONSTRAINT TipoModuloPessoas_pkey PRIMARY KEY (id_TipoModuloPessoa)
);

ALTER TABLE percurso.TipoModuloPessoas ADD CONSTRAINT TipoModuloPessoas_fk1 FOREIGN KEY (id_Modulo) REFERENCES percurso.Modulos(id_Modulo);
