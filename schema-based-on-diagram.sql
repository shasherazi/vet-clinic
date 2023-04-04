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

CREATE TABLE invoices (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    total_amount DECIMAL NOT NULL,
    generated_at TIMESTAMP NOT NULL,
    payed_at TIMESTAMP NOT NULL,
    medical_history_id  INT NOT NULL,
    CONSTRAINT fk_invoices_medical_histories
        FOREIGN KEY (medical_history_id) REFERENCES medical_histories (id)
);

CREATE TABLE teatments (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    type VARCHAR NOT NULL,
    name VARCHAR NOT NULL
),

CREATE TABLE invoice_items(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    unit_price DECIMAL NOT NULL,
    quantity INT NOT NULL,
    total_price DECIMAL NOT NULL,
    invoice_id INT NOT NULL,
    treatment_id INT NOT NULL,
    CONSTRAINT fk_invoice_items_invoices
        FOREIGN KEY (invoice_id) REFERENCES invoices (id),
    CONSTRAINT fk_invoice_items_treatments
        FOREIGN KEY (treatment_id) REFERENCES treatments (id)
);