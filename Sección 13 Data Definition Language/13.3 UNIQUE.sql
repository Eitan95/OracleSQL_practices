--CLAVE UNIQUE PUEDE ESTAR NULO
CREATE TABLE PRUEBA5(
CODIGO NUMBER PRIMARY KEY,
NOMBRE VARCHAR2(100) UNIQUE
);

INSERT INTO PRUEBA5 VALUES (1,'TOMAS');
INSERT INTO PRUEBA5 VALUES (2,'TOMAS'); --DA EROR POR PRIMARY
INSERT INTO PRUEBA5 VALUES (2,'null'); 
SELECT * FROM PRUEBA5;

CREATE TABLE PRUEBA6(
CODIGO NUMBER PRIMARY KEY,
NOMBRE VARCHAR2(100),
CONSTRAINT NOMBRE_I UNIQUE(NOMBRE) --LE DA UN NOMBRE A LA CONSTRICCION
--USADO EN ADMINISTRACIÓN DE BASES
);