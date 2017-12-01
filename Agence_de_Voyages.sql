drop database Agence_de_Voyage;
create database Agence_de_Voyage;
use Agence_de_Voyage;
create table Station
	(
		nomStation char(10) not null,
		Capacite int(10),
		Lieu varchar(25) unique,
		Region enum('OceanIndien','Antilles','Europe','Ameriques','Extreme Orient'),
		Tarif float(6,2) default 0.00,
		primary key(nomStation)
	);
create table Activite
	(
		nomStation char(35) not null,
		lib char(20) not null,
		Prix float(6,2) default 0.00,
		primary key(nomStation,lib),
		foreign key(nomStation) references Station(nomStation)
	);
create table Client
	(
		idClient int(4) not null,
		Nom varchar(25),
		Prenom varchar(25) not null,
		Ville varchar(25),
		Region varchar(25),
		Solde int(6) default 0,
		primary key(idClient)
	);
create table Sejour
	(
		idClient int(4) not null,
		station char(35) not null,
		debut date,
		nbPlaces int(3),
		primary key(idClient,station,debut),
		foreign key(idClient) references Client(idClient),
		foreign key(station) references Station(nomStation)
	);
insert into Station(nomStation,Capacite,Lieu,Region,Tarif)
	values('Venusa','350','Guadeloupe','Antilles','1200'),
		  ('Famiente','200','Seychelles','OceanIndien','1500'),
		  ('Santalba','150','Martinique','Antilles','2000'),
		  ('Passac','400','Alpes','Europe','1000');
insert into Activite(nomStation,lib,Prix)
	values('Venusa','Voile','150'),
		  ('Venusa','Plongee','120'),
		  ('Famiente','Plongee','130'),
		  ('Passac','Ski','200'),
		  ('Passac','Piscine','20'),
		  ('Santalba','Kayak','50');
insert into Client(idClient,Nom,Prenom,Ville,Region,Solde)
	values('10','Fogg','Phileas','Londres','Europe','12465'),
		  ('20','Pascal','Blaise','Paris','Europe','6763'),
		  ('30','Kerouac','Jack','NewYork','Amerique','9812');
insert into Sejour(idClient,station,debut,nbPlaces)
	values('10','Passac','1998-07-01','2'),
		  ('30','Santalba','1996-08-14','5'),
		  ('20','Santalba','1998-08-03','4'),
		  ('30','Passac','1998-08-15','3'),
		  ('30','Venusa','1998-08-03','3'),
		  ('20','Venusa','1998-08-03','6'),
		  ('30','Famiente','1999-06-24','5'),
		  ('10','Famiente','1998-09-05','3');
