--CONCAT Concatenar cadena de caracteres
SELECT FIRST_NAME || ' ' ||LAST_NAME FROM EMPLOYEES; --No es estandar, solo en Oracle
SELECT CONCAT(FIRST_NAME,CONCAT(' ', LAST_NAME))AS NOMBRE FROM EMPLOYEES; --Solo acepta dos argumentos, aunque se puede anidar
