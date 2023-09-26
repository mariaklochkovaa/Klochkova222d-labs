SELECT UPPER(name) AS name
FROM cities
ORDER BY name ASC
LIMIT 5 OFFSET 5;
SELECT name, LENGTH(name) AS Lenth_name 
FROM cities
WHERE NOT LENGTH(name) IN('8','9','10');
SELECT SUM(population) AS Population_from_S_and_C
FROM cities
WHERE region IN('C','S');
SELECT region,AVG(population) AS Average_population
FROM cities
WHERE region='W';
SELECT region,COUNT(name) AS Amound_cities
FROM cities
WHERE region='E';