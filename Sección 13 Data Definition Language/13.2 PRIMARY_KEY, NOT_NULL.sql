--TODA TABLA DEBE DE TENER UNA CLAVE PRIMARIA
--CONSTRAINTS (RESTRICCIÓN)
/*
NOT NULL
UNIQUE (NO SE PUEDE REPETIR,PUEDE SER NULO)
PRIMARY KEY (NO SE PUEDE REPETIR Y NO PUEDE SER NULO)
FOREIGN KEY (UNE TABLA HIJA CON TABLA MAESTRA)
CHECK(CONDICIÓN A UNA FILA)
*/

CREATE TABLE PRUEBA3
(
CODIGO NUMBER PRIMARY KEY,
NOMBRE VARCHAR2(100) NOT NULL
);

--CONTRAINT DE COLUMNA
INSERT INTO PRUEBA3 VALUES(1,NULL);--NOT NULL
INSERT INTO PRUEBA3 VALUES(1,'JOSE');
INSERT INTO PRUEBA3 VALUES(1,'RAUL');--RESTRICCIÓN UNICA

CREATE TABLE PRUEBA4
(
CODIGO1 NUMBER,--NO SE PUEDE DOS PRIMARY KEY
CODIGO2 NUMBER,
NOMBRE VARCHAR2(100),
PRIMARY KEY(CODIGO1,CODIGO2)--CONSTRAINT DE TABLA
);

INSERT INTO PRUEBA4 VALUES(1,1,'TOMAS');
INSERT INTO PRUEBA4 VALUES(1,2,'ROSA'); --SI SE REPITE LAS DOS ME FALLA LA CLAVE PRIMARIA
INSERT INTO PRUEBA4 VALUES(1,2,'ANA');