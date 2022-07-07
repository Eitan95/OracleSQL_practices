--GROUPING SETS ayuda a realizar diferentes group by sin necesidad de uni�n, mejora rendimiento
SELECT DEPARTMENT_ID, SUM(SALARY)
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID, SUM(SALARY)
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY GROUPING SETS (DEPARTMENT_ID)--CONJUNTO AGRUPADO A PARTIR DEL DEPARTMENT_ID
--LA DIFERENCIA ES M�NIMA, HABR�A QUE AGREGAR M�S GRUPOS
ORDER BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID,JOB_ID,SUM(SALARY)
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID,JOB_ID
ORDER BY DEPARTMENT_ID;

---SEPARA O HACE GROUP BY DEL ANTERIOR EJERCICIO
--MEJORA EL RENDIMIENTO CONSULTA UNA S�LA VEZ
SELECT DEPARTMENT_ID,JOB_ID,SUM(SALARY)
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY GROUPING SETS (DEPARTMENT_ID,JOB_ID)
ORDER BY DEPARTMENT_ID;


--ESTO AFECTA EL RENDIMIENTO, REALIZA DOS QUERYS
SELECT NULL,DEPARTMENT_ID,SUM(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID IS NOT NULL GROUP BY DEPARTMENT_ID
UNION ALL
SELECT JOB_ID,NULL,SUM(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;

SELECT DEPARTMENT_ID, JOB_ID, MANAGER_ID, SUM(SALARY)
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY GROUPING SETS((DEPARTMENT_ID,JOB_ID),(DEPARTMENT_ID,MANAGER_ID)); --SE PONE ENTRE PARENTESIS