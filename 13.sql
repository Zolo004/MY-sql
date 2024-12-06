INSERT INTO category_quantity (category, total_quantity)
SELECT 
    p.category,                           
    SUM(od.quantity) AS total_quantity   
FROM 
    Order_Details od
JOIN 
    Products p ON od.product_id = p.product_id  
GROUP BY 
    p.category;                         
