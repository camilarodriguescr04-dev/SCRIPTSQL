-- 1. Conte todos os hamburgueres da table products
SELECT count(*) AS total_hamburgueres 
FROM products 
WHERE name LIKE '%Hamburguer%' OR name LIKE '%Burguer%';

-- 2. Liste todos os produtos da categoria 3
SELECT * 
FROM products 
WHERE category_id = 3;

-- 3. Liste todos os produtos do usuario 25
SELECT * 
FROM products 
WHERE user_id = 25;

-- 4. Crie uma restaurant_table
CREATE TABLE IF NOT EXISTS restaurant_table (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    table_number INTEGER NOT NULL,
    capacity INTEGER DEFAULT 4,
    status VARCHAR(20) DEFAULT 'disponivel'
);

-- 5. Crie uma Venda (cria a tabela sales se não existir e cadastra 1 venda)
CREATE TABLE IF NOT EXISTS sales (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    total DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO sales (user_id, total) 
VALUES (25, 75.50);

-- 6. Crie um novo usuario
INSERT INTO users (name, email) 
VALUES ('Lucas Fernandes', 'lucas@email.com');

-- 7. Cadastre a categoria bebida e comida
INSERT INTO categories (name) 
VALUES ('Bebida');

INSERT INTO categories (name) 
VALUES ('Comida');

-- 8. Cadastre 2 bebidas e 3 comidas vinculadas às categorias cadastradas
-- 2 Bebidas:
INSERT INTO products (name, category_id, user_id) 
VALUES ('Coca-Cola 350ml', (SELECT id FROM categories WHERE name = 'Bebida' LIMIT 1), 25);

INSERT INTO products (name, category_id, user_id) 
VALUES ('Suco de Laranja', (SELECT id FROM categories WHERE name = 'Bebida' LIMIT 1), 25);

-- 3 Comidas:
INSERT INTO products (name, category_id, user_id) 
VALUES ('Hamburguer Classico', (SELECT id FROM categories WHERE name = 'Comida' LIMIT 1), 25);

INSERT INTO products (name, category_id, user_id) 
VALUES ('Pizza Margherita', (SELECT id FROM categories WHERE name = 'Comida' LIMIT 1), 25);

INSERT INTO products (name, category_id, user_id) 
VALUES ('Batata Frita', (SELECT id FROM categories WHERE name = 'Comida' LIMIT 1), 25);
-- 6. Crie um novo usuario
INSERT INTO users (name, email) 
VALUES ('Lucas Fernandes', 'lucas@email.com');

-- 7. Cadastre a categoria bebida e comida
INSERT INTO categories (name) 
VALUES ('Bebida');

INSERT INTO categories (name) 
VALUES ('Comida');

-- 8. Cadastre 2 bebidas e 3 comidas da table products vinculadas as respectivas categorias
-- 2 Bebidas:
INSERT INTO products (name, category_id, user_id) 
VALUES ('Coca-Cola 350ml', (SELECT id FROM categories WHERE name = 'Bebida' LIMIT 1), 25);

INSERT INTO products (name, category_id, user_id) 
VALUES ('Suco de Laranja', (SELECT id FROM categories WHERE name = 'Bebida' LIMIT 1), 25);

-- 3 Comidas:
INSERT INTO products (name, category_id, user_id) 
VALUES ('Hamburguer Classico', (SELECT id FROM categories WHERE name = 'Comida' LIMIT 1), 25);

INSERT INTO products (name, category_id, user_id) 
VALUES ('Pizza Margherita', (SELECT id FROM categories WHERE name = 'Comida' LIMIT 1), 25);

INSERT INTO products (name, category_id, user_id) 
VALUES ('Batata Frita', (SELECT id FROM categories WHERE name = 'Comida' LIMIT 1), 25);