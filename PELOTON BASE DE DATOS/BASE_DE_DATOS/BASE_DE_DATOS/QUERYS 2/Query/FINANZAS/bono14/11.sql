
  --SELECT hfa_catalogo, SUM(hfa_sueldo + hfa_bon_bienal + hfa_prima_resp)
  SELECT SUM(hfa_sueldo + hfa_bon_bienal + hfa_prima_resp)
  FROM   hfasig, mper
  WHERE  hfa_fecha BETWEEN "2008/11/01" AND "2008/11/30"
  AND    hfa_catalogo = per_catalogo AND per_situacion = '11'
  AND    hfa_corrida = "R"
  AND    hfa_catalogo = 455519--508200
--  GROUP BY 1
;
  --SELECT hfa_catalogo, SUM(hfa_sueldo + hfa_bon_bienal + hfa_prima_resp)/ 12
  SELECT SUM(hfa_sueldo + hfa_bon_bienal + hfa_prima_resp)/ 12
  FROM   hfasig, mper
  WHERE  hfa_fecha BETWEEN "2007/12/01" AND "2008/11/30"
  AND    hfa_catalogo = per_catalogo AND per_situacion = '11'
  AND    hfa_corrida = "R"
  AND    hfa_catalogo = 455519--508200
--  GROUP BY 1
;
{
  SELECT SUM(hft_sueldo)
  FROM   hftro, mper
  WHERE  hft_fecha BETWEEN "2008/06/01" AND "2008/06/30"
  AND hft_catalogo = per_catalogo AND per_situacion = 'T0'
  AND hft_catalogo > 1000000
  AND hft_corrida = "R"
}
  SELECT SUM(b14_cantidad) FROM bono14
  WHERE  b14_catalogo > 1000000

;
  SELECT SUM(hft_sueldo) / 12
  FROM   hftro, mper
  WHERE  hft_fecha BETWEEN "2007/07/01" AND "2008/06/30"
  AND hft_catalogo = per_catalogo AND per_situacion = 'T0'
  AND hft_catalogo > 1000000
  AND hft_corrida = "R"
