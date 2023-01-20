# prodcuts 테이블을 product_id, store, price의 컬럼인 테이블로 재정렬
# 제품이 가게에 없다면 데이터 추가하지 말기

SELECT product_id
     , 'store1' AS store
     , store1 AS price
FROM Products
WHERE store1 IS NOT NULL

UNION

SELECT product_id
     , 'store2' AS store
     , store2 AS price
FROM Products
WHERE store2 IS NOT NULL

UNION

SELECT product_id
     , 'store3' AS store
     , store3 AS price
FROM Products
WHERE store3 IS NOT NULL