/*Rédaction du script SQL*/
drop database Ecole;  /*Suprimmer BDD*/
create database Ecole;  /*Créer BDD*/
Use Ecole;  /*Charger BDD*/
create table Classe
	(
		idC char(6) not null,
		NomC varchar(20) not null,
		Effectif int(2) not null,
		primary key(idC)
	);
create table Eleve
	(
		idE int(3) not null,
		NumE varchar(25) not null,
		NomE varchar(25) not null,
		PrenomE varchar(25) not null,
		Datedenaissance date,
		Adresse varchar(25) not null,
		Telephone int(25) not null,
		idC Char(6) not null,
		primary key(idE),
		foreign key(idC) references Classe(idC)
	);
create table Matiere 
	(
		idM char(3) not null,
		LibM varchar(25) not null,
		primary key(idM),
		foreign key(idC) references Classe(idc)
	);
create table Devoir
	(
		idD  char(6) not null,
		NomD varchar(25) not null,
		DateHeureD datetime,
		CoeficientD float(4,2) not null,
		primary key(idD),
		foreign key(idM) references Matiere(idM),
		foreign key(idC) references Classe(idC)
	);
create table Evaluer
	(
		idE int(3) not null,
		idD char(6) not null,
		Note float(4,2) not null,
		primary key(idE,idD),
		foreign key(idE) references Eleve(idE),
		foreign key(idD) references Devoir(idD)
	);
create table Enseigner
	(
		idC int(6) not null,
		idM char(3) not null,
		NbrhC time,
		NbrhTD time,
		primary key(idC,idM),
		foreign key(idC) references Classe(idC),
		foreign key(idM) references Matiere(idM)
	);