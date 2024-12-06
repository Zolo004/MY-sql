SELECT 
    u.name AS user_name,
    o.order_date AS order_date,
    SUM(od.quantity) AS total_items_ordered
FROM 
    Users u
JOIN 
    Orders o ON u.user_id = o.user_id
JOIN 
    Order_Details od ON o.order_id = od.order_id
GROUP BY 
    u.user_id, o.order_date
ORDER BY 
    o.order_date ASC;
