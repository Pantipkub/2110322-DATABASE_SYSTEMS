SELECT name AS product_name, unit_price
FROM product
WHERE category_name IN ('food', 'drink') AND unit_price > 2000
ORDER BY unit_price DESC;