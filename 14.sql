SELECT 
    u.user_id,                 
    u.name AS user_name,      
    o.order_id,               
    o.order_date               
FROM 
    Users u
JOIN 
    Orders o ON u.user_id = o.user_id 
WHERE 
    o.order_date = (           
        SELECT MAX(order_date) 
        FROM Orders 
        WHERE user_id = u.user_id
    );
