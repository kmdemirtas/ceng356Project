-- purchase order 1 --
BEGIN;
INSERT INTO purchase_order
    VALUES (1, 1000, 2, 3, 10, 750, '2020-12-30'), (1, 1001, 2, 3, 6, 650, '2020-12-30'), (1, 1011, 2, 3, 5, 200, '2020-12-30');

UPDATE product SET product_stock = product_stock + 10 WHERE id = 1000;
UPDATE product SET product_stock = product_stock + 6 WHERE id = 1001;
UPDATE product SET product_stock = product_stock + 5 WHERE id = 1011; 
COMMIT;

-- purchase order 2 --
BEGIN;
INSERT INTO purchase_order
    VALUES(2, 1008, 2, 2, 5, 780, '2021-01-03'), (2, 1013, 2, 2, 3, 200,'2021-01-03'), (2, 1016, 2, 2, 20, 25,'2021-01-03');

UPDATE product SET product_stock = product_stock + 5 WHERE id = 1008;
UPDATE product SET product_stock = product_stock + 3 WHERE id = 1013;
UPDATE product SET product_stock = product_stock + 20 WHERE id = 1016;
COMMIT;

-- purchase order 3 --
BEGIN;
INSERT INTO purchase_order
    VALUES(3, 1002, 2, 1, 9, 700, '2021-02-10'), (3, 1007, 2, 1, 10,300, '2021-02-10'), (3, 1003, 2, 1, 5, 1200, '2021-02-10');

UPDATE product SET product_stock = product_stock + 9 WHERE id = 1002;
UPDATE product SET product_stock = product_stock + 10 WHERE id = 1007;
UPDATE product SET product_stock = product_stock + 5 WHERE id = 1003;
COMMIT;