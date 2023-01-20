# 각 유저 별 팔로워 수 출력
# user_id 기준 오름차순 정렬

SELECT user_id
     , COUNT(*) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id