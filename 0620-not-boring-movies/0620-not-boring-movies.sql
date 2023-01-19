# id가 홀수 & description이 boring이 아닌 것
# rating 기준 내림차순 정렬

SELECT *
FROM Cinema
WHERE description != 'boring' AND id % 2 = 1
ORDER BY rating DESC