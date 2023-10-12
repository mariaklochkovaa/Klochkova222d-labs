SELECT region,SUM(population) as population_region
FROM cities
GROUP BY region;
SELECT region,SUM(population) as population_region
FROM cities
GROUP BY region
HAVING COUNT(name)>=10;
SELECT name, population
FROM cities
WHERE region IN(SELECT uuid
                 FROM regions
                 WHERE area_quantity>=5)
ORDER BY population DESC
LIMIT 5 OFFSET 10;
SELECT name 
FROM regions 
ORDER BY (SELECT SUM(population) FROM cities WHERE population>300000 AND region=regions.uuid) DESC;
SELECT name, population
FROM cities
WHERE region IN (SELECT uuid 
                 FROM regions 
                 WHERE area_quantity <= 5) AND population NOT BETWEEN 150000 AND 500000;