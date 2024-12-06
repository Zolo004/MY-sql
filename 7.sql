SELECT s.supplier_id, s.name, COUNT(p.product_id) AS product_count
FROM suppliers s
JOIN products p ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id;
