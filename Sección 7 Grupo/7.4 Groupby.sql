SELECT DEPARTMENT_ID,JOB_ID, COUNT(*), SUM(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID, JOB_ID --SE PUEDE USAR FUNCIONES GROUP
--AND SINGLE
--SIEMPRE Y CUANDO SE ENCUENTREN EN LA CLAUSULA DEL GROUP BY
ORDER BY DEPARTMENT_ID; --DETRAS DEL WHERE