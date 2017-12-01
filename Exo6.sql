/*Exo6*/
drop database Gestion_Projet;
create database Gestion_Projet;
use Gestion_Projet;
create table Client
	(
		codeC char(10) not null,
		RaisonSociaC varchar(32) not null,
		AdrC varchar(25) not null,
		TelC int(10) not null,
		EmailC varchar(25) not null,
		primary key(codeC)
	);
create table Semaine
	(
		nS int(2) not null,
		DateDS date,
		primary key(nS)
	);
create table Service 
	(
		CodeS char(18) not null,
		LibelleS varchar(25) not null,
		primary key(CodeS)
	);
create table Salarie
	(
		idM int(9) not null,
		NomS varchar(25) not null,
		PrenomS varchar(25) not null,
		FonctS varchar(25) not null,
		CodeS char(18) not null,
		primary key(idM),
		foreign key(codeS) references Service(codeS)
	);
create table Projet 
	(
		codeP char(18) not null,
		IntitP varchar(25) not null,
		DateDP date,
		DatehP datetime,
		NbrJrs int(2) not null,
		codeC char(10) not null,
		idM int(9) not null,
		codeS char(18) not null,
		primary key(codeP),
		foreign key(codeC) references Client(codeC),
		foreign key(idM) references Salarie(idM),
		foreign key(codeS) references Service(codeS)
	);
create table Travailler
	(
		idM int(9) not null,
		codeP char(18) not null,
		DateAffect date,
		primary key(idM,codeP),
		foreign key(idM) references Salarie(idM),
		foreign key(codeP) references Projet(codeP)
	);
create table Realiser
	(
		idM int(9) not null,
		codeP char(18) not null,
		nS int(9) not null,
		NbrH int(4) not null,
		primary key(idM,codeP,nS),
		foreign key(idM) references Salarie(idM),
		foreign key(codeP) references Projet(codeP),
		foreign key(nS) references Semaine(nS)
	);