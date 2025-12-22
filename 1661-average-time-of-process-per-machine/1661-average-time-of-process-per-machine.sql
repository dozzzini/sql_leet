# Write your MySQL query statement below
# 각 기계가 한 프로세스를 완성하는데 걸리는 평균 시간 
# 소수점 세자리까지만 표시(round 사용)

SELECT a1.machine_id, round(avg(a2.timestamp - a1.timestamp),3) as processing_time
FROM Activity a1
JOIN Activity a2
ON a1.machine_id  = a2.machine_id 
AND a1.process_id = a2.process_id
WHERE a1.activity_type = 'start'
AND a2.activity_type = 'end'
GROUP BY machine_id 