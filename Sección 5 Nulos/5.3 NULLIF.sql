--NULLIF(v1,v2) compara dos valores si son iguales devuelve un nulo 
--si son distintos devuelve un 1

SELECT NULLIF(1,1) FROM DUAL;
SELECT COUNTRY_ID,UPPER(SUBSTR(COUNTRY_NAME,1,2)),NULLIF(COUNTRY_ID,UPPER(SUBSTR(COUNTRY_NAME,1,2))),
NVL2(  NULLIF(COUNTRY_ID,UPPER(SUBSTR(COUNTRY_NAME,1,2))), 'NO SON IGUALES','SON IGUALES')
FROM COUNTRIES;--EXTRAE 
--DOS LETRAS DE COUNTRY