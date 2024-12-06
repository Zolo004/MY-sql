ALTER TABLE Products
ADD CONSTRAINT price_check CHECK (price >= 10000);
