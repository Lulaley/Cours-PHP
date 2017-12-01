drop database GestVente;
create database GestVente;
use GestVente;

create table Representants
	(
		nr int(6),
		nomr varchar(25),
		ville varchar(25),
		primary key (nr)
	);

create table Produits
	(
		np int(6),
		nomp varchar(25),
		coul varchar(25),
		pds int(10),
		primary key (np)
	);

create table Clients
	(
		nc int(6),
		nomc varchar(25),
		ville varchar(25),
		primary key (nc)
	);

create table Ventes
	(
		nr int(6) not null,
		np int(6) not null,
		nc int(6) not null,
		qt int(6),
		primary key (nr,np,nc)
	);

insert into Representants (NR, NOMR, VILLE) VALUES (1, 'Stephane', 'Lyon'); 
insert into Representants (NR, NOMR, VILLE) VALUES (2, 'Benjamin', 'Paris'); 
insert into Representants (NR, NOMR, VILLE) VALUES (3, 'Leonard', 'Lyon'); 
insert into Representants (NR, NOMR, VILLE) VALUES (4, 'Antoine', 'Brest');
insert into Representants (NR, NOMR, VILLE) VALUES (5, 'Bruno', 'Bayonne'); 

insert into Produits (NP, NOMP, COUL, PDS) VALUES (1, 'Aspirateur', 'Rouge', 3546);
insert into Produits (NP, NOMP, COUL, PDS) VALUES (2, 'Trottinette', 'Bleu', 1423); 
insert into Produits (NP, NOMP, COUL, PDS) VALUES (3, 'Chaise', 'Blanc', 3827); 
insert into Produits (NP, NOMP, COUL, PDS) VALUES (4, 'Tapis', 'Rouge', 1423); 

insert into Clients (NC, NOMC, VILLE) VALUES (1, 'Alice', 'Lyon');
insert into Clients (NC, NOMC, VILLE) VALUES (2, 'Bruno', 'Lyon');
insert into Clients (NC, NOMC, VILLE) VALUES (3, 'Charles', 'Compiègne');
insert into Clients (NC, NOMC, VILLE) VALUES (4, 'Denis', 'Montpellier'); 
insert into Clients (NC, NOMC, VILLE) VALUES (5, 'Emile', 'Strasbourg'); 

insert into Ventes (NR, NP, NC, QT) VALUES (1, 1, 1, 1); 
insert into Ventes (NR, NP, NC, QT) VALUES (1, 1, 2, 1); 
insert into Ventes (NR, NP, NC, QT) VALUES (2, 2, 3, 1); 
insert into Ventes (NR, NP, NC, QT) VALUES (4, 3, 3, 200);
insert into Ventes (NR, NP, NC, QT) VALUES (3, 4, 2, 190); 
insert into Ventes (NR, NP, NC, QT) VALUES (1, 3, 2, 300); 
insert into Ventes (NR, NP, NC, QT) VALUES (3, 1, 2, 120); 
insert into Ventes (NR, NP, NC, QT) VALUES (3, 1, 4, 120);
insert into Ventes (NR, NP, NC, QT) VALUES (3, 4, 4, 2);
insert into Ventes (NR, NP, NC, QT) VALUES (3, 1, 1, 3); 
insert into Ventes (NR, NP, NC, QT) VALUES (3, 4, 1, 5); 
insert into Ventes (NR, NP, NC, QT) VALUES (3, 1, 3, 1);
