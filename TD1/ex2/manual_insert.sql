-- Table: Auteur
INSERT INTO Auteur (
	nom,
	prenom
) VALUES (
	'Smith',
	'John'
);

-- Table: Livre
INSERT INTO Livre (
	ISBN,
	titre,
	prix,
	prime,
	Auteur_prenom,
	Auteur_nom
) VALUES (
	1234567890,
	'Book 1',
	20,
	1,
	'John',
	'Smith'
);

-- Table: Edition
INSERT INTO Edition (
	N_edition,
	"date",
	N_exemplaires,
	Livre_ISBN
) VALUES (
	1,
	TO_DATE('2023-01-15', 'YYYY-MM-DD'),
	100,
	1234567890
);

-- Table: pseudonyme
INSERT INTO pseudonyme (
	libelle,
	Auteur_prenom,
	Auteur_nom
) VALUES (
	'Pseudonyme 2',
	'John',
	'Smith'
);

-- Table: Libraire
INSERT INTO Libraire (
	nom,
	adresse_complete,
	commande
) VALUES (
	'Book Haven',
	'123 Main S',
	1234567890
);