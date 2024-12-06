SELECT 
    p.category AS category_name,
    SUM(od.quantity) AS total_quantity_sold
FROM 
    Products p
JOIN 
    Order_Details od ON p.product_id = od.product_id
GROUP BY 
    p.category
ORDER BY 
    total_quantity_sold DESC
LIMIT 1;
