SELECT COUNTRY_NAME, REGION_NAME FROM COUNTRIES NATURAL JOIN REGIONS;

SELECT COUNTRY_NAME, REGION_NAME,CITY FROM COUNTRIES NATURAL JOIN REGIONS NATURAL JOIN LOCATIONS;

SELECT DEPARTMENT_NAME, ROUND(AVG(SALARY),2) FROM EMPLOYEES JOIN DEPARTMENTS USING(DEPARTMENT_ID)
GROUP BY DEPARTMENT_NAME;

SELECT DEPARTMENT_NAME, FIRST_NAME, CITY FROM DEPARTMENTS DEPT JOIN EMPLOYEES EMPLE
ON (DEPT.MANAGER_ID=EMPLE.EMPLOYEE_ID) JOIN LOCATIONS LOC USING (LOCATION_ID);

SELECT LAST_NAME, HIRE_DATE, DEPARTMENT_NAME, JOB_TITLE
FROM EMPLOYEES JOIN DEPARTMENTS USING (DEPARTMENT_ID)
JOIN JOBS
USING (JOB_ID)
WHERE TO_CHAR(HIRE_DATE,'YYYY') BETWEEN 2002 AND 2004;

SELECT JOB_TITLE, AVG(SALARY)
FROM JOBS NATURAL JOIN EMPLOYEES
GROUP BY JOB_TITLE HAVING AVG(SALARY)>7000;

SELECT REGION_NAME, COUNT(*) AS "NUM DEPAR"
FROM REGIONS NATURAL JOIN COUNTRIES NATURAL JOIN LOCATIONS
NATURAL JOIN DEPARTMENTS GROUP BY REGION_NAME;

SELECT FIRST_NAME, department_name,COUNTRY_NAME
FROM EMPLOYEES
JOIN DEPARTMENTS USING(DEPARTMENT_ID)
JOIN LOCATIONS USING( LOCATION_ID)
JOIN COUNTRIES USING ( COUNTRY_ID);
