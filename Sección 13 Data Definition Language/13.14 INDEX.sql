--INDEX AYUDA A BUSCAR COSAS CON RAPIDEZ
--PALABRAS CONTENIDO, POR EJEMPLO LOPEZ. NO TIENE QUE BUSCAR EN TODA LA TABLA

--GESTIONADO POR UN ADMINISTRADOR DE BASE DE DATOS
CREATE INDEX INDEX1 ON EMPLOYEES (LAST_NAME); --EN LA CARPETA INDEX
SELECT * FROM EMPLOYEES WHERE LAST_NAME LIKE 'S%';
--MEJORA EL RENDIMIENTO CUANDO HAGA CIERTA CONSULTA EN ESTE CASO LAST_NAME
DROP INDEX INDEX1;

