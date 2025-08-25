--======================NIVELES DE PERMISOS APLICACION DE SANCIONES========================
--=========================================================================================
--============================== NIVEL ADMINISTRADOR ======================================
GRANT SELECT ON mdep TO 'catalogo';
GRANT SELECT ON mper TO 'catalogo';
GRANT SELECT ON morg TO 'catalogo';
GRANT SELECT ON armas TO 'catalogo';
GRANT SELECT ON grados TO 'catalogo';
GRANT SELECT ON situaciones TO 'catalogo';
GRANT INSERT ON psan_detalle TO 'catalogo';
GRANT SELECT ON psan_detalle TO 'catalogo';
GRANT UPDATE ON psan_detalle TO 'catalogo';
GRANT DELETE ON psan_detalle TO 'catalogo';
GRANT INSERT ON psan_boleta TO 'catalogo';
GRANT SELECT ON psan_boleta TO 'catalogo';
GRANT UPDATE ON psan_boleta TO 'catalogo';
GRANT DELETE ON psan_boleta TO 'catalogo';
GRANT SELECT ON psan_registro TO 'catalogo';
GRANT SELECT ON psan_sanciones TO 'catalogo';
GRANT INSERT ON psan_orden TO 'catalogo';
GRANT SELECT ON psan_orden TO 'catalogo';
GRANT UPDATE ON psan_orden TO 'catalogo';
GRANT INSERT ON psan_estadistica TO 'catalogo';
GRANT SELECT ON psan_estadistica TO 'catalogo';
GRANT UPDATE ON psan_estadistica TO 'catalogo';

--======================= NIVEL COMANDO OFICIALES================
GRANT SELECT ON mdep TO 'catalogo';
GRANT SELECT ON mper TO 'catalogo';
GRANT SELECT ON morg TO 'catalogo';
GRANT SELECT ON armas TO 'catalogo';
GRANT SELECT ON grados TO 'catalogo';
GRANT SELECT ON situaciones TO 'catalogo';
GRANT INSERT ON psan_detalle TO 'catalogo';
GRANT SELECT ON psan_detalle TO 'catalogo';
GRANT UPDATE ON psan_detalle TO 'catalogo';
GRANT DELETE ON psan_detalle TO 'catalogo';
GRANT INSERT ON psan_boleta TO 'catalogo';
GRANT SELECT ON psan_boleta TO 'catalogo';
GRANT UPDATE ON psan_boleta TO 'catalogo';
GRANT DELETE ON psan_boleta TO 'catalogo';
GRANT SELECT ON psan_registro TO 'catalogo';
GRANT SELECT ON psan_sanciones TO 'catalogo';
GRANT SELECT ON psan_orden TO 'catalogo';
GRANT SELECT ON psan_estadistica TO 'catalogo';


--======================= NIVEL EMDN OFICIALES ================
GRANT SELECT ON mdep TO 'catalogo';
GRANT SELECT ON mper TO 'catalogo';
GRANT SELECT ON morg TO 'catalogo';
GRANT SELECT ON armas TO 'catalogo';
GRANT SELECT ON grados TO 'catalogo';
GRANT SELECT ON situaciones TO 'catalogo';
GRANT INSERT ON psan_detalle TO 'catalogo';
GRANT SELECT ON psan_detalle TO 'catalogo';
GRANT UPDATE ON psan_detalle TO 'catalogo';
GRANT DELETE ON psan_detalle TO 'catalogo';
GRANT INSERT ON psan_boleta TO 'catalogo';
GRANT SELECT ON psan_boleta TO 'catalogo';
GRANT UPDATE ON psan_boleta TO 'catalogo';
GRANT DELETE ON psan_boleta TO 'catalogo';
GRANT SELECT ON psan_registro TO 'catalogo';
GRANT SELECT ON psan_sanciones TO 'catalogo';
GRANT INSERT ON psan_orden TO 'catalogo';
GRANT SELECT ON psan_orden TO 'catalogo';
GRANT UPDATE ON psan_orden TO 'catalogo';
GRANT INSERT ON psan_estadistica TO 'catalogo';
GRANT SELECT ON psan_estadistica TO 'catalogo';
GRANT UPDATE ON psan_estadistica TO 'catalogo';

--======================= NIVEL EMDN ESPECIALISTAS ================
GRANT SELECT ON mdep TO '590760';
GRANT SELECT ON mper TO '590760';
GRANT SELECT ON morg TO '590760';
GRANT SELECT ON armas TO '590760';
GRANT SELECT ON grados TO '590760';
GRANT SELECT ON situaciones TO '590760';
GRANT INSERT ON psan_detalle TO '590760';
GRANT SELECT ON psan_detalle TO '590760';
GRANT UPDATE ON psan_detalle TO '590760';
GRANT DELETE ON psan_detalle TO '590760';
GRANT INSERT ON psan_boleta TO '590760';
GRANT SELECT ON psan_boleta TO '590760';
GRANT UPDATE ON psan_boleta TO '590760';
GRANT DELETE ON psan_boleta TO '590760';
GRANT SELECT ON psan_registro TO '590760';
GRANT SELECT ON psan_sanciones TO '590760';
GRANT INSERT ON psan_orden TO '590760';
GRANT SELECT ON psan_orden TO '590760';
GRANT UPDATE ON psan_orden TO '590760';
GRANT INSERT ON psan_estadistica TO '590760';
GRANT SELECT ON psan_estadistica TO '590760';
GRANT UPDATE ON psan_estadistica TO '590760';

--=================FIN NIVELES PERMISOS APLICACION SANCIONES ========================




--SELECT 
GRANT SELECT ON morg TO '526251';
GRANT SELECT ON mdep TO '526251';
GRANT SELECT ON grados TO '526251';
GRANT SELECT ON mper TO '526251';
GRANT SELECT ON armas TO '526251';
GRANT SELECT ON situaciones TO '526251';

GRANT SELECT ON psan_registro TO '526251';
GRANT SELECT ON psan_sanciones TO '526251';
GRANT SELECT ON psan_orden TO '526251';
GRANT SELECT ON psan_estadistica TO '526251';
GRANT SELECT ON psan_boleta TO '526251';
GRANT SELECT ON psan_boleta TO '526251';


--INSERT
GRANT INSERT ON psan_registro TO '526251';
GRANT INSERT ON psan_sanciones TO '526251';
GRANT INSERT ON psan_orden TO '526251';
GRANT INSERT ON psan_estadistica TO '526251';
GRANT INSERT ON psan_boleta TO '526251';
GRANT INSERT ON psan_boleta TO '526251';

--UPDATE
GRANT UPDATE ON psan_registro TO '526251';
GRANT UPDATE ON psan_sanciones TO '526251';
GRANT UPDATE ON psan_orden TO '526251';
GRANT UPDATE ON psan_estadistica TO '526251';
GRANT UPDATE ON psan_boleta TO '526251';
GRANT UPDATE ON psan_boleta TO '526251';

GRANT DELETE ON psan_boleta TO '526251';
GRANT DELETE ON psan_boleta TO '526251';

correspondencia 645655 pass:  Caceres64
=============QUITAR PERMISO EN TABLAS========
REVOKE SELECT ON mdep FROM '5647

contar sanciones  d un cat. 

select count (*) from psan_detalle
where det_catalogo = 600882
and det_status =0

NOTAAAAA
Economato9177   565390  tte. godoy economato   03mar2017 
darle los permisos de tte. Lopez Esquevel 



revoke SELECT ON mdep from '414664';
revoke SELECT ON mper from '590760';
revoke SELECT ON morg from '590760';
revoke SELECT ON armas from '590760';
revoke SELECT ON grados from '590760';
revoke SELECT ON situaciones from '590760';
revoke INSERT ON psan_detalle from '590760';
revoke SELECT ON psan_detalle from '590760';
revoke UPDATE ON psan_detalle from '590760';
revoke DELETE ON psan_detalle from '590760';
revoke INSERT ON psan_boleta from '590760';
revoke SELECT ON psan_boleta from '590760';
revoke UPDATE ON psan_boleta from '590760';
revoke DELETE ON psan_boleta from '590760';
revoke SELECT ON psan_registro from '590760';
revoke SELECT ON psan_sanciones from '590760';
revoke INSERT ON psan_orden from '590760';
revoke SELECT ON psan_orden from '590760';
revoke UPDATE ON psan_orden from '590760';
revoke INSERT ON psan_estadistica from '590760';
revoke SELECT ON psan_estadistica from '590760';
revoke UPDATE ON psan_estadistica from '590760';


