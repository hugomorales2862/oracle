select * from hfasig 
where hfa_Catalogo = 571406
AND year(hfa_fecha) =2017
and month(hfa_Fecha) = 05

SELECT * FROM DESCUENTOS
//TABLA DE LA F_HFAG
select  * from f_hfag 
//actualizar
update f_hfag set fag_monto = 59.77
where fag_catalogo = 571406
and fag_codigo = 45
//insert
--insert into f_hfag values(625640,45,52.1057)

//ELIMINAR Y AGREGAR DESCUENTOS DE FAG
--DELETE  FROM  f_hfag where fag_catalogo = 595693
SELECT * FROM f_

 
SELECT * FROM hfdes
where hfd_catalogo = 625640
and hfd_codigo = 45
 AND year(hfd_fecha) =2017
and month(hfd_Fecha) = 05
select * from dfdes
--update hfdes set hfd_mensual = 59.77
where Dfd_catalogo = 571406
AND year(hfd_fecha) =2017
and month(hfd_Fecha) = 05
--and hfd_codigo = 45
// roca 571406

//pazas 595693