CREATE OR REPLACE FUNCTION nombre_socio (
  dni_ IN SOCIO.dni%TYPE
)
RETURN VARCHAR
IS
  x VARCHAR(30);
BEGIN
  SELECT NOMBRE INTO X FROM SOCIO WHERE DNI = dni_;
  RETURN (X);
  EXCEPTION 
    WHEN NO_DATA_FOUND THEN RETURN ('SOCIO INEXISTENTE');
END;

/
SET SERVEROUTPUT ON
BEGIN
  DBMS_OUTPUT.PUT_LINE(nombre_socio('65772743Q'));
END;
/