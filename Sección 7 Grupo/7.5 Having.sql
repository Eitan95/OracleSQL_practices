--HAVING ES EL WHERE DEL GROUP BY
SELECT DEPARTMENT_ID, JOB_ID,COUNT(*),SUM(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID,JOB_ID
HAVING SUM(SALARY) > 25000 AND COUNT(*)>10 
--SALARIO MAYOR A 25000 Y QUE TENGA MAS DE 10 EMPLEADOS
ORDER BY DEPARTMENT_ID;