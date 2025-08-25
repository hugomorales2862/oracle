select * from dfdes
--where dfd_catalogo = 625640
where dfd_codigo = 45

///625640

//625640   LOAD FROM hospitalfag.txt INSERT INTO dfdes
SELECT * FROM hfasig
where hfa_catalogo = 625640
and year(hfa_fecha) = 2017
and month(hfa_fecha) = 04
---52.1057 no tenia 
59.7683 antes  11.00
--update dfdes SET dfd_mensual = 59.7683
WHERE dfd_catalogo = 571406
AND  dfd_codigo = 45
and  dfd_nu_reg = 1