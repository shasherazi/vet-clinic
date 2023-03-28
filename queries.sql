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