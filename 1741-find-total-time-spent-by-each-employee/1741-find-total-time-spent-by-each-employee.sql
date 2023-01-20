# 각 직원이 각 날짜에 회사에서 보냈던 총 시간(분) 계산
# 직원은 한번 이상 들어오고 나갈 수 있음

SELECT event_day AS day
     , emp_id
     , SUM(total_time) AS total_time
FROM (SELECT *
           , out_time - in_time AS total_time
      FROM Employees) sub_tb
GROUP BY day, emp_id