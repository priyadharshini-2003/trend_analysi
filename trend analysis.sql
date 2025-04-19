SELECT * FROM sales_db.sales__data;
SELECT * FROM sales_db.sales__data WHERE  State = 'Maryland';

DESCRIBE sales_db.sales__data;

ALTER TABLE sales_db.sales__data ADD COLUMN order_date_converted DATE;
UPDATE sales_db.sales__data 
SET order_date_converted = STR_TO_DATE(`Order Date`, '%d-%m-%Y');
SET SQL_SAFE_UPDATES = 0;
UPDATE sales_db.sales__data 
SET order_date_converted = STR_TO_DATE(`Order Date`, '%d-%m-%Y');
  
  
SELECT 
    EXTRACT(YEAR FROM order_date_converted) AS order_year,
    EXTRACT(MONTH FROM order_date_converted) AS order_month,
    SUM(profit) AS total_revenue,
    COUNT(DISTINCT `Order ID`) AS order_volume
FROM 
    sales_db.sales__data
WHERE 
    order_date_converted BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month
LIMIT 0, 1000;


