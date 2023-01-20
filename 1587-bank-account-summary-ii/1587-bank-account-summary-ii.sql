# 잔액이 10000이상인 유저
# 이름, 잔액 출력
# 계좌 별 잔액 합산

SELECT U.name
     , SUM(T.amount) AS balance
FROM Transactions AS T
    INNER JOIN Users AS U
        ON T.account = U.account
GROUP BY T.account
HAVING SUM(T.amount) > 10000