/* Database schema to keep the structure of entire database. */
CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL DEFAULT 0,
    neutered BOOLEAN NOT NULL DEFAULT false,
    weight_kg FLOAT NOT NULL
);

ALTER TABLE animals ADD COLUMN species VARCHAR(50);

CREATE TABLE owners (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals
ADD COLUMN species_id INT
CONSTRAINT fk_animals_species
REFERENCES species (id);

ALTER TABLE animals
ADD COLUMN owner_id INT
CONSTRAINT fk_animals_owners
REFERENCES owners (id);