SELECT * FROM rnb_embarcacion,rnb_propietario,rnb_tipo_emb,rnb_marca,rnb_casco,rnb_matricula
WHERE emb_propietario = pro_nit
AND emb_tipo = tip_codigo
AND emb_marca = mar_codigo
AND emb_mat_casco = cas_codigo
AND emb_matricula = mat_codigo
AND mat_codigo = "CCP-3748-2015"