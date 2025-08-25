select * from descuentos
--where hfa_Catalogo = 510321
--and year(hfa_fecha) = 2017
--and month(hfa_fecha) = 04

select * from hfdes
select * from dfdes
--update hfdes set hfd_mensual = 59.77
where hfd_catalogo = 571406
AND year(hfd_fecha) =2017
and month(hfd_Fecha) = 05
--and hfd_codigo = 45


select * from dfdes
where dfd_catalogo = 510321
dfd_catalogo

--update dfdes SET dfd_mensual = 25
                WHERE dfd_catalogo = 510321
                AND  dfd_codigo = 24
                and  dfd_nu_reg = 1


--update dfdes SET dfd_nu_reg = 0
                WHERE dfd_catalogo = 510321
                AND  dfd_codigo = 24
                and  dfd_nu_reg = 1
                AND  dfd_mensual = 25


select * from dfdes_tro

--update dfdes SET dfd_mensual = 25
                WHERE dfd_catalogo = 510321
                AND  dfd_codigo = 24
                and  dfd_nu_reg = 1
//////////////////////////
                19 de mayo del 2017 ///////////////////
                select * from dfdes
--update hfdes set hfd_mensual = 59.77
where hfd_catalogo = 571406
AND year(hfd_fecha) =2017
and month(hfd_Fecha) = 05
--and hfd_codigo = 45


(sueldo+bienal+prima rep) * 0.08  = IPM - EL ACTUAL




 IPM  755.412

////////////////////////////////////castañeda vargas
 select * from hfasig 
where hfa_Catalogo = 474403
and year(hfa_fecha) = 2017
and month(hfa_fecha) = 05

--UPDATE hfasig set
hfa_prima_resp = (hfa_prima_resp+750),
hfa_liquido = ( hfa_liquido +750),
hfa_ipm = (hfa_ipm + 120.002)
where hfa_Catalogo = 474403
and year(hfa_fecha) = 2017
and month(hfa_fecha) = 05




////////////////////////////////////barrientos giron


--UPDATE hfasig set
hfa_sueldo = (16593.53),
hfa_liquido = ( 20789.56),
hfa_hos_mil= (663.74),
hfa_ipm = (1193.79)
where hfa_Catalogo = 265678
and year(hfa_fecha) = 2017
and month(hfa_fecha) = 05

///////////////////////////////////esclante rodriguez

--UPDATE hfasig set 
hfa_prima_resp = (hfa_prima_resp+175),
hfa_liquido = ( hfa_liquido +175),
hfa_ipm = (hfa_ipm+14)
where hfa_Catalogo = 572057
and year(hfa_fecha) = 2017
and month(hfa_fecha) = 05

======================

-- INSERT INTO dfasig VALUES ( 642181, 5, "2017/05/19", 1200);
641233
PRIMA RESP
 --INSERT INTO hfasigc VALUES (642181, "2017/05/19", 5, 1, 0, 1200, 0, "R", 0);
1200
--update hfasigc set hfa_fecha = "2017/05/18"
where hfa_catalogo = 642181
and year(hfa_fecha) = 2017
and month(hfa_fecha) = 05
and hfa_codigo = 5



1 y el
mejia giron

2070
2240

=====================
select * from dfdes
where dfd_Catalogo = 571406
update dfdes SET dfd_mensual = 59.77,
                 dfd_ult_act = "2017/06/11"
                WHERE dfd_catalogo = 571406
                AND  dfd_codigo = 45
                and  dfd_nu_reg = 1