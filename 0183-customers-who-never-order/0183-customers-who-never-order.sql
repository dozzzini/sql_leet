# Write your MySQL query statement below
# 아무 것도 주문 안한 사람 

SELECT c.name as Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL