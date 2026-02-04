INSERT INTO bigdataproject.products_by_orders JSON '

{
  "order_id": 1,
  "user_id": 1,
  "order_date": "2025-09-11T16:18:01.310014",
  "status": "completed",
  "shipping_address": "123 Main St, New York, NY, USA",
  "total_amount": 1299.99,
  "products": [
    {
      "order_item_id": 1,
      "quantity": 1,
      "unit_price": 1299.99,
      "line_total": 1299.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 2,
        "product_name": "MacBook Pro M2",
        "price": 1299.99,
        "stock_quantity": 25,
        "description": "Apple MacBook Pro with M2 chip"
      }
    }
  ]
}';

INSERT INTO bigdataproject.products_by_orders JSON '
{
  "order_id": 2,
  "user_id": 2,
  "order_date": "2025-09-11T16:18:01.310014",
  "status": "pending",
  "shipping_address": "456 Oak Ave, Toronto, ON, Canada",
  "total_amount": 109.97,
  "products": [
    {
      "order_item_id": 2,
      "quantity": 2,
      "unit_price": 29.99,
      "line_total": 59.98,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 6,
        "product_name": "T-shirt Cotton Blue",
        "price": 29.99,
        "stock_quantity": 200,
        "description": "Comfortable blue cotton t-shirt"
      }
    },
    {
      "order_item_id": 3,
      "quantity": 1,
      "unit_price": 49.99,
      "line_total": 49.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 11,
        "product_name": "Python Programming Book",
        "price": 49.99,
        "stock_quantity": 60,
        "description": "Learn Python programming from scratch"
      }
    }
  ]
}';

INSERT INTO bigdataproject.products_by_orders JSON '
{
  "order_id": 3,
  "user_id": 3,
  "order_date": "2025-09-11T16:18:01.310014",
  "status": "shipped",
  "shipping_address": "789 High St, London, UK",
  "total_amount": 1059.98,
  "products": [
    {
      "order_item_id": 4,
      "quantity": 1,
      "unit_price": 899.99,
      "line_total": 899.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 1,
        "product_name": "Laptop HP Pavilion",
        "price": 899.99,
        "stock_quantity": 50,
        "description": "High performance laptop for professionals"
      }
    },
    {
      "order_item_id": 5,
      "quantity": 1,
      "unit_price": 159.99,
      "line_total": 159.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 5,
        "product_name": "Wireless Headphones",
        "price": 159.99,
        "stock_quantity": 80,
        "description": "Noise-canceling wireless headphones"
      }
    }
  ]
}';

INSERT INTO bigdataproject.products_by_orders JSON '
{
  "order_id": 4,
  "user_id": 1,
  "order_date": "2025-09-11T16:18:01.310014",
  "status": "completed",
  "shipping_address": "123 Main St, New York, NY, USA",
  "total_amount": 489.98,
  "products": [
    {
      "order_item_id": 6,
      "quantity": 1,
      "unit_price": 449.99,
      "line_total": 449.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 4,
        "product_name": "iPad Air",
        "price": 449.99,
        "stock_quantity": 40,
        "description": "Apple iPad Air with 64GB storage"
      }
    },
    {
      "order_item_id": 7,
      "quantity": 1,
      "unit_price": 39.99,
      "line_total": 39.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 19,
        "product_name": "Yoga Mat",
        "price": 39.99,
        "stock_quantity": 50,
        "description": "Non-slip yoga mat"
      }
    }
  ]
}';

INSERT INTO bigdataproject.products_by_orders JSON '
{
  "order_id": 5,
  "user_id": 2,
  "order_date": "2025-09-11T16:18:01.310014",
  "status": "processing",
  "shipping_address": "456 Oak Ave, Toronto, ON, Canada",
  "total_amount": 169.98,
  "products": [
    {
      "order_item_id": 8,
      "quantity": 1,
      "unit_price": 79.99,
      "line_total": 79.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 7,
        "product_name": "Jeans Denim Classic",
        "price": 79.99,
        "stock_quantity": 150,
        "description": "Classic blue denim jeans"
      }
    },
    {
      "order_item_id": 9,
      "quantity": 1,
      "unit_price": 89.99,
      "line_total": 89.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 10,
        "product_name": "Sneakers White",
        "price": 89.99,
        "stock_quantity": 75,
        "description": "Classic white sneakers"
      }
    }
  ]
}';

INSERT INTO bigdataproject.products_by_orders JSON '
{
  "order_id": 6,
  "user_id": 4,
  "order_date": "2025-09-11T16:18:01.310014",
  "status": "completed",
  "shipping_address": "321 Rue de la Paix, Paris, France",
  "total_amount": 149.98,
  "products": [
    {
      "order_item_id": 10,
      "quantity": 1,
      "unit_price": 69.99,
      "line_total": 69.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 12,
        "product_name": "Data Science Handbook",
        "price": 69.99,
        "stock_quantity": 40,
        "description": "Complete guide to data science"
      }
    },
    {
      "order_item_id": 11,
      "quantity": 1,
      "unit_price": 79.99,
      "line_total": 79.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 13,
        "product_name": "Machine Learning Guide",
        "price": 79.99,
        "stock_quantity": 35,
        "description": "Comprehensive machine learning guide"
      }
    }
  ]
}';

INSERT INTO bigdataproject.products_by_orders JSON '
{
  "order_id": 7,
  "user_id": 5,
  "order_date": "2025-09-11T16:18:01.310014",
  "status": "shipped",
  "shipping_address": "654 Hauptstraße, Berlin, Germany",
  "total_amount": 219.98,
  "products": [
    {
      "order_item_id": 13,
      "quantity": 1,
      "unit_price": 89.99,
      "line_total": 89.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 15,
        "product_name": "Garden Tools Set",
        "price": 89.99,
        "stock_quantity": 30,
        "description": "Complete set of garden tools"
      }
    },
    {
      "order_item_id": 12,
      "quantity": 1,
      "unit_price": 129.99,
      "line_total": 129.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 16,
        "product_name": "Coffee Maker",
        "price": 129.99,
        "stock_quantity": 25,
        "description": "Automatic drip coffee maker"
      }
    }
  ]
}';

INSERT INTO bigdataproject.products_by_orders JSON '
{
  "order_id": 8,
  "user_id": 6,
  "order_date": "2025-09-11T16:18:01.310014",
  "status": "pending",
  "shipping_address": "987 Collins St, Melbourne, Australia",
  "total_amount": 59.99,
  "products": [
    {
      "order_item_id": 14,
      "quantity": 1,
      "unit_price": 59.99,
      "line_total": 59.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 8,
        "product_name": "Dress Summer Floral",
        "price": 59.99,
        "stock_quantity": 80,
        "description": "Beautiful floral summer dress"
      }
    }
  ]
}';

INSERT INTO bigdataproject.products_by_orders JSON '
{
  "order_id": 9,
  "user_id": 7,
  "order_date": "2025-09-11T16:18:01.310014",
  "status": "completed",
  "shipping_address": "147 Gran Via, Madrid, Spain",
  "total_amount": 279.98,
  "products": [
    {
      "order_item_id": 15,
      "quantity": 1,
      "unit_price": 159.99,
      "line_total": 159.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 18,
        "product_name": "Tennis Racket Pro",
        "price": 159.99,
        "stock_quantity": 20,
        "description": "Professional tennis racket"
      }
    },
    {
      "order_item_id": 16,
      "quantity": 1,
      "unit_price": 119.99,
      "line_total": 119.99,
      "created_at": "2025-09-11T16:18:01.310014",
      "product": {
        "product_id": 20,
        "product_name": "Dumbbells Set",
        "price": 119.99,
        "stock_quantity": 15,
        "description": "Adjustable dumbbells set"
      }
    }
  ]
}';

INSERT INTO bigdataproject.products_by_orders JSON '
{
  "order_id": 10,
  "user_id": 3,
  "order_date": "2025-09-11T16:18:01.310014",
  "status": "cancelled",
  "shipping_address": "789 High St, London, UK",
  "total_amount": 0.00,
  "products": null
}';

SELECT * FROM bigdataproject.products_by_orders;
