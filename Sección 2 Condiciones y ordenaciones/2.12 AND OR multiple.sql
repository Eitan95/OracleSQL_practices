/*
C1 AND C2 TRUE TRUE ---> TRUE
C1 AND C2 TRUE FALSE --->FALSE
C1 AND C2 FALSE FALSE ---> FALSE 
C1 OR C2 TRUE TRUE ---> TRUE
C1 OR C2 TRUE FALSE ---> TRUE
C1 OR C2 FALSE FALSE ---> FALSE 
*/
/* C1 OR C2 AND C3 --- (C1 OR C2) -->R1---> R1 AND C3
TRUE TRUE FALSE  --- TRUE OR TRUE---TRUE---TRUE AND FALSE-- FALSE
C1 AND C2 OR C3 
F T T ---> TRUE     
C1 AND (C2 OR C3)
F AND T   */
SELECT FIRST_NAME, SALARY, DEPARTMENT_ID, HIRE_DATE FROM EMPLOYEES
WHERE SALARY>5000 AND DEPARTMENT_ID=50 AND HIRE_DATE>'01-01-2005';

SELECT FIRST_NAME, SALARY, DEPARTMENT_ID, HIRE_DATE FROM EMPLOYEES
WHERE SALARY>5000 AND DEPARTMENT_ID=50 OR HIRE_DATE>'01-01-2005';

SELECT FIRST_NAME, SALARY, DEPARTMENT_ID, HIRE_DATE FROM EMPLOYEES
WHERE SALARY>5000 AND (DEPARTMENT_ID=50 OR HIRE_DATE>'01-01-2005');