create database gestfact;
use gestfact;
 
Create table categories
(CodeCat VARCHAR (5) not null,
NomCat VARCHAR (15) not null,
Remise float,
Primary key (CodeCat));

Create table representants
(NumRep VARCHAR(4) not null,
 NomRep VARCHAR(20) not null,
 PrenomRep VARCHAR (20) not null,
 DateEmb date not null,
 Datedep date,
 Primary key (NumRep));

Create table clients
(NumCli integer not null,
NomE VARCHAR (30) not null,
AdrC VARCHAR (40) not null,
Ville VARCHAR (25) not null,
CP char (5) not null,
Tel VARCHAR (20) not null,
CodeCat VARCHAR (5) not null,
Primary key (NumCli),
FOREIGN key (CodeCat) references categories(CodeCat));

Create table factures
(NumFac integer not null,
 DateFac date not null,
 NumCli integer not null,
 Paye VARCHAR (4) not null,
 NumRep VARCHAR (4) not null,
 MontantHTC float(10,2),
 Primary key (NumFac),
 FOREIGN key (NumCli) references clients(NumCli));

Create table vendre
(NumMois integer not null,
 NumRep VARCHAR (4) not null,
 CodeCat VARCHAR (5) not null,
 Vente float(10,2),
 Primary key (NumMois,NumRep,CodeCat),
 FOREIGN key (NumRep) references representants(NumRep),
 FOREIGN key (CodeCat) references categories (CodeCat));


Insert into categories values ('BOU','Boucherie',5.5);
Insert into categories values ('EPI','Epicerie',0.0);
Insert into categories values ('HYP','Hypermarche',12.50);
Insert into categories values ('PAT','Patisserie',7.0);
Insert into categories values ('SUP','Supermarche',10.0);

Insert into representants values ('R1','SIGUENOU','Jean','1999/10/15',null);
Insert into representants values ('R2','LANTEGI','Françoise','1999/10/19',null);
Insert into representants values ('R3','CHEZSAN','Jacques','2000/01/20',null);
Insert into representants values ('R4','NORK','Genevieve','2000/03/02','31/03/2001');
Insert into representants values ('R5','LAUMEVI','Arlette','2001/04/16',null);

Insert into clients values (1,'Anis et miel','7 chemin de Cassis','Marseille','13010','91-45-13-12','BOU');
Insert into clients values (2,'Auchan','Zone industrielle','Aubagne','13400','91-26-45-23','HYP');
Insert into clients values (3,'Casino','La Valentine','Marseille','13010','91-85-54-42','HYP');
Insert into clients values (4,'Leclerc','Plan-de-Campagne','Marseille','13010','91-25-54-47','HYP');
Insert into clients values (5,'Intermarché','30 rue Pipe','Mallemort','13456','42-45-48-87','SUP');
Insert into clients values (6,'Casino','bd Paul Claudel','Marseille','13010','91-45-23-87','SUP');
Insert into clients values (7,'Moulins de Provence','74 bd Rémi Rolland','Marseille','13010','97-45-52-23','BOU');
Insert into clients values (8,'Moulins de Provence','45 av. Marcel Pagnol','Aubagne','13400','91-25-48-78','PAT');
Insert into clients values (9,'Aux delices de Provence','3 rue Fontagne','Marseille','13006','91-18-21-12','EPI');



Insert into factures values (1,'2001/01/02',1,"Oui","R3",250.56);
Insert into factures values (2,'2001/10/20',2,"Oui","R2",358.40);
Insert into factures values (3,'2000/01/21',2,"Oui","R2",400.00);
Insert into factures values (4,'2001/01/21',4,"Non","R1",354.14);
Insert into factures values (5,'2002/05/21',3,"Oui","R1",238.41);
Insert into factures values (6,'2004/03/26',3,"Non","R1",120.00);
Insert into factures values (7,'2005/01/27',7,"Oui","R4",178.45);
Insert into factures values (8,'2006/01/20',5,"Non","R4",238.54);
Insert into factures values (9,'2006/01/21',4,"Non","R1",127.17);
Insert into factures values (10,'2003/02/11',4,"Oui","R2",540.45);
Insert into factures values (11,'2005/02/01',2,"Oui","R2",475.18);
Insert into factures values (12,'2007/02/28',3,"Oui","R1",238.41);
Insert into factures values (13,'2009/02/21',1,"Oui","R3",225.47);
Insert into factures values (14,'2009/02/08',6,"Non","R4",110.00);
Insert into factures values (15,'2009/02/11',7,"Oui","R5",335.44);
Insert into factures values (16,'2009/02/17',8,"Non","R5",445.11);
Insert into factures values (17,'2014/02/21',9,"Non","R5",85.18);
Insert into factures values (18,'2014/02/23',4,"Non","R1",235.00);


Insert into vendre values (1,'R1','HYP',839.72);
Insert into vendre values (1,'R2','HYP',758.40);
Insert into vendre values (1,'R3','BOU',250.56);
Insert into vendre values (1,'R4','BOU',178.45);
Insert into vendre values (1,'R1','SUP',238.54);
Insert into vendre values (2,'R2','HYP',473.41);
Insert into vendre values (2,'R3','HYP',1015.63);
Insert into vendre values (2,'R4','BOU',225.47);
Insert into vendre values (2,'R5','SUP',110.00);
Insert into vendre values (2,'R5','BOU',335.44);
Insert into vendre values (2,'R5','EPI',85.18);
Insert into vendre values (2,'R5','PAT',445.11);