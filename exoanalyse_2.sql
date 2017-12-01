drop database gestion_des_reparations;
create database  gestion_des_reparations;
use gestion_des_reparations;
create table Containeur
	(
		numero int(6) not null,
		longueur int(10) not null,
		largeur int(10) not null,
		hauteur int(10) not null,
		primary key(numero)
	);
create table Entrepot
	(
		numero int(5) not null,
		superficie int(10) not null,
		primary key(numero)
	);
create table Employe
	(
		numero int(5) not null,
		nom char(25) not null,
		qualif char(25) not null,
		primary key(numero)
	);
create table Reparation
	(
		numero int(5) not null,
		dateDeb date,
		dateFin date,
		numContaineur int(6),
		numEntrepot	int(5),
		primary key(numero),
		foreign key(numContaineur) references Containeur(numero),
		foreign key(numEntrepot) references Entrepot(numero)
	);
create table Intervenir
	(
		numEmp int(5) not null,
		numRepar int(5) not null,
		nbHeures int(5)not null,
		primary key(numEmp,numRepar),
		foreign key(numEmp) references Employe(numero),
		foreign key(numRepar) references Reparation(numero)
	);