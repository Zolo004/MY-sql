SELECT u.name
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
JOIN Order_Details od ON o.order_id = od.order_id
GROUP BY u.user_id
ORDER BY COUNT(od.product_id) DESC
LIMIT 1;
