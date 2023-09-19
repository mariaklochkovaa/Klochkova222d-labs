SELECT name
FROM cities
WHERE name LIKE '%ськ';
SELECT name
FROM cities
WHERE name LIKE '%донец%';
SELECT Concat(name,'(',region,')')
FROM cities
WHERE population>100000
ORDER BY name ASC;
SELECT name, population,(population/40000000)*100 AS percent_population
FROM cities
ORDER BY population DESC
LIMIT 10;
SELECT Concat (name,'-',(population/40000000)*100,'%') AS persent_population
FROM cities
WHERE (population/40000000)*100>=0.1
ORDER BY (population/40000000)*100 DESC;