Analysis of Soybean Production in Benin - SQL Project
# 🌾 Analyse de la Production de Soja au Bénin - SQL Project

## 📋 Vue d'ensemble du projet
Ce projet analyse la production de soja au Bénin sur la période 2021-2023 en utilisant des **données officielles** de l'INSAE (Institut National de la Statistique et de l'Analyse Économique) et de la FAO. Il démontre des compétences avancées en SQL et en analyse de données agricoles.

## 🎯 Objectifs du projet
- Identifier les départements les plus performants en production de soja
- Analyser l'évolution de la production sur 3 ans (2021-2023)
- Évaluer le potentiel de croissance par région
- Fournir des recommandations stratégiques pour améliorer la productivité

## 📊 Sources de données
### Données officielles utilisées :
1. **INSAE - Recensement National de l'Agriculture (RNA 2019)**
   - 322 612 producteurs de soja recensés au Bénin
   - Données par département
   - Superficies cultivables par région

2. **FAO - FAOSTAT (2023)**
   - Rendement officiel du soja : **1003.8 kg/ha** (2023)
   - Données de production vérifiées

## 🛠️ Technologies utilisées
- **Base de données :** SQLite
- **Langage :** SQL
- **Outils :** DB Browser for SQLite
- **Compétences démontrées :**
  - Conception de bases de données relationnelles
  - JOINs complexes (INNER JOIN)
  - Fonctions d'agrégation (SUM, AVG, COUNT, ROUND)
  - GROUP BY et ORDER BY
  - Sous-requêtes et calculs avancés
  - Analyse business et insights stratégiques

## 📊 Structure de la base de données

### Tables :
1. **Departements**
   - id, nom, nombre_producteurs_soja, superficie_cultivable_ha, population

2. **Productions_Soja**
   - id, departement_id, annee, superficie_cultivee_ha, production_totale_kg, rendement_kg_ha

## 🔍 Analyses réalisées

### 1. Production totale 2023
- **Production totale :** ~143 000 tonnes
- **Superficie cultivée :** ~124 000 ha
- **Rendement moyen :** 1003.8 kg/ha (données FAO officielles)

### 2. Évolution 2021-2023
Analyse de la croissance de la production sur 3 ans montrant :
- Augmentation du rendement de 912 kg/ha (2021) à 1003.8 kg/ha (2023)
- Croissance de 10% du rendement en 2 ans

### 3. Top 5 départements producteurs (2023)
1. **Borgou** - 20 076 tonnes (14.0% de la production nationale) 🏆
2. **Zou** - 19 072 tonnes (13.3%)
3. **Collines** - 18 068 tonnes (12.6%)
4. **Alibori** - 15 057 tonnes (10.5%)
5. **Atacora** - 12 045 tonnes (8.4%)

### 4. Potentiel de croissance
Identification des départements avec le plus grand potentiel inexploité :
- **Borgou** : 1 118 376 ha de potentiel
- **Collines** : 1 110 974 ha de potentiel
- **Alibori** : 1 105 894 ha de potentiel

### 5. Performance par producteur
Classification des départements selon la taille moyenne des exploitations :
- **Grande exploitation** : > 0.5 ha/producteur
- **Moyenne exploitation** : 0.3-0.5 ha/producteur
- **Petite exploitation** : < 0.3 ha/producteur

## 💡 Recommandations stratégiques

1. **Investir dans les départements leaders**
   - Borgou, Zou et Collines représentent 40% de la production nationale
   - Concentrer les programmes d'amélioration dans ces zones

2. **Exploiter le potentiel inexploité**
   - Seulement 1-2% des superficies cultivables sont utilisées pour le soja
   - Potentiel d'expansion massive dans tous les départements

3. **Améliorer le rendement**
   - Rendement actuel : 1003.8 kg/ha
   - Potentiel mondial : 2000-3000 kg/ha
   - Formation et accès aux intrants améliorés nécessaires

4. **Accompagner les petits producteurs**
   - Majorité des exploitations < 0.5 ha
   - Programmes de mécanisation et de regroupement recommandés

## 📁 Structure du projet
```
soja-benin-analysis/
├── README.md
├── soja_benin_analysis.db
├── sql/
│   ├── 01_schema_soja.sql
│   ├── 02_data_soja.sql
│   └── 03_analyses_soja.sql
└── data/
    └── sources_officielles.md
```

## 🚀 Comment reproduire cette analyse

1. Installer [DB Browser for SQLite](https://sqlitebrowser.org/)
2. Cloner ce repository
3. Créer la base de données : exécuter `01_schema_soja.sql`
4. Charger les données : exécuter `02_data_soja.sql`
5. Lancer les analyses : exécuter `03_analyses_soja.sql`

## 📈 Compétences démontrées
- Collecte de données auprès de sources officielles (INSAE, FAO)
- Conception et normalisation de bases de données
- Requêtes SQL complexes avec JOINs multiples
- Analyse de données agricoles et business intelligence
- Communication d'insights stratégiques
- Pensée critique et résolution de problèmes

## 🌍 Impact potentiel
Ce type d'analyse peut aider :
- **Le Ministère de l'Agriculture** à planifier les investissements
- **Les ONG agricoles** à cibler leurs interventions
- **Les coopératives** à optimiser leur production
- **Les investisseurs** à identifier les opportunités

## 👤 Auteur
**Denis HONVOU**
- GitHub: github.com/Dennisio1010
- Email: denishonvou97@gmail.com
- Localisation: Cotonou, Bénin

## 📝 Licence
Ce projet utilise des données publiques officielles et est destiné à des fins de démonstration de compétences en analyse de données.

---

*Projet réalisé dans le cadre d'un portfolio Data Analyst - Novembre 2025*
*Sources : INSAE RNA 2019 & FAO FAOSTAT 2023*
