--SAVEPOINT UN ROLLBACK EN UN PUNTO DEL TIEMPO
--SAVEPOINT X
SELECT * FROM REGIONS1;
INSERT INTO REGIONS1 VALUES(300,'AMERICA');
INSERT INTO REGIONS1 VALUES(400,'ASIA');
SAVEPOINT A;
INSERT INTO REGIONS1 VALUES (500,'ANTARTIDA');
INSERT INTO REGIONS1 VALUES (600,'AFRICA');
ROLLBACK TO SAVEPOINT A;
--OJO SI SE PONE NADA M�S ROLLBACK YA NO HAY PUNTO DE SALVADO