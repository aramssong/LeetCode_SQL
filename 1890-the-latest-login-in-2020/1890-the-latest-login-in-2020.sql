# 2020년 동안 로그인한 기록 중 각 유저 별 가장 최근 로그인 출력

SELECT user_id
     , MAX(time_stamp) AS last_stamp
FROM Logins
WHERE YEAR(time_stamp) = 2020
GROUP BY user_id