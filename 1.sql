CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,   
    name VARCHAR(100) NOT NULL,                   
    price DECIMAL(10, 2) NOT NULL,                
    category VARCHAR(50) NOT NULL,                
    stock_quantity INT NOT NULL                  
);
