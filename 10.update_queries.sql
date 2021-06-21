-- Change a category of a product --
UPDATE product
SET product_category = (
        SELECT category.id
        FROM category
        WHERE category.name = 'Gaming'
    )
WHERE product.id = 1016;

-- Apply discount for a given brand
UPDATE product SET product_price = product_price * 0.70 WHERE id IN (SELECT product.id FROM product JOIN brand ON product.product_brand = brand.id WHERE brand_name = 'Apple')


-- Update Address information of a employee
    -- insert address data
INSERT INTO address (
    id,
    door_number,
    building_number,
    street,
    city,
    state
  )
VALUES (
    99,
    45,
    14,
    '3053  Tea Berry Lane',
    'Namekagon',
    'Wisconsin'
  );

    -- update employee address
UPDATE employee SET employee_address = 99;