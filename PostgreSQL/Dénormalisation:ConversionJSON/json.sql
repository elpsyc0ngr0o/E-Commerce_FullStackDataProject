SELECT json_agg(user_data) 
FROM (
  SELECT
    u.user_id,
    u.username,
    u.email,
    u.first_name,
    u.last_name,
    u.registration_date,
    u.country,
    u.age,
    -- Imbriquer les commandes de l'utilisateur
    (
      SELECT json_agg(order_data)
      FROM (
        SELECT 
          o.order_id,
          o.order_date,
          o.status,
          o.shipping_address,
          o.total_amount,
          -- Imbriquer les articles de chaque commande
          (
            SELECT json_agg(order_item_data)
            FROM (
              SELECT 
                oi.order_item_id,
                oi.quantity,
                oi.unit_price,
                oi.line_total,
                oi.created_at,
                -- Inclure les données produits et catégories liées à chaque article
                json_build_object(
                  'product_id', p.product_id,
                  'product_name', p.product_name,
                  'price', p.price,
                  'stock_quantity', p.stock_quantity,
                  'description', p.description,
                  'category', json_build_object(
                    'category_id', c.category_id,
                    'category_name', c.category_name,
                    'description', c.description
                  )
                ) AS product
              FROM order_items oi
              JOIN products p ON oi.product_id = p.product_id
              LEFT JOIN categories c ON p.category_id = c.category_id
              WHERE oi.order_id = o.order_id
            ) AS order_item_data
          ) AS order_items
        FROM orders o
        WHERE o.user_id = u.user_id
      ) AS order_data
    ) AS orders
  FROM users u
) AS user_data;
