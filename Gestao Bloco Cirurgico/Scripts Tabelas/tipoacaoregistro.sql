CREATE TABLE percurso.TipoAcaoRegistro (
id_TipoAcaoRegistro uuid DEFAULT gen_random_uuid() NOT NULL,
des_nome varchar(100) NOT NULL,
des_descricao varchar(100) NOT NULL,
des_corBotao varchar(8) NOT NULL,
num_pos int4 NOT NULL,
dho_cadastro timestamp NOT NULL,
id_Modulo uuid NOT NULL,
CONSTRAINT TipoAcaoRegistro_pkey PRIMARY KEY (id_TipoAcaoRegistro)
);
 
ALTER TABLE percurso.TipoAcaoRegistro ADD CONSTRAINT TipoAcaoRegistro_fk1 FOREIGN KEY (id_Modulo) REFERENCES percurso.Modulos(id_Modulo);
