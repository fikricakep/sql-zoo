https://sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial

# INTRODUCTION show the name, continent and population of all countries

SELECT name, continent, population FROM world

# LARGE COUNTRIES Show the name for the countries that have a population of at least 200 million

SELECT name
  FROM world
  WHERE population > 200000000

# PER CAPITA GDP Give the name and the per capita GDP for those countries with a population of at least 200 million

SELECT name, gdp/population as per_capita_GDP
  FROM world
  WHERE population > 200000000

# SOUTH AMERICA IN MILLIONS Show the name and population in millions for the countries of the continent 'South America'

SELECT name, population/1000000 as population_in_millions
  FROM world
  WHERE continent = 'South America'
  
# FRANCE, GERMANY, ITALY Show the name and population for France, Germany, Italy

SELECT name, population
  FROM world
  WHERE name in ('France', 'Germany', 'Italy')

#
