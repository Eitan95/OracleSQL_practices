--Crear secuencias
CREATE SEQUENCE SECUENCIA1 INCREMENT BY 1
MAXVALUE 1000 MINVALUE 20 CACHE 20;
--Objecto independiente, como vista o tabla y devuelve el siguiente numero de la tabla

/*Desventaja: no está asociado a una tabla
Ventaja: se puede usar para varias tablas

maxvalue: hasta cuando llega la secuencia
minvalue: por donde empieza
cache:(optional) cuantos numeros almacenada previamente*/

--CHECAR EN SECUENCIA1
SELECT SECUENCIA1.NEXTVAL FROM DUAL; --NEXTVAL VALOR SIGUIENTE, CADA VEZ QUE SE UTILIZA
--INCREMENTA EL VALOR ANTERIOR
SELECT SECUENCIA1.CURRVAL FROM DUAL;

SELECT * FROM REGIONS1;

INSERT INTO REGIONS1 VALUES(SECUENCIA1.NEXTVAL,'AAAA');
SELECT * FROM REGIONS1;
DROP SEQUENCE SECUENCIA1;