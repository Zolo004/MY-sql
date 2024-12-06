SELECT * 
FROM Products
WHERE stock_quantity = 0 OR expiration_date < CURDATE();
