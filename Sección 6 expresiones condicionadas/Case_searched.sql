--CASE SEARCHED
SELECT FIRST_NAME,SALARY,
CASE
    WHEN SALARY BETWEEN 0 AND 3000 THEN 'GANAS POCO'
    WHEN SALARY BETWEEN 3001 AND 5000 THEN 'GANAS COMO LA MEDIA'
    WHEN SALARY >5001 THEN 'GANAS BASTANTE'
    ELSE 'NO GANAS'
END
FROM EMPLOYEES;