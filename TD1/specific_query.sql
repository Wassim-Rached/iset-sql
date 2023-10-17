SELECT
	p.libelle
FROM
	Auteur     a
	INNER JOIN pseudonyme p
	ON a.nom = p.Auteur_nom
	AND a.prenom = p.Auteur_prenom;