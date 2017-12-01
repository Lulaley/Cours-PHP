drop database gestion_bulletin_lycee;
create database  gestion_bulletin_lycee;
use gestion_bulletin_lycee;
create table Matiere
	(
		codeM int(5) not null,
		intM char(25),
		primary key(codeM)
	);
create table