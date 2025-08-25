CREATE TABLE eva_pdf (
    evapdf_id SERIAL NOT NULL,
    evapdf_evaluacion INTEGER,
    evapdf_catalogo INTEGER,
    evapdf_ruta VARCHAR(100),
    evapdf_situacion INTEGER,
PRIMARY KEY(evapdf_id), 
FOREIGN KEY evapdf_catalogo REFERENCES mper(per_catalogo),
FOREIGN KEY evapdf_evaluacion REFERENCES eva_evaluacion(eva_id)
);

<===============================================================================================================================>
<==================================== CREACION DE TABLA DE AUDITORIA  ===========================================================>
<==================================== ==========================================================================================>

create table aud_eva_pdf 
  (
     evapdf_id INTEGER,
     evapdf_evaluacion INTEGER,
     evapdf_catalogo INTEGER,
     evapdf_ruta VARCHAR(100),
     evapdf_situacion INTEGER,
     desp_evapdf_id INTEGER,
     desp_evapdf_evaluacion INTEGER,
     desp_evapdf_catalogo INTEGER,
     desp_evapdf_ruta VARCHAR(100),
     desp_evapdf_situacion INTEGER,
    accion char (1) not null,
	usuario char (12) not null,
	hora datetime year to minute not null
    );

<===============================================================================================================================>
<==================================== CREACION DE TRIGGER DE INSERT  ===========================================================>
<==================================== ==========================================================================================>


CREATE TRIGGER INS_eva_pdf INSERT ON eva_pdf
REFERENCING NEW AS LUEGO 
FOR EACH ROW 
( 
	INSERT INTO aud_eva_pdf
	(
	   evapdf_id,
       evapdf_evaluacion,
       evapdf_catalogo,
       evapdf_ruta,
       evapdf_situacion,
       desp_evapdf_id,
       desp_evapdf_evaluacion,
       desp_evapdf_catalogo,
       desp_evapdf_ruta,
       desp_evapdf_situacion,
      accion,
	  usuario,
	  hora)
VALUES (NULL, '', '', '', '', 
    luego.evapdf_id,
    luego.evapdf_evaluacion,
    luego.evapdf_catalogo,
    luego.evapdf_ruta,
    luego.evapdf_situacion,
    luego.nov_situacion,
   'I', user, CURRENT YEAR TO FRACTION (3)
   )
);

<===============================================================================================================================>
<==================================== CREACION DE TRIGGER DE DELETE  ===========================================================>
<==================================== ==========================================================================================>

CREATE TRIGGER DEL_eva_pdf DELETE ON eva_pdf
REFERENCING OLD AS ANTES 
FOR EACH ROW 
( 
	INSERT INTO aud_eva_pdf
	(
	   evapdf_id,
       evapdf_evaluacion,
       evapdf_catalogo,
       evapdf_ruta,
       evapdf_situacion,
       desp_evapdf_id,
       desp_evapdf_evaluacion,
       desp_evapdf_catalogo,
       desp_evapdf_ruta,
       desp_evapdf_situacion,
      accion,
	  usuario,
	  hora)
VALUES (
    antes.evapdf_id,
    antes.evapdf_evaluacion,
    antes.evapdf_catalogo,
    antes.evapdf_ruta,
    antes.evapdf_situacion,
   NULL, '', '', '', '', 
   'D', user, CURRENT YEAR TO FRACTION (3)
   )
);

<===============================================================================================================================>
<==================================== CREACION DE TRIGGER DE UPDATE   ===========================================================>
<==================================== ==========================================================================================>


CREATE TRIGGER ACT_eva_pdf UPDATE ON eva_pdf
REFERENCING OLD AS ANTES NEW AS LUEGO
FOR EACH ROW
(	
	INSERT INTO aud_eva_pdf
	(
	   evapdf_id,
       evapdf_evaluacion,
       evapdf_catalogo,
       evapdf_ruta,
       evapdf_situacion,
       desp_evapdf_id,
       desp_evapdf_evaluacion,
       desp_evapdf_catalogo,
       desp_evapdf_ruta,
       desp_evapdf_situacion,
      accion,
	  usuario,
	  hora)
	VALUES (
    antes.evapdf_id,
    antes.evapdf_evaluacion,
    antes.evapdf_catalogo,
    antes.evapdf_ruta,
    antes.evapdf_situacion,
    luego.evapdf_id,
    luego.evapdf_evaluacion,
    luego.evapdf_catalogo,
    luego.evapdf_ruta,
    luego.evapdf_situacion,
    luego.nov_situacion,
   'U', user, CURRENT YEAR TO FRACTION (3)
	)
);

===================================SE DEBEN QUITAR LOS PERMISOS PUBLIC=====================================

REVOKE insert ON eva_pdf FROM "public";
REVOKE update ON eva_pdf FROM "public";
REVOKE select ON eva_pdf FROM "public";
REVOKE DELETE ON eva_pdf FROM "public";
REVOKE insert ON aud_eva_pdf FROM "public";
REVOKE update ON aud_eva_pdf FROM "public";
REVOKE select ON aud_eva_pdf FROM "public";
REVOKE DELETE ON aud_eva_pdf FROM "public";

