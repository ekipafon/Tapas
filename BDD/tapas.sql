CREATE DATABASE IF NOT EXISTS tapas;
USE tapas;

CREATE TABLE Groupe
(
	idGroupe int(11) NOT NULL AUTO_INCREMENT,
	numTable int(11),
	nombreClient int(11),
	PRIMARY KEY (idGroupe)
);

CREATE TABLE Commande
(
	idCommande int(11) NOT NULL AUTO_INCREMENT,
	heure time,
	idGroupe int(11),
	PRIMARY KEY (idCommande)
);

CREATE TABLE Tapas
(
	idTapas int(11) NOT NULL AUTO_INCREMENT,
	nomTapas varchar(64),
	PRIMARY KEY (idTapas)
);

CREATE TABLE Categorie
(
	idCategorie int(11) NOT NULL AUTO_INCREMENT,
	libelle varchar(64),
	PRIMARY KEY (idCategorie)
);

CREATE TABLE Tapas_Categorie
(
	idTapas int(11) NOT NULL,
	idCategorie int(11) NOT NULL,
	PRIMARY KEY (idTapas, idCategorie)
);

CREATE TABLE Commande_Tapas
(
	idCommande int(11) NOT NULL,
	idTapas int(11) NOT NULL,
	PRIMARY KEY (idCommande, idTapas)
);

ALTER TABLE Commande
ADD CONSTRAINT Commande_idGroupe
FOREIGN KEY (idGroupe)
REFERENCES Groupe (idGroupe);

ALTER TABLE Tapas_Categorie
ADD CONSTRAINT Tapas_Categorie_idTapas
FOREIGN KEY (idTapas)
REFERENCES Tapas (idTapas);

ALTER TABLE Tapas_Categorie
ADD CONSTRAINT Tapas_Categorie_idCategorie
FOREIGN KEY (idCategorie)
REFERENCES Categorie (idCategorie);

ALTER TABLE Commande_Tapas
ADD CONSTRAINT Commande_Tapas_idCommande
FOREIGN KEY (idCommande)
REFERENCES Commande (idCommande);

ALTER TABLE Commande_Tapas
ADD CONSTRAINT Commande_Tapas_idTapas
FOREIGN KEY (idTapas)
REFERENCES Tapas (idTapas);
