CREATE DATABASE gestioncommande;

USE gestioncommande;
CREATE TABLE Client (
    numeroclient int,
    nom varchar(20),
    prenom varchar(20),
    address varchar(100),
    telephone int,
    PRIMARY KEY (numeroclient)
);
CREATE TABLE Commande (
    numerocommande int,
    datecommande datetime,
    PRIMARY KEY (numerocommande)
);
CREATE TABLE Facture (
    numerofacture int,
    datefacture datetime,
    montant double,
    PRIMARY KEY (numerofacture)
);
CREATE TABLE Lignecommande (
    numerocommande int,
    numerolignecommande int,
    qtecommande int,
    PRIMARY KEY (numerocommande, numerolignecommande)
);
CREATE INDEX ASSOCIATION1_FK ON Lignecommande (
    numerocommande ASC
);
CREATE TABLE Lignefacture (
    numerofacture int,
    numerolignefacture int,
    montant double,
    PRIMARY KEY (numerofacture, numerolignefacture)
);
CREATE INDEX ASSOCIATION2_FK ON Lignefacture (
    numerofacture ASC
);
CREATE TABLE Livraison (
    numerolivraison int,
    datelivraison datetime,
    PRIMARY KEY (numerolivraison)
);
CREATE TABLE Produits (
    numeroproduit int,
    nomproduit varchar(200),
    quantite int,
    prix double,
    PRIMARY KEY (numeroproduit)
);
ALTER TABLE Lignecommande
ADD FOREIGN KEY (numerocommande) REFERENCES Commande (numerocommande);
ALTER TABLE Lignefacture
ADD FOREIGN KEY (numerofacture) REFERENCES Facture (numerofacture);
