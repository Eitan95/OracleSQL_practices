/*SINONIMOS
NOMBRES CORTOS Y CLAROS
--ACCEDER A OBJETOS DE OTROS ESQUEMAS
*/
CREATE SYNONYM DEPARTAMENTOS FOR DEPARTMENTS;
--ES UN NUEVO ALIAS O ACCESO DIRECTO
SELECT * FROM DEPARTAMENTOS WHERE DEPARTMENT_ID=10;
--CREAR NUEVO USUARIO
alter session set "_ORACLE_SCRIPT"=true;
CREATE USER user2 IDENTIFIED by user123;
GRANT CONNECT, RESOURCE TO user2;

GRANT SELECT ON DEPARTMENTS TO user2;
SELECT * FROM ALL_USERS;
--CREAR UNA NUEVA CONEXI�N BOTON VERDE DEL LADO IZQUIERDO AGREGAR
--EL NOMBRE Y PASSWORD AGREGADO
SHOW USER;