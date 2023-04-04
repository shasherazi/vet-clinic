CREATE TABLE patients (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL
);

CREATE TABLE medical_histories (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    admitted_at TIMESTAMP NOT NULL,
    patient_id INT NOT NULL,
    status VARCHAR(100) NOT NULL
    CONSTRAINT fk_medical_histories_patients
        FOREIGN KEY (patient_id) REFERENCES patients (id)
);