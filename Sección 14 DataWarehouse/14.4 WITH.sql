--CLAUSULA WITH
--SUBQUERY FACTORING CLAUSE
SELECT E.FIRST_NAME AS NOMBRE, DC.NUM_EMPLE AS NUMERO_EMPLEADOS,E.DEPARTMENT_ID
FROM EMPLOYEES E,
(SELECT DEPARTMENT_ID, COUNT(*) AS NUM_EMPLE FROM EMPLOYEES GROUP BY DEPARTMENT_ID) DC
WHERE E.DEPARTMENT_ID = DC.DEPARTMENT_ID;

/* EL FROM LEE DE DOS TABLAS LA PRIMERA ES UNA NORMAL Y 
LA SEGUNDA UNA INLINE


EL FIRST_NAME LO SACA DE LA TABLA EMPLOYEES
EL DC.NUM_EMPLE LO CASA DE LA VISTA DIN?MICA POR DEPARTAMENTOS CON NUM_EMPLE COMO ALIAS*/

/*LA QUERY ES DIF?CIL DE LEER*/
WITH VISTA_NUM_EMPLE AS --NOMBRAR LA QUERY
 (SELECT DEPARTMENT_ID, COUNT(*) AS NUM_EMPLE FROM EMPLOYEES GROUP BY DEPARTMENT_ID)
SELECT E.FIRST_NAME AS NOMBRE, DC.NUM_EMPLE AS NUMERO_EMPLEADOS,E.DEPARTMENT_ID
FROM EMPLOYEES E,VISTA_NUM_EMPLE DC --UTIL LA WITH CUANDO SE VA USAR LA QUERY VARIAS VECES O CUANDO SE QUIERE SIMPLIFICAR
WHERE E.DEPARTMENT_ID = DC.DEPARTMENT_ID;

WITH SUM_SALARIO AS (SELECT DEPARTMENT_ID,SUM(SALARY) AS SALARIO_DEPARTAMENTO FROM EMPLOYEES GROUP BY DEPARTMENT_ID),
     NUM_EMPLE AS (SELECT DEPARTMENT_ID,COUNT(*) AS NUM_EMPLEADOS FROM EMPLOYEES GROUP BY DEPARTMENT_ID),
     NUM_EMPLE_TOTAL AS(SELECT COUNT(*) AS TOTAL_EMPLEADOS FROM EMPLOYEES)
SELECT DEPARTMENT_NAME, SALARIO_DEPARTAMENTO,NUM_EMPLEADOS,TOTAL_EMPLEADOS
FROM
DEPARTMENTS NATURAL JOIN SUM_SALARIO NATURAL JOIN NUM_EMPLE,NUM_EMPLE_TOTAL; --EL ULTIMO NO ES NECESARIO EL JOIN YA QUE
--COMO TAL SOLO SACA EL TOTAL, SE PODR?A HACER CON SELECT PERO SER?A M?S LARGO
