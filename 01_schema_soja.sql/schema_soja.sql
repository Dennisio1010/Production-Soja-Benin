-- ================================================
-- Projet: Analyse de la Production de Soja au Bénin
-- Base de données: soja_benin_analysis
-- Date: Novembre 2025
-- ================================================

-- Supprimer les tables existantes si elles existent
DROP TABLE IF EXISTS Productions_Soja;
DROP TABLE IF EXISTS Departements;

-- Création de la table Departements
CREATE TABLE Departements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL,
    nombre_producteurs_soja INTEGER,
    superficie_cultivable_ha REAL,
    population INTEGER
);

-- Création de la table Productions_Soja
CREATE TABLE Productions_Soja (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    departement_id INTEGER,
    annee INTEGER,
    superficie_cultivee_ha REAL,
    production_totale_kg REAL,
    rendement_kg_ha REAL,
    FOREIGN KEY (departement_id) REFERENCES Departements(id)
);