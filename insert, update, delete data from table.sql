-- insert, update, delete data from table : 

-- use the database : 

use gestioncommande;

-- ########################################
-- insret multiple data into client table : 

insert into client values(1, 'naoufal', 'benmansour', 'Lot sekalla N 1752', '0614675855')
insert into client values(2, 'ahmed', 'Elhoury', 'Lot sekalla N 1750', '0620524308')
insert into client values(3, 'hamza', 'bennis', 'Lot sekalla N 170', '0612439487')

-- see the data that inserted into table client

select *from client

-- update a row from client table : 

update client set prenom = 'Elmoutanabi' where numeroclient = 3

-- delete row by numeroclient from client table : 

delete from client where numeroclient = 1

-- ##########################################
-- insret multiple data into commande table : 

insert into commande values(1, 12-20-2020)
insert into commande values(2, 17-12-2020)
insert into commande values(3, 01-03-2021)

-- see the data that inserted into table commande

select *from commande

-- update a row from commende table : 

update commande set datacommande = 13-07-2019 where numerocommande = 3

-- delete row by numeroclient from client table : 

delete from commande where numerocommande = 2

-- ###########################################
-- insret multiple data into facture table : 

insert into facture values(1, 12-20-2020, 12000)
insert into facture values(2, 17-12-2020, 13200.20)
insert into facture values(3, 01-03-2021, 20000)

-- see the data that inserted into table facture

select *from facture

-- update a row from commende table : 

update facture set montant = 40000 where numerofacture = 3

-- delete row by numeroclient from facture table : 

delete from facture where numerofacture = 3

-- ###############################################
-- insret multiple data into lignecommande table : 

insert into lignecommande values(1, 1021, 12)
insert into lignecommande values(2, 1020, 20)
insert into lignecommande values(3, 1300, 200)

-- see the data that inserted into table lignecommande

select *from lignecommande

-- update a row from lignecommande table : 

update lignecommande set qtecommande = 400 where numerolignecommande = 1

-- delete row by numeroclient from ligncommande table : 

delete from ligncommande where numerolignecommande = 3

-- #################################################
-- insret multiple data into Lignefacture table : 

insert into Lignefacture values(1, 1021, 12000.20)
insert into Lignefacture values(2, 1020, 20000.300)
insert into Lignefacture values(3, 1300, 2000.900)


-- see the data that inserted into table lignefacture

select *from Lignefacture

-- update a row from lignefacture table : 

update lignefacture set montantlignefacture = 40000 where numerolignefacture = 2

-- delete row by numeroclient from lignefacture table : 

delete from Lignefacture where numerolignefacture = 3

-- ####################################################
-- insret multiple data into livraison table : 

insert into Lignefacture values(1, 12-02-2020)
insert into Lignefacture values(2, 20-06-2021)
insert into Lignefacture values(3, 09-08-2020)

-- see the data that inserted into table livraison

select *from livraison

-- update a row from livraison table : 

update livraison set datelivraison = 21-09-1996 where numerolivraison = 2

-- delete row by numeroclient from livraison table : 

delete from livraison where numerolivraison = 1

-- ####################################################
-- insret multiple data into produits table : 

insert into produits values(1, 'tv iptv 72 pouces', 20, 200000.00)
insert into produits values(2, 'telephone A5 pro', 10, 100000.00)
insert into produits values(3, 'tablette', 1, 500.00)

-- see the data that inserted into table produits

select *from produits

-- update a row from proudits table : 

update produits set quantite = 2 where numeroproduit = 3

-- delete row by numeroclient from livraison table : 

delete from produits where numeroproduit = 1