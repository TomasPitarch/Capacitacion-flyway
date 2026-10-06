CREATE TABLE clientes (
  id     INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  email  VARCHAR(150)
);

CREATE TABLE pedidos (
  id         INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id INT NOT NULL,
  fecha      DATE NOT NULL,
  total      DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes (nombre, email) VALUES
  ('Lucía Pérez',  'lucia@mail.com'),
  ('Martín Gómez', 'martin@mail.com');

INSERT INTO pedidos (cliente_id, fecha, total) VALUES
  (1, '2026-10-01', 1500.00),
  (2, '2026-10-03',  820.50);
