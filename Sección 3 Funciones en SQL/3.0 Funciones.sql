/* Funciones SELECT COLUMNA, FUNCIO(PARAMETRO) FROM TABLA

*Se pueden usar en cualquier sitio donde aparezca una columna
*Si la función no lleva parámetros omitimos los paréntesis: sysdate, user
*Si la función lleva más de un argumento los indicamos entre comas
substr(Cadena,posición,longitud)

Anidamiento de las funciones
*Se pueden anidar funciones, para poder cambiar la expresión del valor devuelto por las más internas
*Se sigue el orden de precedencia típico de las operaciones aritméticas

SUBSTR ('hola',1,2)>ho
UPPER(SUBSTR('hola',1,2))>substr>ho>upper>HO
 
*/