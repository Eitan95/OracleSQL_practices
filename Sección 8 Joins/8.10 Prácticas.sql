/*Indicar el nombre del empleado y el de su jefe
(SELF_JOIN de la tabla employees)*/
SELECT TRABAJADOR.FIRST_NAME AS EMPLEADO,
MANAGER.FIRST_NAME AS JEFE FROM
EMPLOYEES TRABAJADOR JOIN EMPLOYEES MANAGER
ON(TRABAJADOR.MANAGER_ID=MANAGER.EMPLOYEE_ID);

/*Indica el DEPARTMENT_NAME y el de la suma de salarios de ese
departamento ordenados ascendentemente y que aparezcan
también los department_name que no tengan empleados*/
SELECT DEPARTMENT_NAME, SUM(SALARY) FROM EMPLOYEES
RIGHT OUTER JOIN DEPARTMENTS USING (DEPARTMENT_ID) GROUP BY
DEPARTMENT_NAME ORDER BY SUM(SALARY);

/*Visualizar la ciudad y el nombre del departamento, incluidas
ciudades que no tengan departamentos*/
SELECT CITY, DEPARTMENT_NAME FROM LOCATIONS LEFT OUTER JOIN
DEPARTMENTS USING (LOCATION_ID);