--3
SELECT E.DNI, E.NOMBRE, T.IDTIPO, T.DESCRIPCION
FROM EMPLEADO E, TIPOPLAN T, PLAN P
WHERE P.MONITOR=E.DNI AND P.TIPOPLAN=T.IDTIPO
GROUP BY E.DNI, E.NOMBRE, T.IDTIPO, T.DESCRIPCION
HAVING COUNT(*)=( SELECT MAX( COUNT(*))
                  FROM PLAN
                  GROUP BY MONITOR, TIPOPLAN);