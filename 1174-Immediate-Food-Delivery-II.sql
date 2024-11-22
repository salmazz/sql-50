# Write your MySQL query statement below
SELECT 
    ROUND(100.0 * SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) / COUNT(*), 2) AS immediate_percentage
FROM (
    SELECT 
        customer_id, 
        MIN(order_date) AS first_order_date
    FROM 
        Delivery
    GROUP BY 
        customer_id
) AS FirstOrders
JOIN Delivery AS d
ON FirstOrders.customer_id = d.customer_id AND FirstOrders.first_order_date = d.order_date;