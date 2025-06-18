USE tifosi;

-- 1️⃣ Afficher la liste des noms des focaccias par ordre alphabétique croissant
SELECT nom_focaccia
FROM focaccia
ORDER BY nom_focaccia ASC;
/*
Résultat attendu :
Emmentalaccia
Gorgonzollaccia
Mozaccia
Raclaccia
Tradizione

Résultat obtenu :
Emmentalaccia
Gorgonzollaccia
Mozaccia
Raclaccia
Tradizione...

Commentaires :
*/

-- 2️⃣ Afficher le nombre total d'ingrédients
SELECT COUNT(*) AS total_ingredients
FROM ingredient;
/*
Résultat attendu :
26

Résultat obtenu :
26

Commentaires :
*/

-- 3️⃣ Afficher le prix moyen des focaccias
SELECT ROUND(AVG(prix_focaccia), 2) AS prix_moyen
FROM focaccia;
/*
Résultat attendu :
9.64

Résultat obtenu :
9.64

Commentaires :
*/

-- 4️⃣ Afficher la liste des boissons avec leur marque, triée par nom de boisson
SELECT b.nom_boisson, m.nom_marque
FROM boisson b
JOIN marque m ON b.id_marque = m.id_marque
ORDER BY b.nom_boisson ASC;
/*
Résultat attendu :
Capri-sun        Coca-cola
Coca-cola original  Coca-cola
Coca-cola zéro      Coca-cola
...

Résultat obtenu :
Capri-sun        Coca-cola
Coca-cola original  Coca-cola
Coca-cola zéro      Coca-cola
...

Commentaires :
*/

-- 5️⃣ Afficher la liste des ingrédients pour la focaccia 'Raclaccia'
SELECT i.nom_ingredient
FROM comprend c
JOIN focaccia f ON c.id_focaccia = f.id_focaccia
JOIN ingredient i ON c.id_ingredient = i.id_ingredient
WHERE f.nom_focaccia = 'Raclaccia';
/*
Résultat attendu :
Base Tomate
Raclette
Cresson
Ail
Champignon
Origan

Résultat obtenu :
nom_ingredient
Ail
Base Tomate
Champignon
Cresson
Raclette
Origan

Commentaires :
*/

-- 6️⃣ Afficher le nom et le nombre d'ingrédients pour chaque focaccia
SELECT f.nom_focaccia, COUNT(*) AS nb_ingredients
FROM focaccia f
JOIN comprend c ON f.id_focaccia = c.id_focaccia
GROUP BY f.nom_focaccia;
/*
Résultat attendu :
Chaque focaccia → 6 ingrédients

Résultat obtenu :
Emmentalaccia   →  6
Gorgonzollaccia →  6
Mozaccia        →  6
Raclaccia       →  6
Tradizione      →  6

Commentaires :
*/

-- 7️⃣ Afficher le nom de la focaccia qui a le plus d'ingrédients
SELECT nom_focaccia
FROM focaccia f
JOIN comprend c ON f.id_focaccia = c.id_focaccia
GROUP BY f.nom_focaccia
ORDER BY COUNT(*) DESC
LIMIT 1;
/*
Résultat attendu :
N'importe quelle focaccia avec 6 ingrédients (ex : Mozaccia)

Résultat obtenu :
Tradizione

Commentaires :
*/

-- 8️⃣ Afficher la liste des focaccias qui contiennent de l’ail
SELECT DISTINCT f.nom_focaccia
FROM focaccia f
JOIN comprend c ON f.id_focaccia = c.id_focaccia
JOIN ingredient i ON i.id_ingredient = c.id_ingredient
WHERE i.nom_ingredient LIKE '%ail%';
/*
Résultat attendu :
Mozaccia
Gorgonzollaccia
Raclaccia

Résultat obtenu :
Gorgonzollaccia
Mozaccia
Raclaccia


Commentaires :
*/

-- 9️⃣ Afficher la liste des ingrédients inutilisés
SELECT nom_ingredient
FROM ingredient
WHERE id_ingredient NOT IN (
  SELECT DISTINCT id_ingredient FROM comprend
);
/*
Résultat attendu :
Tous les ingrédients non utilisés dans aucune focaccia
Ex : Ananas, Artichaut, Salami...

Résultat obtenu :
Ananas, Artichaut, Salami...

Commentaires :
*/

-- 🔟 Afficher la liste des focaccias qui n'ont pas de champignons
SELECT nom_focaccia
FROM focaccia f
WHERE NOT EXISTS (
  SELECT 1
  FROM comprend c
  JOIN ingredient i ON c.id_ingredient = i.id_ingredient
  WHERE c.id_focaccia = f.id_focaccia
    AND i.nom_ingredient LIKE '%champignon%'
);
/*
Résultat attendu :
Mozaccia

Résultat obtenu :
Mozaccia

Commentaires :
*/
