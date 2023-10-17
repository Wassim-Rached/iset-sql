-- Script to drop all tables

-- Drop foreign key constraints
ALTER TABLE Auteur DROP CONSTRAINT Auteur_pseudonyme;

ALTER TABLE Edition DROP CONSTRAINT Edition_Livre;

ALTER TABLE Libraire DROP CONSTRAINT Libraire_Livre;

ALTER TABLE Livre DROP CONSTRAINT Livre_Auteur;

-- Drop tables
DROP TABLE pseudonyme;

DROP TABLE Livre;

DROP TABLE Libraire;

DROP TABLE Edition;

DROP TABLE Auteur;