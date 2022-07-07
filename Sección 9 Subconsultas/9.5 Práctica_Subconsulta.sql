--Mostrar empleados que se encuentren en el mismo departamento que John Chen
SELECT FIRST_NAME,DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID =(
SELECT DEPARTMENT_ID FROM EMPLOYEES
WHERE FIRST_NAME ='John' AND LAST_NAME='Chen');

--mostrar departamentos en Toronto
SELECT DEPARTMENT_NAME FROM DEPARTMENTS WHERE LOCATION_ID=(
SELECT LOCATION_ID FROM LOCATIONS WHERE CITY='Toronto');

--mostrar los departamentos con m�s de 5 empleados
SELECT FIRST_NAME FROM EMPLOYEES WHERE EMPLOYEE_ID IN (
SELECT MANAGER_ID FROM EMPLOYEES GROUP BY MANAGER_ID HAVING COUNT(*) > 5)ORDER BY MANAGER_ID;


--En que ciudad trabaja  Guy Himuro

--subqueris
SELECT EMPLOYEE_ID,DEPARTMENT_ID,FIRST_NAME, LAST_NAME FROM EMPLOYEES WHERE FIRST_NAME ='Guy' AND
LAST_NAME = 'Himuro';

SELECT LOCATION_ID FROM DEPARTMENTS WHERE DEPARTMENT_ID='30';

SELECT CITY FROM LOCATIONS WHERE LOCATION_ID = (1700);

--query
SELECT CITY FROM LOCATIONS WHERE LOCATION_ID = (SELECT LOCATION_ID FROM DEPARTMENTS
WHERE DEPARTMENT_ID=(SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE FIRST_NAME ='Guy' AND
LAST_NAME = 'Himuro'));

--Qu� empleados tienen el salario m�nimo
SELECT FIRST_NAME, LAST_NAME, JOB_ID FROM EMPLOYEES WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES);

--MOSTRAR LOS DETALLES DE LOS DEPARTAMENTOS EN LOS CUALES EL SALARIO M�XIMO SEA MAYOR A 10,000;
SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID IN (
SELECT DEPARTMENT_ID FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVING MAX(SALARY)> 10000);

--INDICAR LOS TIPOS DE TRABAJO DE LOS EMPLEADOS QUE ENTRARON EN LA EMPRESA EN 2002 Y 2003
SELECT * FROM JOBS WHERE JOB_ID IN (
SELECT JOB_ID FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE,'YYYY') BETWEEN 2002 AND 2003);