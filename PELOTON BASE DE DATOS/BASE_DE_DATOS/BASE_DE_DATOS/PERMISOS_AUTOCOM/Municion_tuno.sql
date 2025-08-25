/*ESTE ES EL SCRIPT PARA DAR PERMISOS DE MUNICION ELABORADO EL 13ENE2017*/
-----------------permisos de administrador--------------------

grant select on mper to "catalogo";
grant select on armas to "catalogo";
grant select on grados to "catalogo";
grant select on situaciones to "catalogo";
grant select on mdep to "catalogo";
grant select on morg to "catalogo";
grant select on lmun_lote_asig to "catalogo";
grant select on lmun_lote to "catalogo";
grant select on lmun_uso to "catalogo";
grant select on lmun_calibre to "catalogo";
grant select on lmun_tipo to "catalogo";
grant select on lmun_ent_sal to "catalogo";
grant select on lmun_conocimiento to "catalogo";
grant select on lmun_solicitud to "catalogo";
grant select on lmun_detalle_solicitud to "catalogo";
grant update on lmun_lote_asig to "catalogo";
grant update on lmun_lote to "catalogo";
grant update on lmun_uso to "catalogo";
grant update on lmun_calibre to "catalogo";
grant update on lmun_tipo to "catalogo";
grant update on lmun_ent_sal to "catalogo";
grant update on lmun_conocimiento to "catalogo";
grant update on lmun_solicitud to "catalogo";
grant update on lmun_detalle_solicitud to "catalogo";
grant insert on lmun_lote_asig to "catalogo";
grant insert on lmun_lote to "catalogo";
grant insert on lmun_uso to "catalogo";
grant insert on lmun_calibre to "catalogo";
grant insert on lmun_tipo to "catalogo";
grant insert on lmun_ent_sal to "catalogo";
grant insert on lmun_conocimiento to "catalogo";
grant insert on lmun_solicitud to "catalogo";
grant insert on lmun_detalle_solicitud to "catalogo";
grant select on query_mun_es_vista_pos to "catalogo";
grant select on query_mun_es_vista_neg to "catalogo";
grant select on lmun_entrada_plaza_final to "catalogo";
grant select on lmun_disparado_plaza_final to "catalogo";
grant select on lmun_salida_plaza_final to "catalogo";
grant select on lmun_perdido_plaza_final to "catalogo";
grant select on lmun_extraviado_plaza_final to "catalogo";
grant select on lmun_robado_plaza_final to "catalogo";
grant select on lmun_projudi_plaza_final to "catalogo";
grant select on lmun_total_dep1_final to "catalogo";
grant select on lmun_total_dep2_final to "catalogo";

--------------*permisos nivel comando*---------------------
---Pendiente para dar en las vistas 570465 , catalogo, catalogo 

grant select on menuautocom to "catalogo";
grant select on mper to "catalogo";
grant select on armas to "catalogo";
grant select on grados to "catalogo";
grant select on situaciones to "catalogo";
grant select on mdep to "catalogo";
grant select on morg to "catalogo";
grant select on lmun_lote_asig to "catalogo";
grant select on lmun_lote to "catalogo";
grant select on lmun_uso to "catalogo";
grant select on lmun_calibre to "catalogo";
grant select on lmun_tipo to "catalogo";
grant select on lmun_ent_sal to "catalogo";
grant select on lmun_conocimiento to "catalogo";
grant select on lmun_solicitud to "catalogo";
grant select on lmun_detalle_solicitud to "catalogo";
grant insert on lmun_ent_sal to "catalogo";
grant insert on lmun_conocimiento to "catalogo";
grant insert on lmun_solicitud to "catalogo";
grant insert on lmun_detalle_solicitud to "catalogo";
grant update on lmun_conocimiento to "catalogo";
grant update on lmun_solicitud to "catalogo";
grant update on lmun_detalle_solicitud to "catalogo";
--grant select on query_mun_es_vista_pos to "catalogo";
--grant select on query_mun_es_vista_neg to "catalogo";
--grant select on lmun_entrada_plaza_final to "catalogo";
--grant select on lmun_disparado_plaza_final to "catalogo";
--grant select on lmun_salida_plaza_final to "catalogo";
--grant select on lmun_perdido_plaza_final to "catalogo";
--grant select on lmun_extraviado_plaza_final to "catalogo";
--grant select on lmun_robado_plaza_final to "catalogo";
--grant select on lmun_projudi_plaza_final to "catalogo";
--grant select on lmun_total_dep1_final to "catalogo";
--grant select on lmun_total_dep2_final to "catalogo";



delete from  lmun_ent_sal
where es_con_dep_llave = '2450';

delete from lmun_conocimiento 
where con_dep_llave = '2450';



select * from  lmun_conocimiento
where con_dep_llave = '2450';

--------------*permisos nivel EMDN*---------------------
grant select on mper to "547380";
grant select on armas to "547380";
grant select on grados to "547380";
grant select on situaciones to "547380";
grant select on mdep to "547380";
grant select on morg to "547380";
grant select on lmun_lote_asig to "547380";
grant select on lmun_lote to "547380";
grant update on lmun_lote_asig to "547380";
grant update on lmun_lote to "547380";
grant insert on lmun_lote_asig to "547380";
grant insert on lmun_lote to "547380";
grant select on lmun_uso to "547380";
grant select on lmun_calibre to "547380";
grant select on lmun_tipo to "547380";
grant insert on lmun_calibre to "547380";
grant select on lmun_ent_sal to "547380";
grant select on lmun_conocimiento to "547380";
grant select on lmun_solicitud to "547380";
grant select on lmun_detalle_solicitud to "547380";
grant update on lmun_ent_sal to "547380";
grant update on lmun_conocimiento to "547380";
grant update on lmun_solicitud to "547380";
grant update on lmun_detalle_solicitud to "547380";
grant insert on lmun_ent_sal to "547380";
grant insert on lmun_conocimiento to "547380";
grant insert on lmun_solicitud to "547380";
grant insert on lmun_detalle_solicitud to "547380";
grant select on query_mun_es_vista_pos to "catalogo";
grant select on query_mun_es_vista_neg to "catalogo";
grant select on lmun_entrada_plaza_final to "catalogo";
grant select on lmun_disparado_plaza_final to "catalogo";
grant select on lmun_salida_plaza_final to "catalogo";
grant select on lmun_perdido_plaza_final to "catalogo";
grant select on lmun_extraviado_plaza_final to "catalogo";
grant select on lmun_robado_plaza_final to "catalogo";
grant select on lmun_projudi_plaza_final to "catalogo";
grant select on lmun_total_dep1_final to "catalogo";
grant select on lmun_total_dep2_final to "catalogo";

-----------------permisos de CAL--------------------

grant select on mper to "547380";
grant select on armas to "547380";
grant select on grados to "547380";
grant select on situaciones to "547380";
grant select on mdep to "547380";
grant select on morg to "547380";
grant select on lmun_lote_asig to "547380";
grant select on lmun_lote to "547380";
grant select on lmun_uso to "547380";
grant select on lmun_calibre to "547380";
grant select on lmun_tipo to "547380";
grant select on lmun_ent_sal to "547380";
grant select on lmun_conocimiento to "547380";
grant select on lmun_solicitud to "547380";
grant select on lmun_detalle_solicitud to "547380";
grant update on lmun_lote_asig to "547380";
grant update on lmun_lote to "547380";
grant update on lmun_ent_sal to "547380";
grant update on lmun_conocimiento to "547380";
grant update on lmun_solicitud to "547380";
grant update on lmun_detalle_solicitud to "547380";
grant insert on lmun_lote_asig to "547380";
grant insert on lmun_lote to "547380";
grant insert on lmun_calibre to "547380";
grant insert on lmun_ent_sal to "547380";
grant insert on lmun_conocimiento to "547380";
grant insert on lmun_solicitud to "547380";
grant insert on lmun_detalle_solicitud to "547380";
grant select on query_mun_es_vista_pos to "catalogo";
grant select on query_mun_es_vista_neg to "catalogo";
grant select on lmun_entrada_plaza_final to "catalogo";
grant select on lmun_disparado_plaza_final to "catalogo";
grant select on lmun_salida_plaza_final to "catalogo";
grant select on lmun_perdido_plaza_final to "catalogo";
grant select on lmun_extraviado_plaza_final to "catalogo";
grant select on lmun_robado_plaza_final to "catalogo";
grant select on lmun_projudi_plaza_final to "catalogo";
grant select on lmun_total_dep1_final to "catalogo";
grant select on lmun_total_dep2_final to "catalogo";

-----------------permisos de ALMACEN GENERAL--------------------

grant select on mper to "547380";
grant select on armas to "547380";
grant select on grados to "547380";
grant select on situaciones to "547380";
grant select on mdep to "547380";
grant select on morg to "547380";
grant select on lmun_lote_asig to "547380";
grant select on lmun_lote to "547380";
grant select on lmun_uso to "547380";
grant select on lmun_calibre to "547380";
grant select on lmun_tipo to "547380";
grant select on lmun_ent_sal to "547380";
grant select on lmun_conocimiento to "547380";
grant select on lmun_solicitud to "547380";
grant select on lmun_detalle_solicitud to "547380";
grant insert on lmun_ent_sal to "547380";
grant insert on lmun_conocimiento to "547380";
grant insert on lmun_solicitud to "547380";
grant insert on lmun_detalle_solicitud to "547380";
grant update on lmun_conocimiento to "547380";
grant update on lmun_solicitud to "547380";
grant update on lmun_detalle_solicitud to "547380";	
grant select on query_mun_es_vista_pos to "catalogo";
grant select on query_mun_es_vista_neg to "catalogo";
grant select on lmun_entrada_plaza_final to "catalogo";
grant select on lmun_disparado_plaza_final to "catalogo";
grant select on lmun_salida_plaza_final to "catalogo";
grant select on lmun_perdido_plaza_final to "catalogo";
grant select on lmun_extraviado_plaza_final to "catalogo";
grant select on lmun_robado_plaza_final to "catalogo";
grant select on lmun_projudi_plaza_final to "catalogo";
grant select on lmun_total_dep1_final to "catalogo";
grant select on lmun_total_dep2_final to "catalogo";




REVOKE UPDATE ON mdep FROM '547380';
REVOKE UPDATE ON mper FROM '547380';
REVOKE UPDATE ON morg FROM '547380';
REVOKE UPDATE ON armas FROM '547380';
REVOKE UPDATE ON grados FROM '547380';
Fin de la conversación de chat
Escribe un mensaje...

Elegir archivos
Elegir archivos


9903"	1950-12-12	"	,	"	F	"	,	 	,	"		"	,	"	 	"	,	0	,	"		"	,	"	10 AV B 26-35 Z. 7 COL. BETHANIA, GUATEMALA, GUATEMALA	"	,	0	);
