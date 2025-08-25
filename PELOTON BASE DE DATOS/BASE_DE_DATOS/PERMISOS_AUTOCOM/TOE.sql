--==================NIVELES DE PERMISOS APLICACION DE CONTROL TOE====================
--===================================================================================
--======================= NIVEL COMANDO OFICIALES  ================

GRANT SELECT ON mdep TO '626093 ';
GRANT SELECT ON mper TO '626093 ';
GRANT SELECT ON morg TO '626093 ';
GRANT SELECT ON grados TO '626093 ';
GRANT SELECT ON control_toe TO '626093 ';
GRANT INSERT ON control_toe TO '626093 ';	
grant select on larm_tip to "626093";
grant select on larm_lot to "626093";
grant select on larm_sit to "626093";
grant select on lmarmas to "626093";
grant select on grados to "626093";
grant select on mper to "626093";
grant select on morg to "626093";
grant select on mdep to "626093";
grant select on	vmper to "626093";
--======================= NIVEL  EMDN OFICIALES ================

GRANT SELECT ON mdep TO '626093';
GRANT SELECT ON mper TO '626093';
GRANT SELECT ON morg TO '626093';
GRANT SELECT ON grados TO '626093';
GRANT SELECT ON control_toe TO '626093';
GRANT INSERT ON control_toe TO '626093';

--======================= EMDN ESPECIALISTAS================

GRANT SELECT ON mdep TO '626093';
GRANT SELECT ON mper TO '626093';
GRANT SELECT ON morg TO '626093';
GRANT SELECT ON grados TO '626093';
GRANT SELECT ON control_toe TO '626093';
GRANT INSERT ON control_toe TO '626093';

--=================FIN NIVELES PERMISOS APLICACION CONTROL TOE ========================


REVOKE SELECT ON control_toe FROM '626093 ';
REVOKE INSERT ON control_toe FROM '626093 ';


GUEZE37

es_codigo integer not null ,
    es_con_codigo integer not null ,
    es_con_dep_llave smallint not null ,
    es_lote_codigo integer not null ,
    es_uso_codigo integer not null ,
    es_tipo_codigo integer not null ,
    es_cal_codigo integer not null ,
    es_eslabonada integer not null ,
    es_carga integer not null ,
    es_cantidad integer not null ,
    es_status integer not null ,
    es_tipo integer not null ,
    es_situacion integer not null ,





load from mejora_conocimiento.txt
insert into lmun_conocimiento;

load from mejora_ent_sal.txt
insert into lmun_ent_sal;




g/grant /s//revoke /g   
g/to /s//from /g 
g/as "informix"; /s//;/g 
