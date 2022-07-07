--LIKE 'PATRON'
--%
--_
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE'J%';

SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE'_e%'; -- aqui decimos que busque todos los nombres donde la segunda letra sea e %sustituye varios caracteres - sustituye una
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '%te%'; --CONSUME CONSULTAS NO CONSTRUIDAS, CUIDADO
