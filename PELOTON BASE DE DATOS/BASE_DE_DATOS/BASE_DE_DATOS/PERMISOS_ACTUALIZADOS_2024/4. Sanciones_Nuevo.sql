=========================================================================================
====================== NIVELES DE PERMISOS APLICACION DE SANCIONES ======================
=========================================================================================
============================== NIVEL ADMINISTRADOR ======================================
=========================================================================================

GRANT SELECT ON mdep TO '482000';
GRANT SELECT ON mper TO '482000';
GRANT SELECT ON morg TO '482000';
GRANT SELECT ON armas TO '482000';
GRANT SELECT ON grados TO '482000';
GRANT SELECT ON situaciones TO '482000';
GRANT INSERT ON psan_detalle TO '482000';
GRANT SELECT ON psan_detalle TO '482000';
GRANT UPDATE ON psan_detalle TO '482000';
GRANT DELETE ON psan_detalle TO '482000';
GRANT INSERT ON psan_boleta TO '482000';
GRANT SELECT ON psan_boleta TO '482000';
GRANT UPDATE ON psan_boleta TO '482000';
GRANT DELETE ON psan_boleta TO '482000';
GRANT SELECT ON psan_registro TO '482000';
GRANT SELECT ON psan_sanciones TO '482000';
GRANT INSERT ON psan_orden TO '482000';
GRANT SELECT ON psan_orden TO '482000';
GRANT UPDATE ON psan_orden TO '482000';
GRANT INSERT ON psan_estadistica TO '482000';
GRANT SELECT ON psan_estadistica TO '482000';
GRANT UPDATE ON psan_estadistica TO '482000';

================================================================
======================= NIVEL COMANDO OFICIALES ================
================================================================

GRANT SELECT ON mdep TO '482000';
GRANT SELECT ON mper TO '482000';
GRANT SELECT ON morg TO '482000';
GRANT SELECT ON armas TO '482000';
GRANT SELECT ON grados TO '482000';
GRANT SELECT ON situaciones TO '482000';
GRANT INSERT ON psan_detalle TO '482000';
GRANT SELECT ON psan_detalle TO '482000';
GRANT UPDATE ON psan_detalle TO '482000';
GRANT DELETE ON psan_detalle TO '482000';
GRANT INSERT ON psan_boleta TO '482000';
GRANT SELECT ON psan_boleta TO '482000';
GRANT UPDATE ON psan_boleta TO '482000';
GRANT DELETE ON psan_boleta TO '482000';
GRANT SELECT ON psan_registro TO '482000';
GRANT SELECT ON psan_sanciones TO '482000';
GRANT SELECT ON psan_orden TO '482000';
GRANT SELECT ON psan_estadistica TO '482000';

================================================================
======================== NIVEL EMDN OFICIALES ==================
================================================================

GRANT SELECT ON mdep TO '482000';
GRANT SELECT ON mper TO '482000';
GRANT SELECT ON morg TO '482000';
GRANT SELECT ON armas TO '482000';
GRANT SELECT ON grados TO '482000';
GRANT SELECT ON situaciones TO '482000';
GRANT INSERT ON psan_detalle TO '482000';
GRANT SELECT ON psan_detalle TO '482000';
GRANT UPDATE ON psan_detalle TO '482000';
GRANT DELETE ON psan_detalle TO '482000';
GRANT INSERT ON psan_boleta TO '482000';
GRANT SELECT ON psan_boleta TO '482000';
GRANT UPDATE ON psan_boleta TO '482000';
GRANT DELETE ON psan_boleta TO '482000';
GRANT SELECT ON psan_registro TO '482000';
GRANT SELECT ON psan_sanciones TO '482000';
GRANT INSERT ON psan_orden TO '482000';
GRANT SELECT ON psan_orden TO '482000';
GRANT UPDATE ON psan_orden TO '482000';
GRANT INSERT ON psan_estadistica TO '482000';
GRANT SELECT ON psan_estadistica TO '482000';
GRANT UPDATE ON psan_estadistica TO '482000';

=================================================================
======================= NIVEL EMDN ESPECIALISTAS ================
=================================================================

GRANT SELECT ON mdep TO '482000';
GRANT SELECT ON mper TO '482000';
GRANT SELECT ON morg TO '482000';
GRANT SELECT ON armas TO '482000';
GRANT SELECT ON grados TO '482000';
GRANT SELECT ON situaciones TO '482000';
GRANT INSERT ON psan_detalle TO '482000';
GRANT SELECT ON psan_detalle TO '482000';
GRANT UPDATE ON psan_detalle TO '482000';
GRANT DELETE ON psan_detalle TO '482000';
GRANT INSERT ON psan_boleta TO '482000';
GRANT SELECT ON psan_boleta TO '482000';
GRANT UPDATE ON psan_boleta TO '482000';
GRANT DELETE ON psan_boleta TO '482000';
GRANT SELECT ON psan_registro TO '482000';
GRANT SELECT ON psan_sanciones TO '482000';
GRANT INSERT ON psan_orden TO '482000';
GRANT SELECT ON psan_orden TO '482000';
GRANT UPDATE ON psan_orden TO '482000';
GRANT INSERT ON psan_estadistica TO '482000';
GRANT SELECT ON psan_estadistica TO '482000';
GRANT UPDATE ON psan_estadistica TO '482000';

===================================================================================
================= FIN NIVELES PERMISOS APLICACION SANCIONES =======================
===================================================================================

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
where det_482000 = 600882
and det_status =0

NOTAAAAA
Economato9177   565390  tte. godoy economato   03mar2017 
darle los permisos de tte. Lopez Esquevel 



revoke SELECT ON mdep from '414664';
revoke SELECT ON mper from '482000';
revoke SELECT ON morg from '482000';
revoke SELECT ON armas from '482000';
revoke SELECT ON grados from '482000';
revoke SELECT ON situaciones from '482000';
revoke INSERT ON psan_detalle from '482000';
revoke SELECT ON psan_detalle from '482000';
revoke UPDATE ON psan_detalle from '482000';
revoke DELETE ON psan_detalle from '482000';
revoke INSERT ON psan_boleta from '482000';
revoke SELECT ON psan_boleta from '482000';
revoke UPDATE ON psan_boleta from '482000';
revoke DELETE ON psan_boleta from '482000';
revoke SELECT ON psan_registro from '482000';
revoke SELECT ON psan_sanciones from '482000';
revoke INSERT ON psan_orden from '482000';
revoke SELECT ON psan_orden from '482000';
revoke UPDATE ON psan_orden from '482000';
revoke INSERT ON psan_estadistica from '482000';
revoke SELECT ON psan_estadistica from '482000';
revoke UPDATE ON psan_estadistica from '482000';
