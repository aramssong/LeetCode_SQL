# 각 플레이어마다 첫번째로 로그인한 일자 출력

SELECT player_id
     , MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id