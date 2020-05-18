-- insert into tables 
USE testing_testing;
insert into client values(1, 'naoufal', 'benmansour', 'Lot sekalla N 1752', '0614675855');
insert into client values(2, 'ahmed', 'Elhoury', 'Lot sekalla N 1750', '0620524308');
insert into client values(3, 'hamza', 'bennis', 'Lot sekalla N 170', '0612439487');

insert into commande values(1, 12-20-2020);
insert into commande values(2, 17-12-2020);
insert into commande values(3, 01-03-2021);

insert into facture values(1, 12-20-2020, 12000);
insert into facture values(2, 17-12-2020, 13200.20);
insert into facture values(3, 01-03-2021, 20000);

insert into Lignefacture values(1, 1021, 12000.20);
insert into Lignefacture values(2, 1020, 20000.300);
insert into Lignefacture values(3, 1300, 2000.900);

insert into produits values(1, 'tv iptv 72 pouces', 20, 200000.00);
insert into produits values(2, 'telephone A5 pro', 10, 100000.00);
insert into produits values(3, 'tablette', 1, 500.00);

-- delete && update :

select *from client;
update client set prenom = 'Elmoutanabi' where numeroclient = 3;
delete from client where numeroclient = 2;

select *from commande;
update commande set datecommande = 13-07-2019 where numerocommande = 3;
delete from commande where numerocommande = 2;

select *from facture;
update facture set montant = 40000 where numerofacture = 3;
delete from facture where numerofacture = 3;

select *from Lignefacture;
update lignefacture set montantlignefacture = 40000 where numerolignefacture = 2;
delete from Lignefacture where numerolignefacture = 3;

select *from produits;
update produits set quantite = 2 where numeroproduit = 3;
delete from produits where numeroproduit = 1;
