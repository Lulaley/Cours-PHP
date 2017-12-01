drop database Gestion_Mariage;
create database Gestion_Mariage;
use Gestion_Mariage;
create table Personne
	(
		idP int(1) not null,
		NomP varchar(25) not null,
		PrenomP varchar(25) not null,
		Sexe varchar(1) not null,
		primary key(idP)
	);
create table Marier
	(
		idP1 int(1) not null,
		idP2 int(2) not null,
		DateM date not null,
		DateD date,
		primary key(idP1,idP2),
		foreign key(idP1) references Personne(idP),
		foreign key(idP2) references Personne(idP)
	);
insert into Personne(idP,NomP,PrenomP,Sexe)
	values('1','Ouandjli','Massil','M'),
		  ('2','Dauvois','Jeremy','M'),
		  ('3','Messadi','Lucinda','F'),
		  ('4','Clarke','Emilia','F'),
		  ('5','Watson','Ema','F'),
		  ('6','Watson','Jenifer','F');
insert into Marier(idP1,idP2,DateM,DateD)
	values('1','4','2003/03/09',NULL),
	      ('2','5','2012/05/13','2007/10/10'),
	      ('3','6','2016/12/31',NULL);
	
	