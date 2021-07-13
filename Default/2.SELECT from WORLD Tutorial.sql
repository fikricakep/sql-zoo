https://sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial

# INTRODUCTION: show the name, continent and population of all countries

SELECT name, continent, population FROM world

# LARGE COUNTRIES: Show the name for the countries that have a population of at least 200 million

SELECT name
  FROM world
  WHERE population > 200000000

# PER CAPITA GDP: Give the name and the per capita GDP for those countries with a population of at least 200 million

SELECT name, gdp/population as per_capita_GDP
  FROM world
  WHERE population > 200000000

# SOUTH AMERICA IN MILLIONS: Show the name and population in millions for the countries of the continent 'South America'

SELECT name, population/1000000 as population_in_millions
  FROM world
  WHERE continent = 'South America'
  
# FRANCE, GERMANY, ITALY: Show the name and population for France, Germany, Italy

SELECT name, population
  FROM world
  WHERE name in ('France', 'Germany', 'Italy')

# UNITED: Show the countries which have a name that includes the word 'United'

SELECT name FROM world
WHERE name LIKE '%United%'

# TWO WAYS TO BE BIG: Show the countries that are big by area or big by population

SELECT name, population, area FROM world
WHERE area > 3000000 OR population > 250000000

# ONE OR THE OTHER (BUT NOT BOTH): Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both

SELECT name, population, area FROM world
WHERE (area > 3000000 AND NOT population > 250000000) OR (population > 250000000 AND NOT area > 3000000)

# ROUNDING: show population in millions and GDP in billions both to 2 decimal places

SELECT name,ROUND(population/1000000,2) AS population_in_millions, ROUND(gdp/1000000000,2) AS gdp_in_billions FROM world
WHERE continent = 'South America'

# TRILLION DOLLARS ECONOMIES: Show per-capita GDP for the trillion dollar countries to the nearest $1000

SELECT name, ROUND(gdp/population,-3)
FROM world
WHERE gdp > 1000000000000

# NAME AND CAPITAL HAVE THE SAME LENGTH: Show the name and capital where the name and the capital have the same number of characters.

SELECT name, capital
  FROM world
 WHERE len(name) = len(capital)
