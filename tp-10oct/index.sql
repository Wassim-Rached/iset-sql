CREATE TABLE Pilote (
	NumPil VARCHAR(10),
	NomPil VARCHAR(20),
	AdrPil VARCHAR(30),

	PRIMARY KEY(NumPil)
)

CREATE TABLE Avion (
	NumAv NUMBER,
	NomAv VARCHAR(10),
	CapAv NUMBER,

	PRIMARY KEY(NumAv)
)

CREATE TABLE Vol (
	NumVol NUMBER,
	NumPil VARCHAR(10),
	VilleDep VARCHAR(10),
	VilleAdr VARCHAR(10),
	NumAv NUMBER(10),

	PRIMARY KEY(NumVol),
	FOREIGN KEY(NumPil) REFERENCES Pilote(NumPil) ON DELETE CASCADE,
	FOREIGN KEY(NumAv) REFERENCES Avion(NumAv) ON DELETE CASCADE
)

INSERT INTO Pilote VALUES('P1','Wassim','kebili/douz');
INSERT INTO Pilote VALUES('P2','Asser','jandoba/bousalem');
INSERT INTO Pilote VALUES('P3','Wajih','tunis/cartage');


INSERT INTO Avion VALUES(1,'Boeing F16',23);
INSERT INTO Avion VALUES(2,'Boeing AH-6 Light Attack',56);
INSERT INTO Avion VALUES(3,'Boeing 737',13);


INSERT INTO Vol VALUES(1,'P1','Boussalem','Douz',1);
INSERT INTO Vol VALUES(1,'P1','Alia','Ras el kef',2);
INSERT INTO Vol VALUES(2,'P2','Ariana','El Fouar',2);
INSERT INTO Vol VALUES(2,'P2','Ben Gardane','Nefza',3);
INSERT INTO Vol VALUES(2,'P2','Mateur','Kelibia',2);
INSERT INTO Vol VALUES(3,'P3','Remada','Sidi Saleh',1);


SELECT * FROM Pilote;
SELECT * FROM Avion;
SELECT * FROM Vol;