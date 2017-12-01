drop database gestion_poste_de_travail;
create database  gestion_poste_de_travail;
use gestion_poste_de_travail;
create table OrigineGeographique
	(
		codeOG int(6) not null,
		NomOG char(25) not null,
		primary key(codeOG)
	);
create table Groupement
	(
		codeG int(6) not null,
		NomG char(25) not null,
		VilleG char(25) not null,
		codeOG int(6) not null,
		primary key(codeG),
		foreign key(codeOG) references OrigineGeographique(codeOG)
	);
create table Producteur
	(
		codeP int(6) not null,
		NomP char(25) not null,
		PrenomP char(25) not null,
		VilleP char(25) not null,
		CodeG int(6) not null,
		primary key(codeP),
		foreign key(codeG) references Groupement(codeG)
	);