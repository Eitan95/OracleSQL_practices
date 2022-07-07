/*TENER SUBCONSULTAS CON M�S DE UNA FILA 
MULTIPLE ROWS
ANY IN ALL
RECUPERAN M�S DE UNA FILA Y PUEDEN COMPARAR CON LA CONSULTA
*/

SELECT MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

--DA ERROR
SELECT FIRST_NAME,SALARY,DEPARTMENT_ID FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);

--CORREGIDO
SELECT FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE SALARY IN (SELECT MAX(SALARY) FROM EMPLOYEES
GROUP BY DEPARTMENT_ID); --AQU� SOLO SACA LOS MAYORES ENTRE 
--DEPARTMENTOS HAY QUE AGREGAR ALGO M�S

SELECT DEPARTMENT_ID, MAX(sALARY) FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

--CORREGIDO PARA BUSCAR EL MAXIMO Y EL DEPARTMENT ID
SELECT FIRST_NAME, SALARY, DEPARTMENT_ID
FROM EMPLOYEES
WHERE (DEPARTMENT_ID,SALARY) IN (SELECT DEPARTMENT_ID, MAX(SALARY) FROM EMPLOYEES
GROUP BY DEPARTMENT_ID);

---Nuevo

SELECT FIRST_NAME,DEPARTMENT_ID
FROM EMPLOYEES WHERE (DEPARTMENT_ID IN
(SELECT DEPARTMENT_ID FROM DEPARTMENTs D
JOIN LOCATIONS L ON(D.LOCATION_ID=L.LOCATION_ID)
AND CITY='Seattle');


SELECT DEPARTMENT_ID,DEPARTMENT_NAME FROM DEPARTMENTs D
JOIN LOCATIONS L ON(D.LOCATION_ID=L.LOCATION_ID)
AND CITY='Seattle';