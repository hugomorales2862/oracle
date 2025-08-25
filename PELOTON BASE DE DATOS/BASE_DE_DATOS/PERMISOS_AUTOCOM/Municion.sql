/*ESTE ES EL SCRIPT PARA DAR PERMISOS DE MUNICION ELABORADO EL 13ENE2017*/
-----------------permisos de administrador--------------------

grant select on mper to "545624";
grant select on armas to "545624";
grant select on grados to "545624";
grant select on situaciones to "545624";
grant select on mdep to "545624";
grant select on morg to "545624";
grant select on lmun_lote_asig to "545624";
grant select on lmun_lote to "545624";
grant select on lmun_uso to "545624";
grant select on lmun_calibre to "545624";
grant select on lmun_tipo to "545624";
grant select on lmun_ent_sal to "545624";
grant select on lmun_conocimiento to "545624";
grant select on lmun_solicitud to "545624";
grant select on lmun_detalle_solicitud to "545624";
grant update on lmun_lote_asig to "545624";
grant update on lmun_lote to "545624";
grant update on lmun_uso to "545624";
grant update on lmun_calibre to "545624";
grant update on lmun_tipo to "545624";
grant update on lmun_ent_sal to "545624";
grant update on lmun_conocimiento to "545624";
grant update on lmun_solicitud to "545624";
grant update on lmun_detalle_solicitud to "545624";
grant insert on lmun_lote_asig to "545624";
grant insert on lmun_lote to "545624";
grant insert on lmun_uso to "545624";
grant insert on lmun_calibre to "545624";
grant insert on lmun_tipo to "545624";
grant insert on lmun_ent_sal to "545624";
grant insert on lmun_conocimiento to "545624";
grant insert on lmun_solicitud to "545624";
grant insert on lmun_detalle_solicitud to "545624";

--------------*permisos nivel comando*---------------------
grant select on mper to "559906";
grant select on armas to "559906";
grant select on grados to "559906";
grant select on situaciones to "559906";
grant select on mdep to "559906";
grant select on morg to "559906";
grant select on lmun_lote_asig to "559906";
grant select on lmun_lote to "559906";
grant select on lmun_uso to "559906";
grant select on lmun_calibre to "559906";
grant select on lmun_tipo to "559906";
grant select on lmun_ent_sal to "559906";
grant select on lmun_conocimiento to "559906";
grant select on lmun_solicitud to "559906";
grant select on lmun_detalle_solicitud to "559906";
grant insert on lmun_ent_sal to "559906";
grant insert on lmun_conocimiento to "559906";
grant insert on lmun_solicitud to "559906";
grant insert on lmun_detalle_solicitud to "559906";
grant update on lmun_conocimiento to "559906";
grant update on lmun_solicitud to "559906";
grant update on lmun_detalle_solicitud to "559906";



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

REVOKE UPDATE ON mdep FROM '547380';
REVOKE UPDATE ON mper FROM '547380';
REVOKE UPDATE ON morg FROM '547380';
REVOKE UPDATE ON armas FROM '547380';
REVOKE UPDATE ON grados FROM '547380';
Fin de la conversación de chat
Escribe un mensaje...

Elegir archivos
Elegir archivos
