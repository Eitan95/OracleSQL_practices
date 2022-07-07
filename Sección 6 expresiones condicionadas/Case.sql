--case
/*
    VI
    CASE 10
         20
         30
*/
SELECT FIRST_NAME, JOB_ID,
CASE JOB_ID
    WHEN 'SH_CLERK' THEN 'TIPO 1'
    WHEN 'ST_MAN' THEN 'TIPO 2'
    WHEN 'ST_CLERK' THEN 'TIPO 3'
    ELSE 'SIN TIPO'
END
FROM EMPLOYEES
WHERE DEPARTMENT_ID=50;