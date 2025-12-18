# Write your MySQL query statement below
# SELECT 쓰지 말고 DELETE 써야 함
# 중복되는 이메일 삭제하고 id 가 가장 작은 유일한 이메일 남기기

DELETE p1
FROM Person p1
INNER JOIN Person p2
ON p1.email = p2.email
WHERE p1.id > p2.id