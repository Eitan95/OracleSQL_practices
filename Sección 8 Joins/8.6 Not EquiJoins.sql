SELECT DEPARTMENT_NAME
FROM DEPARTMENTS D JOIN LOCATIONS L
ON d.LOCATION_ID = l.LOCATION_ID
AND L.CITY='Seattle';

SELECT DEPARTMENT_NAME
FROM DEPARTMENTS D JOIN LOCATIONS L
ON d.LOCATION_ID <> l.LOCATION_ID
AND L.CITY='Seattle';