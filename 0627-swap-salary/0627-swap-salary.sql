# UPDATE 문을 활용하여 변경하기

UPDATE SALARY
    SET SEX = CASE WHEN SEX = 'f' THEN 'm' ELSE 'f' END