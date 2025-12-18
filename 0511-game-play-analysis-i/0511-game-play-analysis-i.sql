# Write your MySQL query statement below
# 각 인간의 첫 로그인 날짜

SELECT player_id, min(event_date) AS first_login
FROM Activity
GROUP BY player_id
