--SELF JOINS. SE producen cuando hay union en la propia table
/* For in key por ejemplo el 10 tomas 90| 90 juan 120| 120 rosa null

Realizar el nombre del empleado y su jefe

*/

SELECT TRABAJADOR.FIRST_NAME AS TRABAJADOR, JEFE.FIRST_NAME AS JEFE
FROM EMPLOYEES TRABAJADOR JOIN EMPLOYEES JEFE
ON(TRABAJADOR.MANAGER_ID=JEFE.EMPLOYEE_ID);--Une el employee id 
--y el manager id, hay que crear dos alias