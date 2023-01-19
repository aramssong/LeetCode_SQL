# 중복된 이메일 모두 출력

SELECT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(*) >= 2