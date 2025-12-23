# Write your MySQL query statement below
# description이 boring이 아니고 ID가 홀수인 거 rating 으로 내림차순 

SELECT * 
FROM Cinema
WHERE id % 2 = 1 
AND description <> 'boring'
ORDER BY rating DESC;