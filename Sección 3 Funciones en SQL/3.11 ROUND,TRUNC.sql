--LAST DAY
SELECT SYSDATE, LAST_DAY('4-8-2019') FROM DUAL;
--ROUND TRUNC
SELECT SYSDATE, ROUND(SYSDATE,'MONTH'), ROUND(SYSDATE, 'YEAR') FROM DUAL; --REDONDEA HACIA ARRIBA
SELECT SYSDATE, TRUNC(SYSDATE,'MONTH'),  TRUNC (SYSDATE,'YEAR') FROM DUAL; --REDONDE HACIA ABAJO
