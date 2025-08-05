CREATE DATABASE ebacexercicio;


CREATE SCHEMA store;

CREATE TABLE store.stock (
    product_id SERIAL PRIMARY KEY,
    name_product VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    description TEXT,
    quantity INTEGER NOT NULL
);

CREATE TABLE store.costumer (
    costumer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(9) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    adress TEXT NOT NULL,
    status_client VARCHAR(20) NOT NULL CHECK (status_client IN ('active', 'inactive'))
);

CREATE TABLE store.product(
    product_id SERIAL PRIMARY KEY,
    name_product VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    description TEXT,
    stock_id INTEGER NOT NULL
);

-- iNSERIR DADOS NA TABELA --> 

    -- Inserir dados na tabela de estoque.
INSERT INTO stock (stock_id, name_product, price, description, quantity) VALUES
    (1, 'Notebook', 2340.00, 'Notebook Lenovo', 10),
    (2, 'Ps5', 3850.00, 'Console Playstation 5', 7),
    (3, 'Smartphone', 1500.00, 'Smartphone Samsung Galaxy', 15),
    (4, 'Monitor', 1200.00, 'Monitor LG 27"', 5);

    -- Inserir dados na tabela de clientes.
INSERT INTO costumer (costumer_id, name, email, phone, cpf, adress, status_client) VALUES
    (1, 'Jacy Oliveira', 'jacycoxadoido@gmail.com', '99999999', '12345678901', 'Rua x, 123', 'active'),
    (2, 'Carlos De Pena', 'carlosdepena@gmail.com', '88888888', '10987654321', 'Avenida y, 456', 'inactive'),
    (3, 'Josué Pesqueira','josue10coxa@gmail.com', '77777777', '11223344556', 'Vila z, 789', 'active'),

    -- Inserir dados na tabela de produtos.
INSERT INTO product (product_id, name_product, price, description, stock_id) VALUES
    (1, 'Notebook', 2340.00, 'Notebook Lenovo', 1),
    (2, 'Ps5', 3850.00, 'Console Playstation 5', 2),
    (3, 'Smartphone', 1500.00, 'Smartphone Samsung Galaxy', 3),
    (4, 'Monitor', 1200.00, 'Monitor LG 27"', 4);
