-- get product that has not stock --
SELECT *
FROM product
WHERE product_stock = 0;

-- get information for a product
SELECT product_name,
    product_price,
    product_stock
FROM product
WHERE product_name LIKE '%Iphone%';

-- get all products that belongs to a category
SELECT brand_name as "Brand",
    product_name as "Model",
    product_price as "Price ($)"
FROM product
    JOIN category ON product_category = category.id
    JOIN brand ON product_brand = brand.id
WHERE category.name = 'Office' 

-- get products that has never been bought
SELECT *
FROM product
WHERE product.id NOT IN (
        select product
        from purchase_order
    );

-- order products by their prices
SELECT *
FROM product
ORDER BY product_price DESC;

-- Get stock of a category
SELECT sum(product_stock)
FROM product
    JOIN category ON product_category = category.id
WHERE category.name = 'Smartphone';

-- get number of products for each category
SELECT count(product.ID) as "Number of Products",
    category.NAME as "Category"
FROM product
    JOIN category ON product_category = category.id
GROUP BY category.name
ORDER BY count(product.ID) DESC;

-- get products of a brand
SELECT *
FROM product
    JOIN brand on product.product_brand = brand.id
WHERE brand_name = 'Apple';

-- get total number sold products of a brand
SELECT sum(amount) as "Number sold",
    product_name as "Model"
FROM purchase_order
    JOIN product ON purchase_order.product = product.id
    JOIN brand ON product.product_brand = brand.id
WHERE brand.brand_name = 'Samsung'
GROUP BY purchase_order.product,
    product_name;

-- get categories ordered by number sold --
SELECT category.name as "Category",
    sum(amount) as "Total Sold"
FROM sell_order
    JOIN product ON product = product.id
    JOIN category ON category.id = product_category
GROUP BY category.name
ORDER BY sum(amount) DESC;

--calculate total amount for all purchase orders, order by order date --
SELECT sum(amount * price),
    purchase_id
FROM purchase_order
GROUP BY purchase_id,
    purchase_date
ORDER BY purchase_date ASC;

-- calculate total amount for a sell order --
SELECT sum(amount * price),
    sell_id
FROM sell_order
WHERE sell_id = 1
GROUP BY sell_id;

-- Total best buyer among the customers --
SELECT customer.first_name,
    customer.last_name,
    sum(amount * price)
FROM sell_order
    JOIN customer ON customer.id = sell_order.customer
GROUP BY sell_id,
    customer.first_name,
    customer.last_name
ORDER BY sum(amount * price) DESC
LIMIT 1;

-- Get information of a customer
SELECT customer.first_name,
    customer.last_name,
    customer.phone,
    address.*
FROM customer
    JOIN address ON customer.customer_address = address.id
WHERE customer.first_name LIKE '%Jo%';

-- Get price for each purchase order
SELECT SUM(amount * price) FROM purchase_order GROUP BY purchase_id

-- Get price for each sell order
SELECT sum(amount * price) FROM sell_order GROUP BY sell_id