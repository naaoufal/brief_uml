create database gestioncommande;
use gestioncommande;

-- create all table :

create table Client (
   numeroclient         int                  not null,
   nom                  varchar(254)         null,
   prenom               varchar(254)         null,
   adresse              varchar(254)         null,
   telephone            int                  null,
   constraint PK_CLIENT primary key nonclustered (numeroclient),
)

create table Commande (
   numerocommande       int                  not null,
   datecommande         datetime             null,
   constraint PK_COMMANDE primary key nonclustered (numerocommande)
)

create table Facture (
   numerofacture        int                  not null,
   datefacture          datetime             null,
   montant              double precision     null,
   constraint PK_FACTURE primary key nonclustered (numerofacture),
)

create table Lignecommande (
   numerocommande       int                  not null,
   numeroligncommande   int                  not null,
   qtecommande          int                  null,
   constraint PK_LIGNECOMMANDE primary key nonclustered (numerocommande, numeroligncommande),
)

-- create link association (composition) for lignecommande table
create index ASSOCIATION1_FK on Lignecommande (
numerocommande ASC
)

create table Lignefacture (
   numerofacture        int                  not null,
   numerplignefacture   int                  not null,
   montantlignefacture  double precision     null,
   constraint PK_LIGNEFACTURE primary key nonclustered (numerofacture, numerplignefacture)
)

-- create link association (composition) for lignefacture table
create index ASSOCIATION2_FK on Lignefacture (
numerofacture ASC
)

create table Livraison (
   numerolivraison      int                  not null,
   datelivraison        datetime             null,
   constraint PK_LIVRAISON primary key nonclustered (numerolivraison)
)

create table Produits (
   numeroproduit        int                  not null,
   nomproduit           varchar(254)         null,
   quantite             int                  null,
   prix                 double precision     null,
   constraint PK_PRODUITS primary key nonclustered (numeroproduit)
)

-- use foreign key
alter table Lignecommande
   add constraint FK_LIGNECOM_ASSOCIATI_COMMANDE foreign key (numerocommande)
      references Commande (numerocommande)

alter table Lignefacture
   add constraint FK_LIGNEFAC_ASSOCIATI_FACTURE foreign key (numerofacture)
      references Facture (numerofacture)


