create database Oficina;

use oficina;

create table cliente(
	idCliente int auto_increment primary key,
    Pname varchar(15) not null,
    NmeioInicial char(3),
    Sobrenome varchar(20),
    Endereço varchar(45),
    telefone char(11) not null
);
alter table cliente auto_increment=1;

create table veículo(
	idVeículo int auto_increment primary key,
    idVCliente int,
    Placa varchar (7) not null,
    Modelo varchar(45),
    ano varchar(10),
    constraint fk_veículo_idCliente foreign key (idVCliente) references cliente(idCliente)
);
alter table veículo auto_increment=1;

create table equipe(
	idEquipe int auto_increment primary key,
    Nome_Equipe varchar(45) not null
);
alter table equipe auto_increment=1;

create table ordem_de_serviço(
	idOrdem_de_Serviço int auto_increment primary key,
    Data_Emissão date,
    Data_Conclusão date,
    Valor_Total float,
    Status_OS ENUM('Processando', 'Enviado', 'Em Andamento', 'Entregue', 'Cancelado') default 'Processando',
    idOSEquipe int,
    idOSVeículo int,
    idOSCliente int,
    constraint fk_Ordem_idEquipe foreign key (idOSEquipe) references equipe(idEquipe),
    constraint fk_Ordem_idVeículo foreign key (idOSVeículo) references veículo(idVeículo),
    constraint fk_Ordem_idCliente foreign key (idOSCliente) references cliente(idCliente)
);
alter table ordem_de_serviço auto_increment=1;

create table peça_base(
	idPeça_Base int auto_increment primary key,
    Descrição varchar(45),
    Valor float
);
alter table peça_base auto_increment=1;

create table os_peça_base(
	idPBOrdem_de_Serviço int ,
    idPBPeça_Base int,
    Quantidade int,
    Valor_Total float,
    primary key (idPBOrdem_de_Serviço, idPBPeça_Base),
    constraint fk_OSPB_OS foreign key(idPBOrdem_de_Serviço) references ordem_de_serviço(idOrdem_de_Serviço),
    constraint fk_OSPB_PB foreign key(idPBPeça_Base) references peça_base(idPeça_Base)
);

create table serviço_base(
	idServiço_Base int auto_increment primary key,
    Descrição varchar(45),
    Valor float
);
alter table serviço_base auto_increment=1;

create table os_serviço_base(
	idSBOrdem_de_Serviço int ,
    idSBServiço_Base int,
    Quantidade int,
    Valor_Total float,
    primary key (idSBOrdem_de_Serviço, idSBServiço_Base),
    constraint fk_OSSB_OS foreign key(idSBOrdem_de_Serviço) references ordem_de_serviço(idOrdem_de_Serviço),
    constraint fk_OSSB_PB foreign key(idSBServiço_Base) references serviço_base(idServiço_Base)
);

create table mecanico(
idMecanico int auto_increment primary key,
Pname varchar(15) not null,
NmeioInicial char(3),
Sobrenome varchar(20),
Endereço varchar(45),
Especialidade varchar(45)
);
alter table mecanico auto_increment=1;

create table mecanico_da_equipe(
	idMEMecanico int,
    idMEEquipe int,
	primary key (idMEMecanico, idMEEquipe),
    constraint fk_MdaE_idMecanico foreign key(idMEMecanico) references mecanico(idMecanico),
    constraint fk_MdaE_idEquipe foreign key(idMEEquipe) references equipe(idEquipe)
);
