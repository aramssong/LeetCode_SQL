# 매니저보다 급여를 더 많이 받는 직원 출력
# 셀프 조인 활용

SELECT E1.name AS Employee
FROM Employee AS E1
    LEFT JOIN Employee AS E2
        ON E1.managerId = E2.id
WHERE E1.salary > E2.salary