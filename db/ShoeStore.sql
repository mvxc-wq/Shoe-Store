USE shop3cats;

SELECT table_name, table_rows
FROM information_schema.tables
WHERE table_schema = 'shop3cats'
ORDER BY table_name;

-- этап 4

SELECT 
    u.id, 
    CONCAT_WS(' ', u.first_name, u.name, u.second_name) AS full_name, 
    r.role_name AS `role` 
FROM users u
JOIN `role` r ON r.id = u.role
WHERE u.login = '94d5ous@gmail.com' AND u.password = 'uzWC67'
LIMIT 0, 1000;


-- этап 5
SHOW COLUMNS FROM manufacturers;
ALTER TABLE manufacturers CHANGE COLUMN `﻿п»їid` id INT;

use shop_yy;
SELECT
    p.id,
    p.article,
    pr.product             AS name,              
    p.unit,
    p.price,
    p.current_discount     AS discount,          
    p.quantity_in_stock    AS stock_qty,         
    p.product_description  AS description,       
    p.photo,
    c.categories           AS category,          
    m.manufacturers        AS manufacturer,      
    s.suppliers            AS supplier           
FROM proproduct p
JOIN products      pr ON pr.id = p.product_name   
JOIN categories    c  ON c.id  = p.categories_id  
JOIN manufacturers m  ON m.id = p.manufacturers_id 
JOIN suppliers     s  ON s.id  = p.suppliers_id   
LIMIT 0, 1000;

-- Этап 6
SELECT p.id, p.article, pr.product AS product, p.price,
       p.quantity_in_stock AS stock_qty, s.suppliers AS supplier
FROM proproduct p
JOIN products  pr ON pr.id = p.product_name
JOIN suppliers s  ON s.id  = p.suppliers_id
WHERE pr.product LIKE CONCAT('%', 'Туфли', '%') AND p.suppliers_id = 1
ORDER BY p.quantity_in_stock DESC;


SELECT p.id, p.article, pr.product AS name, p.price,
       p.quantity_in_stock AS stock_qty, s.suppliers AS supplier
FROM proproduct p
JOIN products  pr ON pr.id = p.product_name
JOIN suppliers s  ON s.id  = p.suppliers_id
ORDER BY p.quantity_in_stock DESC;


SELECT p.id, p.article, pr.product AS name, p.price,
       p.quantity_in_stock AS stock_qty, s.suppliers AS supplier
FROM proproduct p
JOIN products  pr ON pr.id = p.product_name
JOIN suppliers s  ON s.id  = p.suppliers_id
WHERE p.suppliers_id = 2;


SELECT p.id, p.article, pr.product AS name, p.price,
       p.quantity_in_stock AS stock_qty, s.suppliers AS supplier
FROM proproduct p
JOIN products  pr ON pr.id = p.product_name
JOIN suppliers s  ON s.id  = p.suppliers_id
WHERE pr.product LIKE CONCAT('%', 'Туфли', '%');

-- Этап 7

SELECT id, product FROM products;
SELECT id, categories FROM categories;
SELECT id, manufacturers FROM manufacturers;
SELECT id, suppliers FROM suppliers;

-- добавление товара (новый id = 31)
INSERT INTO proproduct
    (article, product_name, unit, price, suppliers_id, manufacturers_id,
     categories_id, current_discount, quantity_in_stock, product_description, photo)
VALUES ('Z999X9', 2, 'шт.', 3500, 1, 1, 1, 5, 10,
        'Туфли kari женские тестовые, размер 38, цвет: белый', '');

SELECT * FROM proproduct WHERE id = 31;


UPDATE proproduct
SET article = 'Z999X9', product_name= 2, unit = 'шт.', price = 3900,
    suppliers_id = 1, manufacturers_id = 1, categories_id = 1,
    current_discount = 10, quantity_in_stock = 12,
    product_description = 'Туфли kari женские тестовые, размер 38, цвет: белый',
    photo = ''
WHERE id = 31;

SELECT * FROM proproduct WHERE id = 31;

-- этап 8

SELECT COUNT(*) AS used_in_orders FROM prodorders WHERE proproduct_id = 1;
DELETE FROM proproduct WHERE id = 1;
SELECT COUNT(*) AS used_in_orders FROM prodorders WHERE proproduct_id = 31;
DELETE FROM proproduct WHERE id = 31;
