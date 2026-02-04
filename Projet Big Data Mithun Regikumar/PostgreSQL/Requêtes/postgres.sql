CREATE DATABASE ecommerce_db
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Users table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    country VARCHAR(50),
    age INTEGER
);

-- Categories table
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    description TEXT
);

-- Products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(200) NOT NULL,
    category_id INTEGER REFERENCES categories(category_id) ON DELETE SET NULL,
    price DECIMAL(10,2) CHECK (price >= 0),
    stock_quantity INTEGER DEFAULT 0 CHECK (stock_quantity >= 0),
    description TEXT
);

-- Orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2) DEFAULT 0 CHECK (total_amount >= 0),
    status VARCHAR(20) DEFAULT 'pending' CHECK (status IN ('pending', 'processing', 'shipped', 'completed', 'cancelled')),
    shipping_address TEXT
);

-- Order_items table
CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INTEGER REFERENCES orders(order_id) ON DELETE CASCADE,
    product_id INTEGER REFERENCES products(product_id) ON DELETE CASCADE,
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10,2) NOT NULL CHECK (unit_price >= 0),
    line_total DECIMAL(10,2) GENERATED ALWAYS AS (quantity * unit_price) STORED,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(order_id, product_id) -- One product for each order
);

-- Inserting data (order is important for FKs)

-- 1. Categories
INSERT INTO categories (category_name, description) VALUES
('Electronics', 'Electronic devices and gadgets'),
('Clothing', 'Fashion and apparel'),
('Books', 'Books and literature'),
('Home & Garden', 'Home improvement and garden supplies'),
('Sports', 'Sports equipment and accessories'),

-- 2. Users
INSERT INTO users (username, email, first_name, last_name, country, age) VALUES
('john_doe', 'john@email.com', 'John', 'Doe', 'USA', 28),
('jane_smith', 'jane@email.com', 'Jane', 'Smith', 'Canada', 32),
('bob_wilson', 'bob@email.com', 'Bob', 'Wilson', 'UK', 45),
('alice_brown', 'alice@email.com', 'Alice', 'Brown', 'France', 26),
('charlie_davis', 'charlie@email.com', 'Charlie', 'Davis', 'Germany', 35),
('emma_johnson', 'emma@email.com', 'Emma', 'Johnson', 'Australia', 29),
('david_miller', 'david@email.com', 'David', 'Miller', 'Spain', 38);

-- 3. Products (linked with Categories)
INSERT INTO products (product_name, category_id, price, stock_quantity, description) VALUES
-- Electronics (category_id = 1)
('Laptop HP Pavilion', 1, 899.99, 50, 'High performance laptop for professionals'),
('MacBook Pro M2', 1, 1299.99, 25, 'Apple MacBook Pro with M2 chip'),
('Smartphone Samsung Galaxy', 1, 599.99, 100, 'Latest Samsung Galaxy smartphone'),
('iPad Air', 1, 449.99, 40, 'Apple iPad Air with 64GB storage'),
('Wireless Headphones', 1, 159.99, 80, 'Noise-canceling wireless headphones'),

-- Clothing (category_id = 2)
('T-shirt Cotton Blue', 2, 29.99, 200, 'Comfortable blue cotton t-shirt'),
('Jeans Denim Classic', 2, 79.99, 150, 'Classic blue denim jeans'),
('Dress Summer Floral', 2, 59.99, 80, 'Beautiful floral summer dress'),
('Hoodie Gray', 2, 49.99, 120, 'Comfortable gray hoodie'),
('Sneakers White', 2, 89.99, 75, 'Classic white sneakers'),

-- Books (category_id = 3)
('Python Programming Book', 3, 49.99, 60, 'Learn Python programming from scratch'),
('Data Science Handbook', 3, 69.99, 40, 'Complete guide to data science'),
('Machine Learning Guide', 3, 79.99, 35, 'Comprehensive machine learning guide'),
('Web Development Book', 3, 54.99, 45, 'Modern web development techniques'),

-- Home & Garden (category_id = 4)
('Garden Tools Set', 4, 89.99, 30, 'Complete set of garden tools'),
('Coffee Maker', 4, 129.99, 25, 'Automatic drip coffee maker'),
('Vacuum Cleaner', 4, 199.99, 20, 'Bagless vacuum cleaner'),

-- Sports (category_id = 5)
('Tennis Racket Pro', 5, 159.99, 20, 'Professional tennis racket'),
('Yoga Mat', 5, 39.99, 50, 'Non-slip yoga mat'),
('Dumbbells Set', 5, 119.99, 15, 'Adjustable dumbbells set');

-- 4. Orders (linked with Users)
INSERT INTO orders (user_id, status, shipping_address) VALUES
(1, 'completed', '123 Main St, New York, NY, USA'),
(2, 'pending', '456 Oak Ave, Toronto, ON, Canada'),
(3, 'shipped', '789 High St, London, UK'),
(1, 'completed', '123 Main St, New York, NY, USA'),
(2, 'processing', '456 Oak Ave, Toronto, ON, Canada'),
(4, 'completed', '321 Rue de la Paix, Paris, France'),
(5, 'shipped', '654 Hauptstraße, Berlin, Germany'),
(6, 'pending', '987 Collins St, Melbourne, Australia'),
(7, 'completed', '147 Gran Via, Madrid, Spain'),
(3, 'cancelled', '789 High St, London, UK');

-- 5. Order_items (linked with rders AND Products)
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
-- Order 1 (John): MacBook Pro
(1, 2, 1, 1299.99),
-- Order 2 (Jane): T-shirt x2 + Python book
(2, 6, 2, 29.99),
(2, 11, 1, 49.99),
-- Order 3 (Bob): Laptop + Headphones
(3, 1, 1, 899.99),
(3, 5, 1, 159.99),
-- Order 4 (John): iPad + Yoga Mat
(4, 4, 1, 449.99),
(4, 19, 1, 39.99),
-- Order 5 (Jane): Jeans + Sneakers
(5, 7, 1, 79.99),
(5, 10, 1, 89.99),
-- Order 6 (Alice): Data Science books x2
(6, 12, 1, 69.99),
(6, 13, 1, 79.99),
-- Order 7 (Charlie): Coffee Maker + Garden Tools
(7, 16, 1, 129.99),
(7, 15, 1, 89.99),
-- Order 8 (Emma): Summer Dress + Beauty items
(8, 8, 1, 59.99),
-- Order 9 (David): Tennis Racket + Dumbbells
(9, 18, 1, 159.99),
(9, 20, 1, 119.99);
