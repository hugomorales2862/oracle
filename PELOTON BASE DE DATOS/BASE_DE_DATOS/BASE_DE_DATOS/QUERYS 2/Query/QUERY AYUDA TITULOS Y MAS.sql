SEXO MASCULINO OFICIALES
SELECT COUNT(*) as total FROM armas, grados, morg, mdep, mper,OUTER tiempos 
				WHERE per_arma = arm_codigo
				AND per_grado = gra_codigo
				AND per_plaza = org_plaza  
				AND org_dependencia = dep_llave 
				AND per_catalogo = t_catalogo
				AND org_situacion in ("A", "11", "T0")
				AND gra_clase in (1)
				AND per_sexo = "M"
				AND t_alta < "2016-01-31"
	- - - - - - - - - - -  sacar por tipo de oficialidad - - - - - 
	SELECT COUNT(*) as total FROM armas, grados, morg, mdep, mper, OUTER tiempos 
	WHERE per_arma = arm_codigo
	AND per_grado = gra_codigo
	AND per_plaza = org_plaza  
	AND org_dependencia = dep_llave 
	AND per_catalogo = t_catalogo
	AND org_situacion in ("A", "11", "T0")
    --AND gra_codigo in (1,4,5,6,10,11,18,19,23,24,28,29,30,31,35)//ESPECIALISTAS
--AND gra_codigo in (34)//SARGENTO MAYORES
AND gra_clase in (01)//OF ESCUELA
--AND gra_clase in (02)//RESERVAS
--AND gra_clase in (03)//ASIMILADOS
--AND gra_clase in (04)//ESPECIALISTA
--    AND gra_clase in (06)//TROPA
	AND per_sexo = "F"
--AND t_alta < "2016-01-31"   
--AND t_alta < "2016-02-29"   
--AND t_alta < "2016-03-31"
--AND t_alta < "2016-04-30"
--AND t_alta < "2016-05-31"
--AND t_alta < "2016-06-30" 
==========CURSOS MILITARES DE FORMACION ===========
SELECT gra_desc_ct, cap_fec_inicio, cap_fec_fin, cap_clasifica, cap_catalogo, cap_curso,
pai_desc_lg, cap_punteo, cap_puesto, cap_tipo, cap_curso, cap_tipo, cap_solicitud
FROM grados, pdcapacitacion, paises
WHERE cap_grado = gra_codigo
AND cap_pais = pai_codigo
--AND  cap_catalogo = 589127
AND  cap_tipo = 'C'
AND  cap_clasifica <> 'I'
ORDER BY cap_fec_inicio DESC
-----------------------------------
	SELECT COUNT(*) as total 
	 FROM grados, pdcapacitacion, paises
	 WHERE cap_grado = gra_codigo
	 AND cap_pais = pai_codigo
	 AND  cap_tipo = 'C'
	 AND  cap_clasifica <> 'I'
	 AND  cap_catalogo = 589127
	
==========TITULOS UNIVERSIDATIOS===========



	SELECT COUNT(*) as total
	FROM grados, pdcapacitacion, paises
	WHERE cap_grado = gra_codigo

	AND cap_pais = pai_codigo
	AND  cap_tipo = 'U'
	AND  cap_catalogo = 589127

==========TITULOS UNIVERSITARIOS DE OFICIALES========
 
	SELECT COUNT(*) as total
	FROM mper, grados, morg, pdcapacitacion 
	WHERE per_grado = gra_codigo
	AND per_plaza = org_plaza  
--	AND org_grado = gra_codigo 
	AND  per_catalogo = cap_catalogo 
	AND org_situacion in ("A", "11", "T0")
	AND gra_clase in (1)
	AND  cap_tipo = 'U'
	AND  cap_catalogo = 589127	
	AND per_fec_nomb < "2016-01-31" 
- - - - - - - - -  ESTE SI - - - - - - -
	SELECT COUNT(*) as total
	FROM mper, grados, morg, pdcapacitacion 
	WHERE per_grado = gra_codigo
	AND per_plaza = org_plaza  
--	AND org_grado = gra_codigo 
	AND  per_catalogo = cap_catalogo 
	AND org_situacion in ("A", "11", "T0")
	AND gra_clase in (6)
	AND  cap_tipo = 'U'
	--AND  cap_catalogo = 589127	
--AND per_fec_nomb < "2016-01-31"
--AND per_fec_nomb < "2016-02-29"
--AND per_fec_nomb < "2016-03-31"
--AND per_fec_nomb < "2016-04-30"
--AND per_fec_nomb < "2016-05-31"
--AND per_fec_nomb < "2016-06-30"