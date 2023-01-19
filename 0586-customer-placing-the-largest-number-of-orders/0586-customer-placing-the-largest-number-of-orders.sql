# 가장 많은 주문을 한 고객을 찾기
# 한 고객만 나올 예정!

SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1