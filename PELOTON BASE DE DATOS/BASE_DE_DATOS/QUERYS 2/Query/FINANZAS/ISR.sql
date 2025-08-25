SELECT unique hfasig.hfa_catalogo, sum( hfasig.hfa_sueldo + hfasig.hfa_bon_bienal +  
hfasig.hfa_prima_resp + hfasig.hfa_prima_esp + hfasig.hfa_gastos_rep + hfasig.hfa_bon_emerg + 
hfasig.hfa_dividendos + hfasig.hfa_bono_trans + hfasig.hfa_prima_ing + hfasig.hfa_prima_prof) as cant, 
sum(hfasig.hfa_hos_mil + hfasig.hfa_ipm + hfasig.hfa_montepio) as CmmP,
(SELECT sum(dfa_cantidad) FROM dfasig WHERE hfasig.hfa_catalogo = dfasig.dfa_catalogo
AND hfasig.hfa_fecha = dfasig.dfa_fecha_ini	)AS tot2
FROM hfasig
WHERE (hfasig.hfa_sueldo + hfasig.hfa_bon_bienal + hfasig.hfa_prima_resp + 
hfasig.hfa_prima_esp + hfasig.hfa_gastos_rep + hfasig.hfa_bon_emerg + 
hfasig.hfa_dividendos + hfasig.hfa_bono_trans + hfasig.hfa_prima_ing +
hfasig.hfa_prima_prof) > 3000
--and hfasig.hfa_catalogo = 538488
AND year(hfasig.hfa_fecha) = 2017
AND month(hfasig.hfa_fecha) = 02
GROUP BY hfasig.hfa_catalogo, hfasig.hfa_sueldo,hfasig.hfa_bon_bienal, hfasig.hfa_prima_esp,
hfasig.hfa_gastos_rep,hfasig.hfa_bon_emerg,hfasig.hfa_dividendos,hfasig.hfa_bono_trans,
hfasig.hfa_prima_ing,hfasig.hfa_prima_prof,hfasig.hfa_hos_mil,hfasig.hfa_ipm, tot2;