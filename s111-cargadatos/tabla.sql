CREATE TABLE TITANIC_RAW(
    PASSENGERID VARCHAR(100),
    SURVIVED VARCHAR(100),
    PCLASS VARCHAR(100),
    NAME VARCHAR(100),
    SEX VARCHAR(100),
    AGE VARCHAR(100),
    SIBSP  VARCHAR(100),
    PARCH  VARCHAR(100),
    TICKET  VARCHAR(100),
    FARE  VARCHAR(100),
    CABIN  VARCHAR(100),
    EMBARKED VARCHAR(100)
);


DO
$$
DECLARE
	nombre VARCHAR := 'Juan';
	apellido VARCHAR := 'Perez';
	nombreCompleto VARCHAR;
	numero NUMERIC := 20;
BEGIN
	numero := numero + 1;
	nombreCompleto := nombre || ' ' || apellido;
	RAISE NOTICE 'Hola %', nombreCompleto;
END;
$$