# 각 직원 별 보너스 계산하기
# 아이디가 홀수인 경우, 직원 이름이 'M'으로 시작하지 않는 경우 -> 보너스를 SALARY의 100% 지급
# 그렇지 않은 직원은 0
# 아이디 기준 정렬

SELECT EMPLOYEE_ID
     , (CASE WHEN (EMPLOYEE_ID % 2 != 0 AND NAME NOT LIKE 'M%') THEN SALARY
            ELSE 0 END) AS BONUS
FROM EMPLOYEES
ORDER BY EMPLOYEE_ID