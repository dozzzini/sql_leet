# Write your MySQL query statement below
# 전날과 비교해서 더 높은 온도를 가지고 있는 date 의 id col 추출

SELECT w1.id
FROM Weather w1
INNER JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1    # DATEDIFF(a, b): a와 b의 일자 차이
WHERE w1.temperature > w2.temperature;
