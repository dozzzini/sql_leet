# Write your MySQL query statement below
SELECT s.student_id, s.student_name, sub.subject_name, count(ex.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT OUTER JOIN Examinations ex
ON sub.subject_name = ex.subject_name AND s.student_id = ex.student_id
GROUP BY s.student_id, sub.subject_name, s.student_name
ORDER BY s.student_id, sub.subject_name