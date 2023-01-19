# 전날과 비교했을 때 기온이 높은 날의 id를 출력

# [시도 1] LAG 윈도우 함수 사용 (테스트케이스 중 1개에서 오류)
# SELECT id
# FROM (SELECT id
#            , recordDate
#            , temperature
#            , LAG(temperature) OVER (ORDER BY recordDate) AS pre_tem
#       FROM Weather) AS pre
# WHERE pre.temperature > pre.pre_tem

# [시도 2] id+1한 데이터를 join함 (테스트케이스 중 1개 오류 → 날짜가 순서대로 되어있지 않기에 해당 쿼리 사용 불가)
# SELECT W1.id
# FROM Weather AS W1
#     LEFT JOIN Weather AS W2
#         ON W1.id = W2.id+1
# WHERE W1.temperature > W2.temperature

# [시도 3] 셀프 조인, 조인 조건을 datediff 활용
SELECT W1.id AS Id
FROM Weather AS W1
    INNER JOIN Weather AS W2
        ON DATEDIFF(W1.recordDate, W2.recordDate) = 1 AND W1.temperature > W2.temperature