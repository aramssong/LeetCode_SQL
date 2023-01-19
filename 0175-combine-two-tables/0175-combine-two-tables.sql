# 주소가 없는 PERSONID의 경우, null로 출력

SELECT P.firstName
     , P.lastName
     , A.city
     , A.state
FROM Person AS P
    LEFT JOIN Address AS A
        ON P.personId = A.personID