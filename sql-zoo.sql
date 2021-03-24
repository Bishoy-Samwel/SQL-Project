--0 SELECT basics
SELECT population FROM world   WHERE name = 'Germany'
SELECT name, population FROM world   WHERE name IN ('Sweden', 'Norway', 'Denmark');
SELECT name, area FROM world   WHERE area BETWEEN 200000 AND 250000
--1 SELECT name
SELECT name FROM world   WHERE name LIKE 'Y%'
SELECT name FROM world   WHERE name LIKE '%y'
SELECT name FROM world   WHERE name LIKE '%x%'
SELECT name FROM world   WHERE name LIKE '%land'
SELECT name FROM world   WHERE name LIKE 'C%ia'
SELECT name FROM world   WHERE name LIKE '%oo%'
SELECT name FROM world   WHERE name LIKE '%a%a%a%'
SELECT name FROM world  WHERE name LIKE '_t%' ORDER BY name
SELECT name FROM world  WHERE name LIKE '%o__o%'
SELECT name FROM world  WHERE name LIKE '____'
SELECT name   FROM world  WHERE name = capital
SELECT name   FROM world  WHERE capital LIKE (concat(name, '%city%'))
SELECT capital, name   FROM world  WHERE capital LIKE (concat('%', name, '%'))
SELECT capital, name   FROM world  WHERE capital LIKE (concat( name, '_%'))
SELECT name, REPLACE(capital, name , '') as ext   FROM world  WHERE capital LIKE (concat( name, '_%'))
--2 SELECT from World
SELECT name, continent, population FROM world
SELECT name   FROM world  WHERE population > 200000000
SELECT name,  gdp/population   FROM world  WHERE population > 200000000
SELECT name,  population/1000000   FROM world  WHERE continent = 'South America'
SELECT name,  population   FROM world  WHERE name in ( 'France', 'Germany', 'Italy')
SELECT name   FROM world  WHERE name like ('%United%')
SELECT name, population, area   FROM world  WHERE area> 3000000 or population > 250000000
SELECT name, population, area   FROM world  WHERE area> 3000000 xor population > 250000000
SELECT name, round(population/1000000,2),  ROUND(gdp/1000000000,2)   FROM world  WHERE continent= 'South America'
SELECT name,  ROUND(gdp/population,1000)   FROM world  WHERE GDP >= 1000000000000
SELECT name,        capital   FROM world  WHERE LENGTH(name) = LENGTH(capital)
SELECT name, capital FROM world where  LEFT(name,1)=  LEFT(capital,1) and name <> capital
SELECT name    FROM world WHERE name LIKE '%a%' and name LIKE '%i%' and name LIKE '%e%' and name LIKE '%o%' and name LIKE '%u%'   and name NOT LIKE '% %'

--3 SELECT from Nobel
SELECT yr, subject, winner   FROM nobel  WHERE yr = 1950
SELECT winner   FROM nobel  WHERE yr = 1962    AND subject = 'Literature'
SELECT yr, subject   FROM nobel  WHERE  winner = 'Albert Einstein'
SELECT winner   FROM nobel  WHERE  subject = 'Peace' and yr >= 2000
SELECT yr, subject, winner   FROM nobel  WHERE  subject = 'Literature' and yr <= 1989 and yr >= 1980
SELECT * FROM nobel  WHERE    winner IN ('Theodore Roosevelt',                   'Woodrow Wilson',                   'Jimmy Carter', 'Barack Obama')
SELECT winner FROM nobel  WHERE    winner like ('John%')
SELECT yr,subject,winner FROM nobel  WHERE    subject= 'Chemistry' and yr=1984 or   subject= 'Physics' and yr=1980
SELECT yr,subject,winner FROM nobel  WHERE    yr= 1980 and subject not in ('Chemistry', 'Medicine')
SELECT yr,subject,winner FROM nobel  WHERE    yr< 1910 and yr <> 1910 and subject in ('Medicine') or subject in ('Literature') and yr >= 2004
SELECT * FROM nobel  WHERE    winner = 'PETER GRÜNBERG'
SELECT * FROM nobel  WHERE    winner like ( 'EUGENE O%')
SELECT winner,yr,subject FROM nobel  WHERE    winner like ( 'Sir%')
SELECT winner, subject   FROM nobel  WHERE yr=1984  ORDER BY subject IN ('Physics','Chemistry'), subject, winner

--4 SELECT within SELECT

--5 SUM and COUNT

--6 JOIN

--7 More JOIN operations

--8 Using Null

--9 Self join