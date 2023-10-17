-- Table: Auteur
INSERT INTO Auteur (
	nom,
	prenom
) VALUES (
	'Smith',
	'John'
);

INSERT INTO Auteur (
	nom,
	prenom
) VALUES (
	'Doe',
	'Jane'
);

INSERT INTO Auteur (
	nom,
	prenom
) VALUES (
	'Brown',
	'Michael'
);

INSERT INTO Auteur (
	nom,
	prenom
) VALUES (
	'Johnson',
	'Emily'
);

INSERT INTO Auteur (
	nom,
	prenom
) VALUES (
	'Wilson',
	'David'
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

INSERT INTO Edition (
	N_edition,
	"date",
	N_exemplaires,
	Livre_ISBN
) VALUES (
	2,
	TO_DATE('2023-02-10', 'YYYY-MM-DD'),
	75,
	2345678901
);

INSERT INTO Edition (
	N_edition,
	"date",
	N_exemplaires,
	Livre_ISBN
) VALUES (
	3,
	TO_DATE('2023-03-05', 'YYYY-MM-DD'),
	60,
	3456789012
);

INSERT INTO Edition (
	N_edition,
	"date",
	N_exemplaires,
	Livre_ISBN
) VALUES (
	4,
	TO_DATE('2023-04-20', 'YYYY-MM-DD'),
	80,
	4567890123
);

INSERT INTO Edition (
	N_edition,
	"date",
	N_exemplaires,
	Livre_ISBN
) VALUES (
	5,
	TO_DATE('2023-05-12', 'YYYY-MM-DD'),
	90,
	5678901234
);

-- Table: Libraire
INSERT INTO Libraire (
	nom,
	adresse_complete,
	commande
) VALUES (
	'Book Haven',
	'123 Main St',
	1234567890
);

INSERT INTO Libraire (
	nom,
	adresse_complete,
	commande
) VALUES (
	'Read All',
	'456 Elm St',
	2345678901
);

INSERT INTO Libraire (
	nom,
	adresse_complete,
	commande
) VALUES (
	'Bookworms',
	'789 Oak St',
	3456789012
);

INSERT INTO Libraire (
	nom,
	adresse_complete,
	commande
) VALUES (
	'Page Turners',
	'101 Maple St',
	4567890123
);

INSERT INTO Libraire (
	nom,
	adresse_complete,
	commande
) VALUES (
	'Book Nook',
	'202 Birch St',
	5678901234
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

INSERT INTO Livre (
	ISBN,
	titre,
	prix,
	prime,
	Auteur_prenom,
	Auteur_nom
) VALUES (
	2345678901,
	'Book 2',
	15,
	0,
	'Jane',
	'Doe'
);

INSERT INTO Livre (
	ISBN,
	titre,
	prix,
	prime,
	Auteur_prenom,
	Auteur_nom
) VALUES (
	3456789012,
	'Book 3',
	25,
	1,
	'Michael',
	'Brown'
);

INSERT INTO Livre (
	ISBN,
	titre,
	prix,
	prime,
	Auteur_prenom,
	Auteur_nom
) VALUES (
	4567890123,
	'Book 4',
	18,
	0,
	'Emily',
	'Johnson'
);

INSERT INTO Livre (
	ISBN,
	titre,
	prix,
	prime,
	Auteur_prenom,
	Auteur_nom
) VALUES (
	5678901234,
	'Book 5',
	30,
	1,
	'David',
	'Wilson'
);

-- Table: pseudonyme
INSERT INTO pseudonyme (
	libelle,
	Auteur_prenom,
	Auteur_nom
) VALUES (
	'Pseudonyme 1',
	'David',
	'Wilson'
);

INSERT INTO pseudonyme (
	libelle,
	Auteur_prenom,
	Auteur_nom
) VALUES (
	'Pseudonyme 2',
	'Emily',
	'Johnson'
);

INSERT INTO pseudonyme (
	libelle,
	Auteur_prenom,
	Auteur_nom
) VALUES (
	'Pseudonyme 3',
	'Michael',
	'Brown'
);

INSERT INTO pseudonyme (
	libelle,
	Auteur_prenom,
	Auteur_nom
) VALUES (
	'Pseudonyme 4',
	'Jane',
	'Doe'
);

INSERT INTO pseudonyme (
	libelle,
	Auteur_prenom,
	Auteur_nom
) VALUES (
	'Pseudonyme 5',
	'John',
	'Smith'
);