create database pratica2;
use pratica2;

create table Solicitacao (
	id_solicitacao int not null primary key auto_increment, 
    descricao_solicitacao varchar(1000), 
    data_abertura_solicitacao date, 
    urgencia_solicitacao varchar(20), 
    status_chamado varchar (20)
);

create table Cliente (
	id_cliente int not null primary key auto_increment, 
    nome_cliente varchar(200), 
    email_cliente varchar(100), 
    cpf_cliente float(11),
    telefone_cliente varchar (11)
);

create table Funcionario (
	id_funcionario int not null primary key auto_increment, 
    nome_funcionario varchar(200),
    email_funcionario varchar(200)
); 

create table solicitacao_funcionario (
	id_solicitacao_funcionario int not null primary key auto_increment, 
    fk_solicitacao int not null,
	foreign key (fk_solicitacao) references Solicitacao(id_solicitacao),
	fk_funcionario int not null,
	foreign key (fk_funcionario ) references Funcionario(id_funcionario)
);

alter table solicitacao 
add fk_cliente int not null; 

alter table solicitacao 
add foreign key (fk_cliente ) references Cliente(id_cliente)


