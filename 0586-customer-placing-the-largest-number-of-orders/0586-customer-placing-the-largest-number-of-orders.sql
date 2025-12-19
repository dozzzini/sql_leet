# Write your MySQL query statement below
SELECT customer_number
FROM Orders
GROUP BY customer_number    # 1,2,3
ORDER BY COUNT(customer_number) DESC    # 3,1,2
LIMIT 1     # 가장 첫 번째 행