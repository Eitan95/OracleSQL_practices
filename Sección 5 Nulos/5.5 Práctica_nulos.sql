--Visualizar la ciudad y el estado de provincia, en caso de nulo 
-- coloca no tiene
SELECT CITY, NVL(STATE_PROVINCE,'NO TIENE') FROM LOCATIONS;
-- Visualizar el salario incrementado en la commission_pct
-- en cado caso coloca salario
SELECT SALARY,NVL((SALARY*COMMISSION_PCT)+SALARY,SALARY) FROM EMPLOYEES;
--Departamento y manager id en caso de no haber -1
select department_id, nvl(manager_id,-1) from employees;
--devolver null si la ciudad y provincia es la misma
SELECT city, state_province,NULLIF(CITY,STATE_PROVINCE) from locations;
