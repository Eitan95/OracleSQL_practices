/* Caracteres especiales*/
SELECT 'NOMBRE:',FIRST_NAME FROM EMPLOYEES;  --STRING CADENA DE CARACTERES
SELECT 'NOMBRE: ' || FIRST_NAME AS "NOMBRE EMPLEADO" FROM EMPLOYEES;
SELECT 'NOMBRE: ' || FIRST_NAME || ' ' ||LAST_NAME AS "NOMBRE EMPLEADO" FROM EMPLOYEES;--CONCATENAMOS FIRST NAME MAS LAST NAME