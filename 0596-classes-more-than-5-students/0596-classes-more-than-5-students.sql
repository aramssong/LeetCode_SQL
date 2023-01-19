# 최소 5명 이상의 학생이 있는 class를 출력

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(class) >= 5