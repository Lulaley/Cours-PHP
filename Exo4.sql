/*Exo4*/
drop database Gestion_Clients;
create database Gestion_Clients;
use Gestion_Clients;
create table Categorie
	(
		codeC char(5) not null,
		NomC varchar(25) not null,
		TauxRemiseC float(4,2) not null,
		primary key(codeC)
	);
create table Representant
	(
		nR char(5) not null,
		NomR varchar(25) not null,
		PrenomR varchar(25) not null,
		DateEmbaucheR date,
		DateDepartR date,
		primary key(nR)
	);
create table Clients
	(
		nC int(9) not null,
		NomMag varchar(25) not null,
		AdrC varchar(25) not null,
		VilleC varchar(25) not null,
		CodePostC varchar(25) not null,
		TelC varchar(25) not null,
		CodeC char(5) not null,
		primary key(nC),
		foreign key(codeC) references Categorie(codeC)
	);
create table Factures
	(
		nF int(18) not null,
		DateF date,
		nC int(9) not null,
		Payee char(4) not null,
		nR char(5) not null,
		MontantHrsTaxe float(5,3) not null,
		primary key(nF),
		foreign key(nC) references Clients(nC),
		foreign key(nR) references Representant(nR)
	);
insert into Categorie(codeC,NomC,TauxRemiseC)
	values('BOU','Boulangerie',5.50),
		  ('EPI','Epicerie',0.00),
		  ('HYP','Hypermarche',12.50),
		  ('PAT','Patisserie',7.00),
		  ('SUP','Supermarche',10.00);
insert into Representant(nR,NomR,PrenomR,DateEmbaucheR,DateDepartR)
	values('R1','SIGUENOU','Jean','1999/10/15',NULL),
		  ('R2','LANTEGI','Francoise','1999/10/15',NULL),
		  ('R3','CHEZSAN','Jacques','2000/01/01',NULL),
		  ('R4','NORK','Genevieve','2000/03/01','2001/03/01'),
		  ('R5','LAUMEVI','Arlette','2001/05/01',NULL);
insert into Clients(nC,NomMag,AdrC,VilleC,CodePostC,TelC,CodeC)
	values('1','Anis et Miel','7 Chemin de Cassis','Marseille','13010','91-45-13-12','BOU'),
		  ('2','Auchan','Zone industrielle','Aubagne','13400','91-26-45-23','HYP'),
		  ('3','Casino','La Valentine','Marseille','13010','91-85-54-42','HYP'),
		  ('4','Leclerc','Plan de campagne','Marseille','13601','91-25-54-47','HYP'),
		  ('5','Intermarche','30 rue pipe','Mallemort','13456','42-45-48-87','SUP'),
		  ('6','Casino','Bd P.Claudel','Marseille','13010','91-45-23-87','SUP'),
		  ('7','Les Moulins de Pvce','74 Bd R.Rolland','Marseille','13010','91-45-52-23','BOU'),
		  ('8','Les Moulins de Pvce','45 Av M.Pagnol','Aubagne','13400','91-25-48-78','PAT'),
		  ('9','Aux délices de Provence','3 rue Fontagne','Marseille','13006','91-18-21-12','EPI');
insert into Factures(nF,DateF,nC,Payee,nR,MontantHrsTaxe)
	values('1','2001/01/04','1','Oui','R3','250.56'),
		  ('2','2001/01/04','2','Oui','R2','358.40'),
		  ('3','2001/01/10','2','Oui','R2','400.00'),
		  ('4','2001/01/19','4','Non','R1','354.14'),
		  ('5','2001/01/19','3','Oui','R1','238,14'),
		  ('6','2001/01/24','3','Non','R1','120.00'),
		  ('7','2001/01/25','7','Oui','R4','178,45'),
		  ('8','2001/01/26','5','Non','R4','238.54'),
		  ('9','2001/01/26','4','Non','R1','127.17'),
		  ('10','2001/02/02','4','Oui','R2','540.45'),
		  ('11','2001/02/05','2','Oui','R2','475.18'),
		  ('12','2001/02/07','3','Oui','R1','238.41'),
		  ('13','2001/02/09','1','Oui','R1','225.47'),
		  ('14','2001/02/09','6','Non','R4','110.00'),
		  ('15','2001/02/09','7','Oui','R5','335.44'),
		  ('16','2001/02/09','8','Non','R5','445.11'),
		  ('17','2001/02/14','9','Non','R5','85.18'),
		  ('18','2001/02/14','4','Non','R1','235.00');

