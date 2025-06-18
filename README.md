# Tifosi-bdd

# Projet Base de Données MySQL — Tifosi

## 🎯 Objectif du projet

Ce projet consiste à concevoir et mettre en œuvre une base de données relationnelle pour un restaurant fictif nommé **Tifosi**, spécialisé dans les focaccias, les boissons et les menus.

Il répond aux exigences du titre professionnel **Développeur Web** :
- Concevoir un schéma relationnel
- Créer et manipuler une base de données MySQL
- Exécuter des requêtes SQL de vérification

---

## 📁 Contenu du dépôt

| Fichier              | Description |
|----------------------|-------------|
| schema_data.sql    | Script SQL contenant la création des tables, les contraintes, les insertions de données |
| test_queries.sql   | Script SQL contenant les requêtes de vérification demandées dans le brief |
| README.md          | Ce fichier explicatif |

---

## 🧱 Structure de la base de données

La base de données contient les tables suivantes :

- client  
- ingredient  
- focaccia  
- boisson  
- marque  
- menu  
- Relations : achete, comprend, contient, appartient, est_constitué

Les relations sont modélisées via des clés étrangères respectant les cardinalités fournies dans le MCD.

---

## 🚀 Instructions d’utilisation

1. **Importer la base de données**
   - Créer une base tifosi dans phpMyAdmin ou MySQL Workbench.
   - Importer le fichier schema_data.sql.

2. **Lancer les requêtes de test**
   - Ouvrir test_queries.sql.
   - Lancer les requêtes une par une et compléter les commentaires avec :
     - Le résultat obtenu
     - La validation de conformité

---

## ✅ Vérifications demandées (résumées dans test_queries.sql)

1. Liste des noms des focaccias (ordre alphabétique)  
2. Nombre total d'ingrédients  
3. Prix moyen des focaccias  
4. Liste des boissons avec leur marque  
5. Ingrédients de la focaccia "Raclaccia"  
6. Nombre d'ingrédients par focaccia  
7. Focaccia avec le plus d'ingrédients  
8. Focaccias contenant de l’ail  
9. Ingrédients non utilisés  
10. Focaccias sans champignons

---

## ✍️ Auteur

- **Nom :** AZIZ AYYAD  
- **Formation :** Développeur Web (TP)  
- **Date :** Juin 2025  