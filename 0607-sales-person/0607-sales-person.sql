# "RED" 이름인 회사와 관련된 어떤 주문도 가지지 않은 판매원의 이름 출력

SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (SELECT O.sales_id
                       FROM Orders AS O
                           LEFT JOIN Company AS C
                               ON O.com_id = C.com_id
                       WHERE C.name = 'RED')       