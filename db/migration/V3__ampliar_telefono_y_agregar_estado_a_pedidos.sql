-- Corrige el tamaño de telefono SIN editar V2 (V2 ya fue aplicada en otras bases)
ALTER TABLE clientes MODIFY COLUMN telefono VARCHAR(30);

-- Nueva columna obligatoria: el DEFAULT completa las filas que ya existen
ALTER TABLE pedidos ADD COLUMN estado VARCHAR(20) NOT NULL DEFAULT 'pendiente';

-- Índice para filtrar pedidos por estado
CREATE INDEX idx_pedidos_estado ON pedidos (estado);
