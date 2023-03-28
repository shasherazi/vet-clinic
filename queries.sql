/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

----------------------------------------------

-- update the animals table by setting the species column to unspecified
BEGIN;

UPDATE animals SET species = 'unspecified';

ROLLBACK;

----------------------------------------------

BEGIN;

-- update the animals table by setting the species column to digimon for all animals that have a name ending in mon
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';

-- update the animals table by setting the species column to pokemon for all animals that don't have species already set
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;

COMMIT;

----------------------------------------------

-- inside a transaction delete all records in the animals table, then roll back the transaction
BEGIN;

DELETE FROM animals;

ROLLBACK;

----------------------------------------------

-- inside a transaction:
-- delete all animals born after Jan 1st, 2022
BEGIN;

DELETE FROM animals WHERE date_of_birth > '2022-01-01';

-- create a savepoint for the transaction
SAVEPOINT savepoint1;

-- update all animals' weight to be their weight multiplied by -1
UPDATE animals SET weight_kg = weight_kg * -1;

-- rollback to the savepoint
ROLLBACK TO savepoint1;

-- update all animals' weights that are negative to be their weight multiplied by -1
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

-- commit the transaction
COMMIT;

----------------------------------------------

-- how many animals are there
SELECT COUNT(*) FROM animals;

-- how many animals have never tried to escape
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

-- what is the average weight of animals
SELECT AVG(weight_kg) FROM animals;

-- who escapes the most, neutered or not neutered animals
SELECT neutered, SUM(escape_attempts) as total_escape_attempts FROM animals
GROUP BY neutered ORDER BY total_escape_attempts DESC LIMIT 1;

-- what is the minimum and maximum weight of each type of animal
SELECT species, MIN(weight_kg) as min_weight, MAX(weight_kg) as max_weight FROM animals
GROUP BY species;

-- what is the average number of escape attempts per animal type of those born between 1990 and 2000
SELECT species, AVG(escape_attempts) as avg_escape_attempts FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;