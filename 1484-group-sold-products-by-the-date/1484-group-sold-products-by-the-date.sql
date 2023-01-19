# 각 날짜 별 물건 종류 수와 물건 종류 이름 출력
# 물건 종류 이름은 사전 순으로 정렬
# 날짜 기준 정렬

SELECT sell_date
     , COUNT(DISTINCT product) AS num_sold
     , GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date