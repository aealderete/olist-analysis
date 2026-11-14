--- Order count and % of total for each status

SELECT order_status, COUNT(order_status) as amount, ROUND((COUNT(*) * 100.0 / SUM(COUNT(*)) OVER ()), 2) as percent_amount
FROM orders
GROUP BY order_status
ORDER BY amount DESC