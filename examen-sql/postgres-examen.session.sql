CREATE TABLE
	Passsager (
		nom VARCHAR(30) NOT NULL,
		prenom VARCHAR(30) NOT NULL,
		date_nais DATE NOT NULL,
		num_cin INT,
		num_pass VARCHAR(30) UNIQUE,
		CONSTRAINT pk_num_cin PRIMARY KEY (num_cin)
	);

CREATE TABLE
	Pay (
		cod_pay INT,
		nom_pay VARCHAR(30) NOT NULL,
		superficie INT NOT NULL,
		capital VARCHAR(30) NOT NULL,
		CONSTRAINT pk_cod_pay PRIMARY KEY (cod_pay)
	);

CREATE TABLE
	Voyager (
		code_pay INT,
		num_pass VARCHAR(30),
		date_voy DATE NOT NULL,
		mnt_billet INT NOT NULL,
		CONSTRAINT pk_cod_pay__num_pay PRIMARY KEY (code_pay, num_pass)
	);

INSERT INTO
	Passsager (nom, prenom, date_nais, num_cin, num_pass)
VALUES
	(
		'Ben Ali',
		'Mohamed',
		'1985-10-20',
		12546878,
		'54689102035nb1'
	),
	('Ben Ali', 'Salha', '2022-12-10', 25647856, NULL),
	(
		'Ben Ali',
		'Nozha',
		'1968-02-15',
		58648789,
		'5478995mlkodfff'
	);

INSERT INTO
	Pay (cod_pay, nom_pay, superficie, capital)
VALUES
	(105, 'Algerie', 2000, 'Alger'),
	(120, 'France', 2000, 'Paris');

INSERT INTO
	Voyager (code_pay, num_pass, date_voy, mnt_billet)
VALUES
	(105, '54689102035nb1', '2024-01-20', 1200),
	(120, '5478995mlkodfff', '2024-01-20', 2000),
	(120, '54689102035nb1', '2023-05-10', 2000);

SELECT * FROM Voyager;
SELECT * FROM Passsager;
SELECT * FROM Pay;


-- EX 3
DELETE FROM Voyager WHERE num_pass = '5478995mlkodfff';
UPDATE
	Passsager
SET
	num_pass = NULL
WHERE
	nom = 'Ben Ali' AND prenom = 'Nozha';



-- EX 4
SELECT nom,prenom
FROM Passsager
WHERE num_pass = '54689102035nb1';


-- EX 5
SELECT SUM(mnt_billet) FROM Voyager WHERE code_pay = 120;
