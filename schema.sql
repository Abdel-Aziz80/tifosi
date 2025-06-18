-- Base de données : tifosi
CREATE DATABASE IF NOT EXISTS tifosi;
USE tifosi;

-- Création des tables
CREATE TABLE client (
  id_client INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom_client VARCHAR(50) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  code_postal CHAR(5) NOT NULL
);

CREATE TABLE ingredient (
  id_ingredient INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom_ingredient VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE marque (
  id_marque INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom_marque VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE boisson (
  id_boisson INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom_boisson VARCHAR(50) NOT NULL UNIQUE,
  id_marque INT NOT NULL,
  FOREIGN KEY (id_marque) REFERENCES marque(id_marque) ON UPDATE CASCADE
);

CREATE TABLE focaccia (
  id_focaccia INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom_focaccia VARCHAR(50) NOT NULL UNIQUE,
  prix_focaccia DECIMAL(5,2) NOT NULL
);

CREATE TABLE menu (
  id_menu INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom_menu VARCHAR(50) NOT NULL UNIQUE,
  prix_menu DECIMAL(5,2) NOT NULL,
  id_focaccia INT NOT NULL,
  FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia) ON UPDATE CASCADE
);

CREATE TABLE achete (
  id_client INT NOT NULL,
  id_menu INT NOT NULL,
  date_achat DATE NOT NULL,
  PRIMARY KEY (id_client, id_menu, date_achat),
  FOREIGN KEY (id_client) REFERENCES client(id_client) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_menu) REFERENCES menu(id_menu) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE comprend (
  id_focaccia INT NOT NULL,
  id_ingredient INT NOT NULL,
  quantite INT DEFAULT NULL,
  PRIMARY KEY (id_focaccia, id_ingredient),
  FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient) ON UPDATE CASCADE
);

CREATE TABLE contient (
  id_menu INT NOT NULL,
  id_boisson INT NOT NULL,
  PRIMARY KEY (id_menu, id_boisson),
  FOREIGN KEY (id_menu) REFERENCES menu(id_menu) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson) ON UPDATE CASCADE
);

CREATE TABLE appartient (
  id_boisson INT NOT NULL,
  id_marque INT NOT NULL,
  PRIMARY KEY (id_boisson, id_marque),
  FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_marque) REFERENCES marque(id_marque) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE est_constitué (
  id_focaccia INT NOT NULL,
  id_menu INT NOT NULL,
  PRIMARY KEY (id_focaccia, id_menu),
  FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_menu) REFERENCES menu(id_menu) ON DELETE CASCADE ON UPDATE CASCADE
);
