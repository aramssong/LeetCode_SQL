# Type I Diabetes 있는 사람 출력
# DIAB1가 포함된 conditions를 찾기

SELECT *
FROM Patients
WHERE conditions LIKE '% DIAB1%' OR conditions LIKE 'DIAB1%'