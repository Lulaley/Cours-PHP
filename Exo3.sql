/*Rédaction script SQL*/
drop database Festival;
create database Festival;
Use Festival;

create table Solistes 
	(
		ndS char(6) not null,
		NomS varchar(25) not null,
		PrenomS varchar(25) not null,
		DateNaissS int(25) not null,
		NatS varchar(25) not null,
		primary key(ndS)
	);

create table ChefdOrchestre
	(
		ndCO char(6) not null,
		NomCO varchar(25) not null,
		PrenomCO varchar(25) not null,
		DateNaissCO int(25) not null,
		NatCO varchar(25) not null,
		CDC varchar(25) not null,
		Com varchar(25) not null,
		primary key(ndCO),
		foreign key(ndS) references Solistes(ndS)
	);
create table Lieu
	(
		codeL char(6) not null,
		NomL varchar(25) not null,
		NomRue varchar(25) not null,
		NbrF int(25) not null,
		primary key(codeL)
	);
create table Concerts
	(
		ndC char(6) not null,
		NomC varchar(25) not null,
		DateC Date,
		primary key(ndC),
		foreign key(codeL) references Lieu(codeL)
	);
create table Oeuvres
	(
		ndO char(6) not null,
		NomO varchar(25) not null,
		DureeO time
		primary key(ndO),
		foreign key(ndCO) references ChefdOrchestre(ndCO),
		foreign key(ndC) references Concerts(ndC)
	);
create table Interpreter
	(
		ndS char(6) not null,
		ndO char(6) not null,
		primary key(ndS,ndO),
		foreign key(ndS) references Solistes(ndS),
		foreign key(ndO) references Oeuvres(ndO)
	)
