--COUNT (CUENTA HASTA FILAS DUPLICADAS PERO NO NULLOS)
SELECT COUNT(FIRST_NAME) FROM EMPLOYEES;
SELECT COUNT(SALARY),COUNT(COMMISSION_PCT) FROM EMPLOYEES; 
--SOLO 35 TIENEN COMMISSION
SELECT COUNT (EMPLOYEE_ID) FROM EMPLOYEES;

SELECT COUNT(*) FROM EMPLOYEES; --CUENTA TODAS LAS FILAS

SELECT COUNT(*) FROM EMPLOYEES
WHERE DEPARTMENT_ID=60; 

SELECT COUNT(*) FROM EMPLOYEES
WHERE SALARY >6000; 

SELECT COUNT(DISTINCT FIRST_NAME) FROM EMPLOYEES; --VALORES DISTINTOS

SELECT COUNT(DISTINCT DEPARTMENT_ID) FROM EMPLOYEES; 

SELECT DISTINCT DEPARTMENT_ID FROM EMPLOYEES; --NO ES FUNCION GRUPO