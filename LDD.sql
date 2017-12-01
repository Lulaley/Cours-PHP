drop database LDD;
create database LDD;
use LDD;
create table assistant
	(
	NumA int(3) not null,
	NomA varchar(30),
	Tel char(10),
	primary key(NumA)
	);
create table Medecin
	(
	NumM int(3)not null,
	NomM varchar(20),
	PrenomM varchar(20),
	Tel int(10),
	primary key(NumM)
	);