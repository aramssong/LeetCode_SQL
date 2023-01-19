# 아무것도 주문하지 않은 고객 이름 출력

SELECT C.NAME AS CUSTOMERS
FROM CUSTOMERS AS C
    LEFT JOIN ORDERS AS O
        ON C.ID = O.CUSTOMERID
WHERE O.CUSTOMERID IS NULL