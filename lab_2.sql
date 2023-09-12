SELECT name, population 
FROM cities
WHERE population>=1000000;
SELECT name, region, population
FROM cities
WHERE region IN('E','W')
ORDER BY population DESC;
SELECT name, region, population
FROM cities
WHERE population>50000 AND region IN('S','C','N');
SELECT name, region, population
FROM cities
WHERE 150000<population<350000 AND region IN('E','W','N')
ORDER BY name ASC
LIMIT 20;
SELECT name, region, population
FROM cities
WHERE NOT region IN('E','W')
ORDER BY population DESC
LIMIT 10 OFFSET 10; 
