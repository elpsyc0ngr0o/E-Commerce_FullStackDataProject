CREATE TABLE bigdataproject.products_by_category (
    category_id int,
    category_name text,
    description text,
    products list<frozen<product_type>>,
    PRIMARY KEY(category_id)
);

CREATE TABLE bigdataproject.users_orders (
    user_id int PRIMARY KEY,
    username text,
    email text,
    first_name text,
    last_name text,
    registration_date timestamp,
    country text,
    age int,
    orders list<frozen<order_type>>
);

CREATE TABLE bigdataproject.products_by_orders (
    order_id int,
    user_id int,
    order_date timestamp,
    status text,
    shipping_address text,
    total_amount decimal,
    products list<frozen<order_item_type>>,
    PRIMARY KEY (order_id)
);