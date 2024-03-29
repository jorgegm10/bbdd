--9
SELECT *
FROM(
      SELECT C.IDCASA,C.NOMBRE, COUNT(DISTINCT E.DNI) AS NUMEMPLEADOS
      FROM CASA C, EMPLEADO E
      WHERE C.IDCASA=E.IDCASA
      GROUP BY C.IDCASA, C.NOMBRE
      ORDER BY C.IDCASA
)      
NATURAL JOIN(      
      SELECT C.IDCASA, C.NOMBRE, COUNT(P.TIPOPLAN) AS NUMPLANES
      FROM CASA C, PLAN P
      WHERE P.CASA=C.IDCASA
      GROUP BY C.IDCASA, C.NOMBRE
      HAVING COUNT(*)=( SELECT MIN(COUNT(*))
                        FROM CASA C, PLAN P
                        WHERE P.CASA=C.IDCASA
                        GROUP BY C.IDCASA
                      )
)
;