CREATE TABLE percurso.TipoAcaoOpcional (
id_TipoAcaoOpcional uuid DEFAULT gen_random_uuid() NOT NULL,
des_nome varchar(100) NOT NULL,
des_descricao varchar(100) NOT NULL,
des_corBotao varchar(8) NOT NULL,
num_pos int4 NOT NULL,
dho_cadastro timestamp NOT NULL,
id_TipoAcaoRegistro uuid NOT NULL,
CONSTRAINT TipoAcaoOpcional_pkey PRIMARY KEY (id_TipoAcaoOpcional)
);
 
ALTER TABLE percurso.TipoAcaoOpcional ADD CONSTRAINT TipoAcaoOpcional_fk1 FOREIGN KEY (id_TipoAcaoRegistro) REFERENCES percurso.TipoAcaoRegistro(id_TipoAcaoRegistro);
