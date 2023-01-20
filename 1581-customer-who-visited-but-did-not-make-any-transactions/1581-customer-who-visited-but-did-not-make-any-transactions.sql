# 어떠한 거래를 하지 않고 방문한 유저의 아이디 & 방문 타입 수

SELECT V.customer_id
     , COUNT(*) AS count_no_trans
FROM Visits AS V
    LEFT JOIN Transactions AS T
        ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id