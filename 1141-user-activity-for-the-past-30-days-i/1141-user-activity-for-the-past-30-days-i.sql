# 2019-07-27이 마지막 날, 30일동안 활성유저 수를 계산
# 1개라도 활동했으면 그건 활동한 것!

SELECT activity_date AS day
     , COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
GROUP BY activity_date