ALTER TABLE CURSOS 
DROP (TUTOR); --BORRA LA COLUMNA

ALTER TABLE CURSOS READ ONLY;--IDEAL CUANDO SE QUIERE HACER MANTENIMIENTO

INSERT INTO CURSOS VALUES(2,'XXX','ZZ');
/*DEBE DE APARECER ESTE MENSAJE 
An attempt was made to update a read-only materialized view.
*Action:   No action required. Only Oracle is allowed to update a
           read-only materialized view. */
           
--PARA REGRESARLA A LA NORMALIDAD
ALTER TABLE CURSOS READ WRITE;
INSERT INTO CURSOS VALUES(2,'ZZ','ZZ',3);