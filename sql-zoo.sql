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
1 SELECT name <https://sqlzoo.net/wiki/SELECT_names>
    Some pattern matching queries
    1
        SELECT name FROM world   WHERE name LIKE 'Y%'
    2
        SELECT name FROM world   WHERE name LIKE '%y'
    3
        SELECT name FROM world   WHERE name LIKE '%x%'
    4
        SELECT name FROM world   WHERE name LIKE '%land'
    5
        SELECT name FROM world   WHERE name LIKE 'C%ia'
    6
        SELECT name FROM world   WHERE name LIKE '%oo%'
    7
        SELECT name FROM world   WHERE name LIKE '%a%a%a%'
    8
        SELECT name FROM world  WHERE name LIKE '_t%' ORDER BY name
    9
        SELECT name FROM world  WHERE name LIKE '%o__o%'
    10
        SELECT name FROM world  WHERE name LIKE '____'
    11
        SELECT name   FROM world  WHERE name = capital
    12
        SELECT name   FROM world  WHERE capital LIKE (concat(name, '%city%'))
    13
        SELECT capital, name   FROM world  WHERE capital LIKE (concat('%', name, '%'))
    14
        SELECT capital, name   FROM world  WHERE capital LIKE (concat( name, '_%'))
    15
        SELECT name, REPLACE(capital, name , '') as ext   FROM world  WHERE capital LIKE (concat( name, '_%'))
2 SELECT from World <https://sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial>
    In which we query the World country profile table.
    1
        SELECT name, continent, population FROM world
    2
        SELECT name   FROM world  WHERE population > 200000000
    3
        SELECT name,  gdp/population   FROM world  WHERE population > 200000000
    4
        SELECT name,  population/1000000   FROM world  WHERE continent = 'South America'
    5
        SELECT name,  population   FROM world  WHERE name in ( 'France', 'Germany', 'Italy')
    6
        SELECT name   FROM world  WHERE name like ('%United%')
    7
        SELECT name, population, area   FROM world  WHERE area> 3000000 or population > 250000000
    8
        SELECT name, population, area   FROM world  WHERE area> 3000000 xor population > 250000000
    9
        SELECT name, round(population/1000000,2),  ROUND(gdp/1000000000,2)   FROM world  WHERE continent= 'South America'
    10
        SELECT name,  ROUND(gdp/population,1000)   FROM world  WHERE GDP >= 1000000000000
    11
        SELECT name,        capital   FROM world  WHERE LENGTH(name) = LENGTH(capital)
    12
        SELECT name, capital FROM world where  LEFT(name,1)=  LEFT(capital,1) and name <> capital
    13
        SELECT name    FROM world WHERE name LIKE '%a%' and name LIKE '%i%' and name LIKE '%e%' and name LIKE '%o%' and name LIKE '%u%'   and name NOT LIKE '% %'
    png_15485061574425854945.png
3 SELECT from Nobel <https://sqlzoo.net/wiki/SELECT_from_Nobel_Tutorial>
    Additional practice of the basic features using a table of Nobel Prize winners.
    1
        SELECT yr, subject, winner   FROM nobel  WHERE yr = 1950
    2
        SELECT winner   FROM nobel  WHERE yr = 1962    AND subject = 'Literature'
    3
        SELECT yr, subject   FROM nobel  WHERE  winner = 'Albert Einstein'
    4
        SELECT winner   FROM nobel  WHERE  subject = 'Peace' and yr >= 2000
    5
        SELECT yr, subject, winner   FROM nobel  WHERE  subject = 'Literature' and yr <= 1989 and yr >= 1980
    6
        SELECT * FROM nobel  WHERE    winner IN ('Theodore Roosevelt',                   'Woodrow Wilson',                   'Jimmy Carter', 'Barack Obama')
    7
        SELECT winner FROM nobel  WHERE    winner like ('John%')
    8
        SELECT yr,subject,winner FROM nobel  WHERE    subject= 'Chemistry' and yr=1984 or   subject= 'Physics' and yr=1980
    9
        SELECT yr,subject,winner FROM nobel  WHERE    yr= 1980 and subject not in ('Chemistry', 'Medicine')
    10
        SELECT yr,subject,winner FROM nobel  WHERE    yr< 1910 and yr <> 1910 and subject in ('Medicine') or subject in ('Literature') and yr >= 2004
    11
        SELECT * FROM nobel  WHERE    winner = 'PETER GRÜNBERG'
    12
        SELECT * FROM nobel  WHERE    winner like ( 'EUGENE O%')
    13
        SELECT winner,yr,subject FROM nobel  WHERE    winner like ( 'Sir%')
    14
        SELECT winner, subject   FROM nobel  WHERE yr=1984  ORDER BY subject IN ('Physics','Chemistry'), subject, winner
    png_9578422754303443349.png
SELECT name FROM world   WHERE population >      (SELECT population FROM world       WHERE name='Russia')
SELECT name FROM world   WHERE continent= 'Europe' and gdp/population >      (SELECT gdp/population  FROM world       WHERE name='United Kingdom')
SELECT name, continent FROM world   WHERE continent in      (SELECT continent  FROM world       WHERE name in ('Argentina' , 'Australia')) order by name
SELECT name FROM world   WHERE population >      (SELECT population  FROM world       WHERE name = 'Canada') and population <      (SELECT population  FROM world       WHERE name = 'Poland')
SELECT name, concat( round (     (population*100)/     (SELECT population FROM world      WHERE name = 'Germany'),0), '%' ) FROM world WHERE continent = 'Europe'
select name from world where gdp > (select max(gdp) from world where continent='Europe')
select continent, name, area from world where area in ( SELECT  max(area) FROM world group by continent)
select continent, name from world where name in (select min (name) from world  group by  continent)
Select  x.continent, x.name From world x Where x.name <= ALL (select y.name from world y where x.continent=y.continent) ORDER BY name

--5 SUM and COUNT
SELECT SUM(population) FROM world
select distinct continent from world
select sum(gdp) from world where continent = 'Africa'
select count(name) from world where area>=1000000
select sum(population) from world where name in ('Estonia', 'Latvia', 'Lithuania')
select continent, count(name) from world group by continent
SELECT continent, COUNT(name) FROM world WHERE population >= 10000000 GROUP BY continent;
select continent from world group by continent having sum(population)>=100000000

--6 JOIN
SELECT matchid, player FROM goal   WHERE teamid = 'GER'
SELECT id,stadium,team1,team2   FROM game where id = 1012
SELECT player,teamid, stadium, mdate   FROM game JOIN goal ON (id=matchid) where teamid='GER'
SELECT team1,team2, player   FROM game JOIN goal ON (id=matchid) where player LIKE 'Mario%'
SELECT player, teamid, coach, gtime   FROM goal join eteam on teamid=id  WHERE gtime<=10
select mdate, teamname from game JOIN eteam ON (team1=eteam.id) where coach = 'Fernando Santos'
select player from game join goal on (id = matchid) where stadium = 'National Stadium, Warsaw'
SELECT player   FROM game JOIN goal ON matchid = id      WHERE (teamid<>'GER' AND (team1='GER' OR team2='GER'))
SELECT  teamname, count (*)   FROM eteam JOIN goal ON id=teamid  GROUP BY teamname  ORDER BY teamname
select stadium, count(*) from game join goal on id = matchid Group BY stadium
SELECT matchid, mdate, count(teamid)   FROM game JOIN goal ON matchid = id  WHERE (team1 = 'POL' OR team2 = 'POL') group by mdate, matchid order by matchid
select matchid, mdate, count(*) from game join goal on matchid = id where (teamid = 'GER') group by mdate, matchid order by matchid
SELECT mdate, team1, SUM(          case          when teamid=team1 then 1          ELSE 0          END ) AS score1, team2, SUM(          case          when teamid=team2 then 1          ELSE 0          END ) AS score2 FROM game gm LEFT JOIN goal g ON(gm.id=g.matchid) GROUP BY mdate,team1,team2 ORDER BY matchid

--7 More JOIN operations
SELECT id, title  FROM movie  WHERE yr=1962
select yr from movie where title = 'Citizen Kane'
select id, title, yr from movie where title like ('%Star Trek%') order by yr
select id from actor where name = 'Glenn Close'
select id from movie where title = 'Casablanca'
select name  from casting join actor on id = actorid  where movieid = 11768
select name  from casting join actor on id = actorid  where movieid = (select id from movie where title = 'Alien' )
select title from movie join casting on movie.id = movieid join actor on actor.id = actorid where actor.name =  'Harrison Ford'
select title from movie join casting  on movie.id = movieid join actor on actor.id = actorid where actor.name =  'Harrison Ford' and ord <> 1
select movie.title, actor.name from movie join casting on movie.id=casting.movieid join actor on actor.id= casting.actorid where movie.yr = 1962 and ord = 1
SELECT yr,COUNT(title) FROM   movie JOIN casting ON movie.id=movieid         JOIN actor   ON actorid=actor.id WHERE name='Rock Hudson' GROUP BY yr HAVING COUNT(title) > 2
SELECT movie.title, actor.name  FROM   movie JOIN casting ON movie.id=casting.movieid         JOIN actor   ON casting.actorid=actor.id and ord=1  where casting.movieid in ( SELECT movieid FROM casting WHERE actorid = (   SELECT id FROM actor   WHERE name='Julie Andrews'))
    movie.title
        actor.name
    where name='Julie Andrews'
    Find the id of julie
    Find her films from casting using her id
select actor.name  from actor join casting on actor.id = casting.actorid and (select count(ord)  from casting  where ord=1 and actor.id = casting.actorid) >= 15 group by name
select distinct movie.title, COUNT(actorid) from movie join casting on movie.id = casting.movieid where  movie.yr = 1978 group by title order by COUNT(actorid) desc, title
select actor.name from actor join casting on actor.id = casting.actorid where movieid in (select movieid from casting where actorid = (select id from actor where name = 'Art Garfunkel')) and actor.name <> 'Art Garfunkel'

--8 Using Null
select name from teacher where dept is null
SELECT teacher.name, dept.name  FROM teacher INNER JOIN dept            ON (teacher.dept=dept.id)
select teacher.name as teacher, dept.name as department from teacher left join dept on teacher.dept=dept.id
select teacher.name as teacher, dept.name as department from teacher right join dept on teacher.dept=dept.id
select teacher.name, COALESCE(teacher.mobile,'07986 444 2266') from teacher
select teacher.name, COALESCE(dept.name,'None') from teacher left join dept on teacher.dept = dept.id
select count(teacher.name), count(teacher.mobile) from teacher
select dept.name, COALESCE(count (teacher.name), 0) as teachers from teacher right join dept on teacher.dept = dept.id group by dept.name
select teacher.name, case when teacher.dept in(1,2) then 'Sci' else 'Art' end from teacher
select teacher.name, case when teacher.dept in(1,2) then 'Sci' when teacher.dept in(4) then 'Art' else 'None' end from teacher

--9 Self join
select count(id) from stops
select id from stops where stops.name =  'Craiglockhart'
select id, name from stops join route on stops.id = route.stop where num = '4' and company = 'LRT'
SELECT company, num, COUNT(*) FROM route WHERE stop=149 OR stop=53 GROUP BY company, num HAVING COUNT(*) = 2
SELECT a.company, a.num, a.stop, b.stop FROM route a JOIN route b ON   (a.company=b.company AND a.num=b.num) WHERE a.stop=53 and b.stop=149
SELECT a.company, a.num, stopa.name, stopb.name FROM route a JOIN route b ON   (a.company=b.company AND a.num=b.num)   JOIN stops stopa ON (a.stop=stopa.id)   JOIN stops stopb ON (b.stop=stopb.id) WHERE stopa.name ='Craiglockhart' and stopb.name = 'London Road'
SELECT DISTINCT a.company, a.num FROM route a JOIN route b ON a.num = b.num WHERE a.stop = 115 AND b.stop = 137
select routea.company, routea.num from route routea join route routeb on (routea.num = routeb.num) join stops stopa on(routea.stop = stopa.id) join stops stopb on (routeb.stop = stopb.id) where  stopa.name = 'Craiglockhart' AND stopb.name = 'Tollcross'
SELECT DISTINCT sb.name, rb.company, rb.num from route ra join route rb on (ra.num = rb.num AND ra.company = rb.company) join stops sa on(ra.stop = sa.id) join stops sb on (rb.stop = sb.id)  WHERE sa.name = 'Craiglockhart'
