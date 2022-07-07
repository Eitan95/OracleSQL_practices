SELECT STREET_ADDRESS,CITY FROM LOCATIONS  WHERE COUNTRY_ID  IN('CA','US') AND LENGTH(STREET_ADDRESS)>=15 ;

SELECT FIRST_NAME,last_name,LENGTH(FIRST_NAME), SALARY,SALARY*14 AS SALARIO FROM EMPLOYEES WHERE INSTR(LAST_NAME,'b')>3;

SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY BETWEEN 4000 AND 7000 AND INSTR(lower(FIRST_NAME),'a')<>0 AND COMMISSION_PCT IS NOT NULL;

SELECT FIRST_NAME, LAST_NAME, SUBSTR(FIRST_NAME,1,1)||'.'||SUBSTR(LAST_NAME,1,1)||'.' AS INICIALES FROM EMPLOYEES;

SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE'S%' OR LAST_NAME LIKE 'S%' ;

SELECT FIRST_NAME, SALARY,RPAD('*',SALARY/1000,'*') AS RANKING FROM EMPLOYEES ORDER BY SALARY DESC;