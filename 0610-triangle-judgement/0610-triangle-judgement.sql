# Write your MySQL query statement below
# 삼각형 만들 때 -> 가장 긴 변의 길이가 나머지 두 변의 길이의 합보다 작아야 함 
SELECT x, y, z, 
# IF(삼각형이 될 수 없는 조건, No 반환, 아니면 Yes 반)
IF( x+y <= z or y+z <= x or x+z <= y, 'No', 'Yes') AS triangle
FROM Triangle
