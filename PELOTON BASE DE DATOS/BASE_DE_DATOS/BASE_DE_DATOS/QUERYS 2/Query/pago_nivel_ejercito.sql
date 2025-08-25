SELECT
per_catalogo, (per_nom1 || per_nom2 ||  per_ape1 || per_ape2) as nombre,(dep_desc_md) AS comando,
per_desc_empleo,
hfa_plaza,
hfa_hrs_trab,
hfa_ord_gral,
hfa_bienal,
hfa_sueldo,
hfa_bon_bienal,
hfa_prima_resp,
hfa_prima_esp,
hfa_gastos_rep,
hfa_BON_EMERG,
HFA_DIVIDENDOS,
HFA_AGUINALDO,
hfa_bono_vac,
hfa_bono_14,hfa_bono_trans,hfa_prima_ing,hfa_prima_prof,hfa_ipm,hfa_montepio,
hfa_fianza,hfa_hos_mil,hfa_club_ofi,hfa_club_esp,hfa_liquido,hfa_corrida,
hfa_unidad,hfa_complemento,hfa_cuenta,hfa_prima_ext,hfa_bono_ali, hfa_fecha,hfa_depen
FROM  hfasig, mper, mdep
WHERE hfa_catalogo = per_catalogo
AND hfa_depen = dep_llave
AND hfa_catalogo = 312777
AND year(hfa_fecha) = 2016
AND MONTH(hfa_fecha) =12
ORDER BY hfa_depen,per_catalogo
