
-- Table: Auteur
CREATE TABLE Auteur (
    nom VARCHAR2(40) NOT NULL,
    prenom VARCHAR2(40) NOT NULL,
    CONSTRAINT Auteur_pk PRIMARY KEY (prenom, nom)
);

-- Table: Edition
CREATE TABLE Edition (
    N_edition NUMBER(10) NOT NULL,
    "date" DATE NOT NULL,
    N_exemplaires NUMBER(10) NOT NULL,
    Livre_ISBN NUMBER(10) NOT NULL,
    CONSTRAINT Edition_pk PRIMARY KEY (N_edition)
);

-- Table: Libraire
CREATE TABLE Libraire (
    nom VARCHAR2(40) NOT NULL,
    adresse_complete VARCHAR2(10) NOT NULL,
    commande NUMBER(10) NULL,
    CONSTRAINT Libraire_pk PRIMARY KEY (nom)
);

-- Table: Livre
CREATE TABLE Livre (
    ISBN NUMBER(10) NOT NULL,
    titre VARCHAR2(40) NOT NULL,
    prix NUMBER(10) NOT NULL,
    prime NUMBER(1, 0) NOT NULL,
    Auteur_prenom VARCHAR2(40) NOT NULL,
    Auteur_nom VARCHAR2(40) NOT NULL,
    CONSTRAINT Livre_pk PRIMARY KEY (ISBN)
);

-- Table: pseudonyme
CREATE TABLE pseudonyme (
    libelle VARCHAR2(40) NOT NULL,
    Auteur_prenom VARCHAR2(40) NOT NULL,
    Auteur_nom VARCHAR2(40) NOT NULL,
    CONSTRAINT pseudonyme_pk PRIMARY KEY (libelle)
);

-- foreign keys
-- Reference: Edition_Livre (table: Edition)
ALTER TABLE Edition ADD CONSTRAINT Edition_Livre FOREIGN KEY (Livre_ISBN) REFERENCES Livre (ISBN) ON DELETE CASCADE;

-- Reference: Libraire_Livre (table: Libraire)
ALTER TABLE Libraire ADD CONSTRAINT Libraire_Livre FOREIGN KEY (commande) REFERENCES Livre (ISBN) ON DELETE CASCADE;

-- Reference: Livre_Auteur (table: Livre)
ALTER TABLE Livre ADD CONSTRAINT Livre_Auteur FOREIGN KEY (Auteur_prenom, Auteur_nom) REFERENCES Auteur (prenom, nom) ON DELETE CASCADE;

-- Reference: pseudonyme_Auteur (table: pseudonyme)
ALTER TABLE pseudonyme ADD CONSTRAINT pseudonyme_Auteur FOREIGN KEY (Auteur_prenom, Auteur_nom) REFERENCES Auteur (prenom, nom) ON DELETE CASCADE;