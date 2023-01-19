# Please write a DELETE statement and DO NOT write a SELECT statement.
# 중복된 이메일 제거, 중복된 것 중 가장 작은 ID의 이메일은 유지

# 1. 이메일 기준으로 그룹화하고, 그룹 중 가장 작은 ID 출력(MIN_ID)하는 서브쿼리 작성
# 2. 해당 서브쿼리에서 ID만 출력
# 3. 중복된 데이터 중 가장 작은 ID만 출력해야 하기에 1,2번에서 구한 ID를 제외한 나머지 데이터를 제거

DELETE FROM PERSON
    WHERE ID NOT IN (SELECT MIN_ID
                     FROM (SELECT MIN(ID) AS MIN_ID
                                , EMAIL
                           FROM PERSON
                           GROUP BY EMAIL
                    ) AS MIN_TB)