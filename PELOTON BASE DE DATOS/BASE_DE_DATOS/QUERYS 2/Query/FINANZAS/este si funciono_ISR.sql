SELECT unique hfasig.hfa_catalogo, sum( hfasig.hfa_sueldo + hfasig.hfa_bon_bienal +  hfasig.hfa_prima_resp+
hfasig.hfa_prima_esp + hfasig.hfa_gastos_rep + hfasig.hfa_bon_emerg + hfasig.hfa_bono_ali +
hfasig.hfa_prima_ext + hfasig.hfa_dividendos + hfasig.hfa_bono_trans + hfasig.hfa_prima_ing + hfasig.hfa_prima_prof +
hfasig.hfa_complemento) as cant, 
(SELECT (sum(hfa_mensual)) FROM hfasigc WHERE hfasig.hfa_catalogo = hfasigc.hfa_catalogo
AND hfasig.hfa_fecha = hfasigc.hfa_fecha AND hfa_codigo not in (26 ) )AS asignaciones,
sum(hfasig.hfa_hos_mil + hfasig.hfa_ipm + hfasig.hfa_montepio) as CmmP
FROM hfasig
WHERE year(hfasig.hfa_fecha) = 2016
AND month(hfasig.hfa_fecha) = 02
AND hfa_clase not in (5,6)
AND ( hfasig.hfa_sueldo + hfasig.hfa_bon_bienal +  hfasig.hfa_prima_resp+
hfasig.hfa_prima_esp + hfasig.hfa_gastos_rep + hfasig.hfa_bon_emerg + hfasig.hfa_bono_ali +
hfasig.hfa_prima_ext + hfasig.hfa_dividendos + hfasig.hfa_bono_trans + hfasig.hfa_prima_ing + hfasig.hfa_prima_prof 
+ hfasig.hfa_complemento) > 2300
GROUP BY hfasig.hfa_catalogo, hfasig.hfa_sueldo,hfasig.hfa_bon_bienal, hfasig.hfa_prima_esp,hfasig.hfa_prima_esp,
hfasig.hfa_gastos_rep,hfasig.hfa_bon_emerg,hfasig.hfa_dividendos,hfasig.hfa_bono_trans,
hfasig.hfa_prima_ing,hfasig.hfa_prima_prof,hfasig.hfa_hos_mil,hfasig.hfa_ipm, asignaciones;