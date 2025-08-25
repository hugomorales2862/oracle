 SELECT sum(hfa_sueldo + hfa_bon_bienal + hfa_bon_emerg +
            hfa_gastos_rep + hfa_prima_resp + hfa_prima_prof +
            hfa_prima_ing + hfa_bono_14 + hfa_aguinaldo +
            hfa_prima_esp + hfa_bono_vac + hfa_prima_ext +
            hfa_bono_trans + hfa_complemento + hfa_bono_ali)
    FROM hfasig
   WHERE hfa_fecha between "2001/04/01" and "2001/04/28"
     AND hfa_corrida = "R"
     AND hfa_depen = 340;

 SELECT sum(hfa_mensual)
    FROM hfasigc hc, hfasig ha
   WHERE ha.hfa_fecha between "2001/04/01" and "2001/04/28"
     AND hc.hfa_fecha between "2001/04/01" and "2001/04/28"
     AND ha.hfa_corrida = "R"
     AND hc.hfa_corrida = "R"
     AND ha.hfa_depen = 340
     AND ha.hfa_catalogo = hc.hfa_catalogo;

 SELECT SUM(hft_sueldo + hft_bon_emerg + hft_representacion +
            hft_responsabilida + hft_prima_prof + hft_bono_14 +
            hft_aguinaldo + hft_alimentacion + hft_bono_662000 +
            hft_reenganche)
    FROM hftro
   WHERE hft_fecha between "2001/04/01" and "2001/04/28"
     AND hft_catalogo > 0
     AND hft_corrida = "R"
     AND hft_depen = 340
