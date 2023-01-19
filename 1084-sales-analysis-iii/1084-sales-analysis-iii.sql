# 2019년 1분기(1월 ~ 3월)에 판매된 제품

SELECT P.product_id
     , P.product_name
FROM Sales AS S
    LEFT JOIN Product AS P
        ON S.product_id = P.product_id
GROUP BY S.product_id
HAVING MIN(S.sale_date) >= '2019-01-01' AND MAX(S.sale_date) <= '2019-03-31'