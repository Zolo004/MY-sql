SELECT 
    o.order_id,
    p.name AS product_name,
    p.price,
    od.quantity,
    (p.price * od.quantity) AS total_price_per_product,
    o.total_price AS total_order_price
FROM 
    Orders o
JOIN 
    Order_Details od ON o.order_id = od.order_id
JOIN 
    Products p ON od.product_id = p.product_id;
