-- Empresas
CREATE TABLE companies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    licencia VARCHAR(50),
    logo_url VARCHAR(255)
);

-- Usuarios (Un solo login para Admin, Cobrador y Cliente)
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    company_id INT,
    nombre VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(255),
    role ENUM('admin', 'cobrador', 'cliente'),
    FOREIGN KEY (company_id) REFERENCES companies(id)
);

-- Préstamos
CREATE TABLE loans (
    id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT,
    monto_total DECIMAL(10,2),
    tasa_interes DECIMAL(5,2),
    estado ENUM('activo', 'liquidado'),
    FOREIGN KEY (client_id) REFERENCES users(id)
);

-- Pagos (Validación de pagos)
CREATE TABLE payments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    loan_id INT,
    monto DECIMAL(10,2),
    status ENUM('declarado', 'validado'),
    collector_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (loan_id) REFERENCES loans(id)
);

