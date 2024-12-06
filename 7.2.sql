SELECT 
    p.category AS product_category,
    s.name AS supplier_name
FROM 
    Products p
JOIN 
    Suppliers s ON p.supplier_id = s.supplier_id
GROUP BY 
    p.category, s.name
ORDER BY 
    p.category ASC, s.name ASC;

