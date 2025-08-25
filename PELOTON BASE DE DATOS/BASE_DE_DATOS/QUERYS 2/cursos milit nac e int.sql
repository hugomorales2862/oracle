SELECT gra_desc_ct, cur_desc_lg, cur_fec_inicio, cur_fec_fin,cur_catalogo,cur_curso,
	pai_desc_lg, esc_desc_md, cur_punteo, cur_puesto, cur_tipo,cur_docto_auto
	FROM grados, cursos, dcur, paises, escuelas
	WHERE cur_grado = gra_codigo
	AND cur_codigo = cur_curso
	AND cur_pais = pai_codigo
	AND cur_escuela = esc_codigo
	AND cur_tipo = 'M'
	AND  cur_catalogo = 513689
	ORDER BY cur_fec_inicio DESC	


SELECT gra_desc_ct, cap_fec_inicio, cap_fec_fin, cap_clasifica, cap_catalogo, cap_curso, 
	pai_desc_lg, cap_punteo, cap_puesto, cap_tipo, cap_curso, cap_tipo, cap_solicitud
	FROM grados, pdcapacitacion, paises
	WHERE cap_grado = gra_codigo
	AND  cap_pais = pai_codigo
    AND  cap_catalogo = 513689
	AND  cap_tipo = 'M'
	AND  cap_clasifica = 'P'
	ORDER BY cap_fec_inicio DESC