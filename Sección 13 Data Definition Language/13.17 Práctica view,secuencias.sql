CREATE VIEW CIUDADES_GRANDES AS SELECT * FROM CIUDADES WHERE POBLACION > 3000000;
SELECT * FROM CIUDADES_GRANDES;

CREATE VIEW CIUDADES_USA AS SELECT * FROM CIUDADES WHERE COD_PAIS=28;
SELECT * FROM CIUDADES_USA;

DROP VIEW CIUDADES_GRANDES;
DROP VIEW CIUDADES_USA;

CREATE INDEX INDEX_PRACTICA ON CIUDADES (NOMBRE);
CREATE SEQUENCE SECUENCIA_PRACTICA INCREMENT BY 5
MAXVALUE 1000 MINVALUE 1;

INSERT INTO PAISES VALUES(SECUENCIA_PRACTICA.NEXTVAL,'INGLATERRA');
SELECT * FROM PAISES;