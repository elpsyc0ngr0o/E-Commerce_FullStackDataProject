CREATE KEYSPACE IF NOT EXISTS bigdataproject 
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE bigdataproject;

CREATE TYPE IF NOT EXISTS category_type (
    category_id int,
    category_name text,
    description text
);

CREATE TYPE IF NOT EXISTS product_type (
    product_id int,
    product_name text,
    price decimal,
    stock_quantity int,
    description text,
    category frozen<category_type>
);

CREATE TYPE IF NOT EXISTS order_item_type (
    order_item_id int,
    quantity int,
    unit_price decimal,
    line_total decimal,
    created_at timestamp,
    product frozen<product_type>
);

CREATE TYPE IF NOT EXISTS order_type (
    order_id int,
    order_date timestamp,
    status text,
    shipping_address text,
    total_amount decimal,
    order_items list<frozen<order_item_type>>
);

