create table percurso.cirurgia (
id_Cirurgia uuid default gen_random_uuid() not null,
dho_Solicitacao timestamp null,
dho_InicioCirurgia timestamp null,
des_TempoPrevisto varchar(30) null,
des_TempoInstituicao varchar(30) null,
dho_FimCirurgia timestamp null,
dho_Agendamento timestamp null,
des_nomePaciente varchar(100) null,
id_Sala uuid not null,
constraint Cirurgia_pkey primary key (id_Cirurgia)
);

alter table percurso.Cirurgia add constraint cirurgia_fk1
foreign key (id_Sala) references percurso.Salas(id_Sala);