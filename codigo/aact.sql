-- view the different diseases/conditions
-- hay 100k de disease va a estar complicado 
SELECT 
  COUNT(DISTINCT id) AS distinct_id,
  COUNT(DISTINCT name) AS distinct_name,
  COUNT(DISTINCT downcase_name) AS distinct_downcase_name
FROM conditions;
--- son muchas enfermedades habra que filtrar por estudios con combinaciones de farmacos

-- ahora en la table studies filtramos por las completadas y en fase 4
-- son 17841 
SELECT COUNT(*) AS num_phase4_completed
FROM studies
WHERE phase = 'Phase 4'
  AND overall_status = 'Completed';

--- table interventions: ahora necesitamos saber a droga a la que se esta refiriendo el estudio 
SELECT * 
FROM interventions
WHERE intervention_type = 'Drug'
LIMIT 30000


SELECT *
FROM interventions
WHERE intervention_type = 'Drug'
  AND (
    name ILIKE '%+%' OR
    name ILIKE '%/%' OR
    name ILIKE '% and %' OR
    name ILIKE '% with %' OR
    name ILIKE '% & %'
  );

--- filtro final 
WITH filtered_studies AS (
  SELECT nct_id
  FROM studies
  WHERE phase = 'Phase 4'
    AND overall_status = 'Completed'
),
filtered_interventions AS (
  SELECT nct_id, name AS drug
  FROM interventions
  WHERE intervention_type = 'Drug'
    AND (
      name ILIKE '%+%' OR
      name ILIKE '% /%' OR
      name ILIKE '% and %' OR
      name ILIKE '% with %' OR
      name ILIKE '% & %'
    )
),
filtered_conditions AS (
  SELECT nct_id, name AS disease
  FROM conditions
)

SELECT 
  s.nct_id,
  c.disease,
  i.drug
FROM filtered_studies s
JOIN filtered_interventions i ON s.nct_id = i.nct_id
JOIN filtered_conditions c ON s.nct_id = c.nct_id;

