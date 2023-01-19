# 각 유저 별 여행한 거리 출력
# 거리 기준 내림차순 정렬, 이름 오름차순 정렬

SELECT DISTINCT U.name
     , (CASE WHEN SUM(R.distance) > 0 THEN SUM(R.distance)
        ELSE 0 END) AS travelled_distance
FROM Users AS U
    LEFT JOIN Rides AS R
        ON U.id = R.user_id
GROUP BY R.user_id
ORDER BY travelled_distance DESC, U.name