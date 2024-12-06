CREATE VIEW order_summary AS
SELECT 
    o.order_id,                              
    o.order_date,                             
    u.name AS user_name,                   
    p.name AS product_name,                  
    od.quantity,                             
    p.price,                                 
    (od.quantity * p.price) AS total_price  
FROM 
    Orders o
JOIN 
    Users u ON o.user_id = u.user_id       
JOIN 
    Order_Details od ON o.order_id = od.order_id  
JOIN 
    Products p ON od.product_id = p.product_id;
