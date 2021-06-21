-- insert sell order 1
BEGIN;
INSERT INTO sell_order
    VALUES(1, 1007, 3, 500, 1, 500, '2020-03-01'), (1, 1000, 3, 500, 1, 800, '2020-03-01'), (1, 1013, 3, 500, 1, 230, '2020-03-01');

UPDATE product SET product_stock = product_stock - 1 WHERE id = 1007;
UPDATE product SET product_stock = product_stock - 1 WHERE id = 1000;
UPDATE product SET product_stock = product_stock - 1 WHERE id = 1013;
COMMIT;

-- insert sell order 2
BEGIN;
INSERT INTO sell_order
    VALUES (2, 1003, 4, 501, 2, 1400, '2020-03-05'), (2, 1008, 4, 501, 1, 840, '2020-03-05'), (2, 1002, 4, 501, 1, 780, '2020-03-05');

UPDATE product SET product_stock = product_stock - 2 WHERE id = 1003;
UPDATE product SET product_stock = product_stock - 1 WHERE id = 1008;
UPDATE product SET product_stock = product_stock - 1 WHERE id = 1002;
COMMIT;

-- insert sell order 3
BEGIN;
INSERT INTO sell_order
    VALUES (3, 1000, 3, 502, 4, 800, '2020-03-10'), (3,1001, 3, 502, 3, 650, '2020-03-10'), (3, 1011, 3, 502, 1, 240, '2020-03-10');

UPDATE product SET product_stock = product_stock - 4 WHERE id = 1000;
UPDATE product SET product_stock = product_stock - 3 WHERE id = 1001;
UPDATE product SET product_stock = product_stock - 1 WHERE id = 1011;
COMMIT;