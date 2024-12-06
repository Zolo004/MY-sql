SELECT 
    u.user_id,
    u.name AS user_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_price) AS total_spent
FROM 
    Users u
JOIN 
    Orders o ON u.user_id = o.user_id
GROUP BY 
    u.user_id;
