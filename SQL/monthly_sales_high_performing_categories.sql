-- Create seasonal_data by joining necessary tables -----------
-- **"Monthly Sales Breakdown for High-Performing Product Categories (Total Sales > 50,000)"** 
WITH seasonal_data AS (
    SELECT
        oi.order_id,
        oi.product_id,
        oi.price,
        p.product_category_name,
        c.product_category_name_english,
        o.order_purchase_timestamp::TIMESTAMP AS order_purchase_timestamp
    FROM olist_order_items_dataset oi
    JOIN olist_products_dataset p ON oi.product_id = p.product_id
    LEFT JOIN product_category_name_translation c
        ON p.product_category_name = c.product_category_name
    JOIN olist_orders_dataset o ON oi.order_id = o.order_id
),
monthly_sales AS (
    SELECT
        product_category_name_english,
        EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
        EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
        SUM(price) AS total_sales
    FROM seasonal_data
    GROUP BY product_category_name_english, year, month
)
-- שליפת קבוצת נתונים מצומצמת יותר לניתוח בפייתון
SELECT * FROM monthly_sales
WHERE product_category_name_english IN (
    SELECT product_category_name_english 
    FROM (
        SELECT 
            product_category_name_english,
            SUM(total_sales) AS category_total
        FROM monthly_sales
        GROUP BY product_category_name_english
    ) AS category_totals
    WHERE category_total > 50000
)
ORDER BY product_category_name_english, year, month;