--EJEMPLO VISTAS
CREATE VIEW EMP_FULL AS
	SELECT E.*, D.DEPARTMENT_NAME, L.CITY, C.COUNTRY_NAME, R.REGION_NAME
	FROM EMPLOYEES E, DEPARTMENTS D, LOCATIONS L, COUNTRIES C, REGIONS R
	WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID
	AND D.LOCATION_ID = L.LOCATION_ID
	AND L.COUNTRY_ID = C. COUNTRY_ID
	AND C.REGION_ID = R.REGION_ID;
	
--EJEMPLO CONSULTA
SELECT * FROM EMP_FULL
WHERE REGION_NAME = 'Americas';

--EJEMPLO SECUENCIA (INCREMENTO POR DEFECTO = 1)
CREATE SEQUENCE SEQ01 START WITH 100;

SELECT nextval('SEQ01'); --100 (define el valor inicial)
SELECT currval('SEQ01'); --100 (obtiene el valor actual)
SELECT nextval('SEQ01'); --101 (obtiene el siguiente valor)

--SECUENCIA CON INCREMENTO
CREATE SEQUENCE SEQ02 START WITH 20 INCREMENT BY 5;

SELECT nextval('SEQ02'); --20
SELECT nextval('SEQ02'); --25
SELECT nextval('SEQ02'); --30

--CAMPOS TIPO SERIAL: EJEMPLO
--CREACION DE TABLA
CREATE TABLE PAIS(
	CODIGO SERIAL PRIMARY KEY,
	NOMBRE VARCHAR(50)
);

--INSERCION DE DATOS
INSERT INTO PAIS(NOMBRE) VALUES('PERU');
INSERT INTO PAIS(NOMBRE) VALUES('BRASIL');
INSERT INTO PAIS(NOMBRE) VALUES('COLOMBIA');

--REVISION DE VALOR ACTUAL DE LA SECUENCIA CREADA
SELECT currval('PAIS_CODIGO_SEQ');