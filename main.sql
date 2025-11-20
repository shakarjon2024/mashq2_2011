# 1 - misol
SELECT SUM(final_amount) AS total_delivered_amount
FROM orders
WHERE status = 'delivered'
  AND created_at >= '2024-09-01'
  AND created_at < '2024-10-01';


# 2 - misol
SELECT payment_type,
       COUNT(*) AS order_count,
       AVG(final_amount) AS avg_final_amount
FROM orders
GROUP BY payment_type;


# 3 - misol
SELECT *
FROM orders
WHERE final_amount > 5000000
  AND payment_status = 'paid'
ORDER BY created_at;


# 4 - misol
SELECT COUNT(*) AS non_cancelled_tashkent_orders
FROM orders
WHERE city = 'Toshkent'
  AND status <> 'cancelled';


# 5 - misol
SELECT order_number, amount AS total_amount, discount
FROM orders
ORDER BY discount DESC
LIMIT 10;


# 6 - misol
SELECT id, status
FROM orders
WHERE created_at > '2024-10-01'
  AND status IN ('pending', 'confirmed');

























