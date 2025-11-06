-- ================================================
-- Requêtes d'analyse - Projet Soja Bénin
-- ================================================

-- =============================================
-- ANALYSE 1: Production totale de soja 2023
-- =============================================
SELECT 
    SUM(production_totale_kg) AS production_totale_kg,
    ROUND(SUM(production_totale_kg) / 1000, 2) AS production_totale_tonnes,
    SUM(superficie_cultivee_ha) AS superficie_totale_ha,
    ROUND(AVG(rendement_kg_ha), 2) AS rendement_moyen_kg_ha
FROM Productions_Soja
WHERE annee = 2023;

-- =============================================
-- ANALYSE 2: Évolution de la production 2021-2023
-- =============================================
SELECT 
    annee,
    SUM(superficie_cultivee_ha) AS superficie_totale_ha,
    ROUND(SUM(production_totale_kg) / 1000, 2) AS production_totale_tonnes,
    ROUND(AVG(rendement_kg_ha), 2) AS rendement_moyen_kg_ha
FROM Productions_Soja
GROUP BY annee
ORDER BY annee;

-- =============================================
-- ANALYSE 3: Top 10 départements par production 2023
-- =============================================
SELECT 
    Departements.nom AS departement,
    Productions_Soja.superficie_cultivee_ha,
    ROUND(Productions_Soja.production_totale_kg / 1000, 2) AS production_tonnes,
    Productions_Soja.rendement_kg_ha,
    ROUND((Productions_Soja.production_totale_kg * 100.0) / 
          (SELECT SUM(production_totale_kg) FROM Productions_Soja WHERE annee = 2023), 2) AS pourcentage_production
FROM Productions_Soja
INNER JOIN Departements ON Productions_Soja.departement_id = Departements.id
WHERE Productions_Soja.annee = 2023
ORDER BY Productions_Soja.production_totale_kg DESC;

-- =============================================
-- ANALYSE 4: Potentiel de croissance par département
-- =============================================
SELECT 
    Departements.nom AS departement,
    Departements.superficie_cultivable_ha,
    Productions_Soja.superficie_cultivee_ha AS superficie_soja_ha,
    ROUND((Productions_Soja.superficie_cultivee_ha * 100.0) / Departements.superficie_cultivable_ha, 2) AS taux_utilisation_pourcent,
    ROUND(Departements.superficie_cultivable_ha - Productions_Soja.superficie_cultivee_ha, 0) AS potentiel_inexploite_ha,
    ROUND((Departements.superficie_cultivable_ha - Productions_Soja.superficie_cultivee_ha) * 1003.8 / 1000, 2) AS production_potentielle_tonnes
FROM Departements
INNER JOIN Productions_Soja ON Departements.id = Productions_Soja.departement_id
WHERE Productions_Soja.annee = 2023
ORDER BY potentiel_inexploite_ha DESC
LIMIT 10;

-- =============================================
-- ANALYSE 5: Performance par producteur
-- =============================================
SELECT 
    Departements.nom AS departement,
    Departements.nombre_producteurs_soja,
    Productions_Soja.superficie_cultivee_ha,
    ROUND(Productions_Soja.production_totale_kg / 1000, 2) AS production_tonnes,
    ROUND(Productions_Soja.superficie_cultivee_ha / Departements.nombre_producteurs_soja, 2) AS superficie_moyenne_par_producteur,
    ROUND((Productions_Soja.production_totale_kg / 1000) / Departements.nombre_producteurs_soja, 2) AS production_moyenne_par_producteur_tonnes,
    CASE 
        WHEN Productions_Soja.superficie_cultivee_ha / Departements.nombre_producteurs_soja > 0.5 THEN 'Grande exploitation'
        WHEN Productions_Soja.superficie_cultivee_ha / Departements.nombre_producteurs_soja > 0.3 THEN 'Moyenne exploitation'
        ELSE 'Petite exploitation'
    END AS categorie_exploitation
FROM Departements
INNER JOIN Productions_Soja ON Departements.id = Productions_Soja.departement_id
WHERE Productions_Soja.annee = 2023
ORDER BY production_moyenne_par_producteur_tonnes DESC;