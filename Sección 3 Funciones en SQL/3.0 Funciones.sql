/* Funciones SELECT COLUMNA, FUNCIO(PARAMETRO) FROM TABLA

*Se pueden usar en cualquier sitio donde aparezca una columna
*Si la funci�n no lleva par�metros omitimos los par�ntesis: sysdate, user
*Si la funci�n lleva m�s de un argumento los indicamos entre comas
substr(Cadena,posici�n,longitud)

Anidamiento de las funciones
*Se pueden anidar funciones, para poder cambiar la expresi�n del valor devuelto por las m�s internas
*Se sigue el orden de precedencia t�pico de las operaciones aritm�ticas

SUBSTR ('hola',1,2)>ho
UPPER(SUBSTR('hola',1,2))>substr>ho>upper>HO
 
*/