--productos cartesianos
--Cuidadoso con estas consultas, combinar tablas
SELECT FIRST_NAME, DEPARTMENT_NAME
FROM EMPLOYEES, DEPARTMENTS;
--La tabla 1 la combina con la tabla 2
--no tiene mucha utilidad


--producto cartesiano con cross join
SELECT FIRST_NAME, DEPARTMENT_NAME
FROM EMPLOYEES
CROSS JOIN DEPARTMENTS
;
-- LA SALIDA ES LA MISMA EL OBJETIVO DE HACER UN CROSS JOIN ES PARA INDICAR A OTROS QUE DESEAS HACE UN
--PRODUCTO CARTESIANO