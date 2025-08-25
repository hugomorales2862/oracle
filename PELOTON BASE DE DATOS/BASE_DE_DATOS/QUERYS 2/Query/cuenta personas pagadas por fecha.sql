SELECT 
(
   CASE
      WHEN hfa_clase = 1 THEN  "Oficiales de Carrera"
      WHEN hfa_clase = 2 THEN  "Oficiales de Reservas"
      WHEN hfa_clase = 3 THEN  "Oficiales Asimilados"
      WHEN hfa_clase = 4 THEN  "Especialistas "
      WHEN hfa_clase = 5 THEN  "Cadetes"
      WHEN hfa_clase = 6 THEN  "Tropa"
   END
          ),
 count(hfa_clase)
from hfasig
WHERE YEAR(hfa_fecha) = 2017 
AND month(hfa_fecha) = 012
GROUP BY 1
