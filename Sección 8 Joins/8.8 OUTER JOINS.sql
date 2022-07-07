SELECT DEPARTMENT_NAME, FIRST_NAME
FROM DEPARTMENTS D RIGHT OUTER JOIN EMPLOYEES E
ON D.DEPARTMENT_ID=E.DEPARTMENT_ID;

SELECT DEPARTMENT_NAME, FIRST_NAME
FROM DEPARTMENTS D FULL OUTER JOIN EMPLOYEES E
ON D.DEPARTMENT_ID=E.DEPARTMENT_ID;
