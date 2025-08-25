SELECT * FROM hfasigc 
WHERE year(hfa_fecha) = 2016
AND MONTH(hfa_Fecha) = 11
AND hfa_codigo  in (17, 18, 19, 26, 32, 33, 34, 35 )

SELECT * FROM hfasig
WHERE year(hfa_fecha) = 2016
AND MONTH(hfa_Fecha) = 01
and hfa_catalogo = 351049


select * from asignaciones
select * from hfdes