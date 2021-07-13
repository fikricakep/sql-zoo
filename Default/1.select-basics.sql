# Modify it to show the population of Germany

SELECT population FROM world
  WHERE name = 'Germany'
  
# Show the name and the population for 'Sweden', 'Norway' and 'Denmark'

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

# Which countries are not too small and not too big? range area from 200000 to 250000

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
