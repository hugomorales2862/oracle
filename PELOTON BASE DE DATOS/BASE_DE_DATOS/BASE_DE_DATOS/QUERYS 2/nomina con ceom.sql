SELECT hfa_grupo, hfa_depen, hfa_prog, hfa_fecha, hfa_plaza, hfa_ord_gral, meom_desc_ct,
    hfa_bienal, hfa_ceom, hfa_sueldo,hfa_bon_bienal,hfa_prima_esp,
    hfa_gastos_rep, hfa_bono_trans, hfa_prima_ing, hfa_prima_prof, 
    hfa_prima_resp,hfa_ipm,hfa_montepio,hfa_fianza, 
    hfa_hos_mil, hfa_club_ofi, hfa_club_esp,
    hfa_liquido, hfa_unidad, hfa_hrs_trab, hfa_catalogo, hfa_grado, 
    hfa_clase, gra_desc_md, per_nom1, per_nom2, per_ape1, per_ape2, 
    hfa_desc_empleo, hfa_prima_ext,hfa_complemento,hfa_bono_ali
    FROM hfasig, grados, mper, morg, meom
    WHERE hfa_catalogo = per_catalogo 
    AND org_plaza = per_plaza
    and hfa_ceom = meom_ceom
    AND org_ceom = meom_ceom
    AND per_grado = gra_codigo
    AND hfa_fecha = "2016/12/12"
    AND hfa_corrida = "R"
    AND hfa_clase IN(1,2,3,4,5)
    AND hfa_depen = 2010
-- --   AND hfa_depen IN (2070, 2240)
-- -- and hfa_grupo in (2) ### para imprimir por grupos
  AND hfa_plaza not IN(6899139,6899140, 6909949, 6899149, 6886378, 6886384,7739220,7768996,7767726)
  --AND hfa_plaza IN(6899139,6899140, 6909949, 6899149, 6886378, 6886384,7739220,7768996,7767726)
GROUP BY hfa_grupo,hfa_depen,hfa_unidad,hfa_clase,hfa_grado,per_nom1,per_nom2,per_ape1,per_ape2,
    hfa_prog,hfa_fecha,hfa_plaza, hfa_ord_gral,hfa_bienal,hfa_ceom,hfa_sueldo,hfa_bon_bienal,
    hfa_prima_esp,hfa_gastos_rep,hfa_bono_trans,hfa_prima_ing,hfa_prima_prof,hfa_prima_resp,hfa_ipm,
    hfa_montepio,hfa_fianza,hfa_hos_mil,hfa_club_ofi,hfa_club_esp,hfa_liquido,hfa_hrs_trab,hfa_catalogo, 
    hfa_grado,gra_desc_md,hfa_desc_empleo,hfa_clase,hfa_prima_ext,hfa_complemento,hfa_bono_ali, meom_desc_ct
    ORDER BY hfa_grupo,hfa_depen,hfa_unidad,hfa_clase,hfa_grado desc,per_nom1,per_nom2,per_ape1,per_ape2