/*Exemple cour reflexive*/
drop database Gestion_Employee;
create database Gestion_Employee;
use  Gestion_Employee;
create table Departement
	(
		nD int(3) not null,
		NomD varchar(32) not null,
		Ville varchar(25) not null,
		primary key(nD)
	);
create table Salarie
	(
		numS int(2),
		NomS varchar(25) not null,
		PrenomS varchar(25) not null,
		Fonction varchar(5) not null,
		Salaire int(10) not null,
		numChef int(2),
		nD int(3) not null,
		primary key(numS),
		foreign key(numChef) references Salarie(numS),
		foreign key(nD) references Departement(nD)
	);
insert into Departement(nD,NomD,Ville)
	values('1','Central','Paris'),
		  ('2','Informatique','Lyon'),
		  ('3','Commercial','Bordeaux');
insert into Salarie(numS,NomS,PrenomS,Fonction,Salaire,numChef,nD)
	values('1','Messadi','Lucinda','PDG','10 000',NULL,'1'),
		  ('2','On','Alban','DSI','9 000','1','2'),
	      ('3','PINTO','Maxence','CPSI','10 000','2','2'),
		  ('4','JOULIN','Remi','INGSI','9 000','1','3');