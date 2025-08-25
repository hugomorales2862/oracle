SELECT unique hfasig.hfa_catalogo, sum(( hfasig.hfa_sueldo + hfasig.hfa_bon_bienal +  hfasig.hfa_prima_resp+
hfasig.hfa_prima_esp + hfasig.hfa_gastos_rep + hfasig.hfa_bon_emerg + hfasig.hfa_bono_ali +
hfasig.hfa_prima_ext + hfasig.hfa_dividendos + hfasig.hfa_bono_trans + hfasig.hfa_prima_ing + hfasig.hfa_prima_prof)  + 
(SELECT (sum(hfasigc.hfa_mensual)-250) FROM hfasigc WHERE hfasig.hfa_catalogo = hfasigc.hfa_catalogo
AND hfasig.hfa_fecha = hfasigc.hfa_fecha)AS asignaciones,
sum(hfasig.hfa_hos_mil + hfasig.hfa_ipm + hfasig.hfa_montepio)) as CmmP 
FROM hfasig
WHERE year(hfasig.hfa_fecha) = 2016
AND month(hfasig.hfa_fecha) = 01
AND ( hfasig.hfa_sueldo + hfasig.hfa_bon_bienal +  hfasig.hfa_prima_resp+
hfasig.hfa_prima_esp + hfasig.hfa_gastos_rep + hfasig.hfa_bon_emerg + hfasig.hfa_bono_ali +
hfasig.hfa_prima_ext + hfasig.hfa_dividendos + hfasig.hfa_bono_trans + hfasig.hfa_prima_ing + hfasig.hfa_prima_prof +
(SELECT (sum(hfasigc.hfa_mensual)-250) FROM hfasigc WHERE hfasig.hfa_catalogo = hfasigc.hfa_catalogo
AND hfasig.hfa_fecha = hfasigc.hfa_fecha)) >3500
GROUP BY hfasig.hfa_catalogo, hfasig.hfa_sueldo,hfasig.hfa_bon_bienal, hfasig.hfa_prima_esp,hfasig.hfa_prima_esp,
hfasig.hfa_gastos_rep,hfasig.hfa_bon_emerg,hfasig.hfa_dividendos,hfasig.hfa_bono_trans,
hfasig.hfa_prima_ing,hfasig.hfa_prima_prof,hfasig.hfa_hos_mil,hfasig.hfa_ipm, asignaciones;