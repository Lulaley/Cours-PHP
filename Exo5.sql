
/*Exo5*/
drop database Gestion_Mission;
create database Gestion_Mission;
use Gestion_Mission;
create table Employe
	(
		nE int(9) not null,
		NomE varchar(25) not null,
		SalaireE float(4,3) not null,
		primary key(nE)
	);
create table Service
	(
		nS int(9) not null,
		LibelleS varchar(25),
		primary key(nS),
		foreign key(nE) references(nE)
	);
create table Missions
	(
		nM int(9) not null,
		DateHDepart datetime,
		ComptKmDepart float(5,4) not null,
		DateHFin datetime,
		ComptKmFin float(5,4) not null,
		primary key(nM),
		foreign key(nE) references(nE),
		foreign key(nV) references(nV)
	);
create table Vehicule
	(
		nV int(9) not null,
		nImm int(15) not null,
		DateAchat date,
		PrixAchat float(5,4) not null,
		primary key(nV),
		foreign key(codeC) references(codeC),
		foreign key(nT) references(nT)
	);
create table Types
	(
		nT int(9) not null,
		NomT varchar(25) not null,
		PwT int(3) not null,
		PdsT float(2,2) not null,
		ConsommT float(4,2) not null,
		primary key(nT),
		foreign key(codeM) references(codeM),
		foreign key(nV) references(nV)
	);
create table Marques
	(
		codeM char(25) not null,
		NomM varchar(25) not null,
		primary key(codeM),
		foreign key(nT) references(nT)
	);