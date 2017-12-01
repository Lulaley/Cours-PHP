drop database gestion_lycee;
create database gestion_lycee;
use gestion_lycee;
create table Devoir
	(
		idD int(5) not null,
		NomD varchar(25) not null,
		primary key(idD)
	);
create table Specialite
	(
		idSP char(5) not null,
		NomSP varchar(25) not null,
		primary key(idSP)
	);
create table Classe
	(
		idSP char(5) not null,
		idC int(5) not null,
		NomC varchar(25) not null,
		primary key(idSP,idC)
	);
create table Eleve
	(
		idSP char(5) not null,
		idC int(5) not null,
		idE int(5) not null,
		NomE varchar(25) not null,
		PrenomE varchar(25) not null,
		primary key(idSP,idC,idE)
	);
create table Participer
	(
		idSP char(5) not null,
		idC int(5) not null,
		idE int(5) not null,
		idD int(5) not null,
		Note float(4,2),
		primary key(idSP,idC,idE,idD),
		foreign key(idSP,idC,idE) references Eleve(idSP,idC,idE),
		foreign key(idD) references Devoir(idD)
	);