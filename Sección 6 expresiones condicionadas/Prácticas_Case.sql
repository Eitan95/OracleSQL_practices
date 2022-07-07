SELECT 
CASE 
 WHEN DEPARTMENT_ID = 50 THEN 'TRANSPORTE'
 WHEN DEPARTMENT_ID = 90 THEN 'DIRECCION'
 ELSE 'OTRO DEPARTAMENTO'
END 
FROM EMPLOYEES;

SELECT CITY,COUNTRY_ID, 
CASE
    WHEN COUNTRY_ID IN ('US','CA') THEN 'AMERICA DEL NORTE'
    WHEN COUNTRY_ID IN ('CH','UK','DE','IT') THEN 'EUROPA'
    WHEN COUNTRY_ID = 'BR'  THEN 'AMERICA DEL SUR'
    ELSE 'OTRA ZONA'
END
FROM LOCATIONS;

SELECT DEPARTMENT_ID, FIRST_NAME, decode (DEPARTMENT_ID,
50,'Transporte',
60,'Direcci�n',
'Otro departamento'
)
from employees;
