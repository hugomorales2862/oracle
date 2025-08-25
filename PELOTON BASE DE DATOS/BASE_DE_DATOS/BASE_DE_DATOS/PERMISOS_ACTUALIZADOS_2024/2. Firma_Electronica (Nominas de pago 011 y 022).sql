--------------------------------------------------------------------------------------------------------------------------------------
======================================================================================================================================
======================================================================================================================================
======================================= PERMISOS PARA LA GENERACION Y VALIDACION DE NOMINAS DE PAGO ==================================
======================================================================================================================================
--------------------------------------------------------------------------------------------------------------------------------------

======================================================================================================================================
======================================================== FINCCC ======================================================================
===================================================== FINPAGADORES ===================================================================
======================================================== FINUUEE =====================================================================
======================================================================================================================================

GRANT SELECT ON cuentas TO '664952';
GRANT SELECT ON mfdep TO '664952'; 
GRANT SELECT ON fmdep TO '664952';
GRANT SELECT ON mper TO '664952';
GRANT SELECT ON morg TO '664952'; 
GRANT SELECT ON mdep TO '664952'; 
GRANT SELECT ON mper_otros TO '664952';
GRANT SELECT ON hftro_des TO '664952';
GRANT SELECT ON hfdes TO '664952'; 
GRANT SELECT ON hfasig TO '664952'; 
GRANT SELECT ON hfasigc TO '664952';
GRANT SELECT ON hftro TO '664952';
GRANT SELECT ON fin_subproducto TO '664952'; 
GRANT SELECT ON fin_subpro_desc TO '664952';
GRANT SELECT ON esip_unidades_ejecutoras TO '664952';
GRANT SELECT ON partidas TO '664952';
GRANT SELECT ON RE22_OBRAS TO '664952';
GRANT SELECT ON RE22_PARTIDAS TO '664952';
GRANT SELECT ON RE22_UNIDADES_EJECUTORAS TO '664952';
GRANT SELECT ON GRADOS TO '664952';
GRANT SELECT, INSERT, UPDATE ON MPER_FIRMA TO '664952';
GRANT SELECT, INSERT, UPDATE ON F_CAT_ELIMINADOS TO '664952';
GRANT SELECT, INSERT, UPDATE ON F_CAT_ELIMINADO_R22 TO '664952';
GRANT SELECT, INSERT, UPDATE ON FIRMA_REGISTRO TO '664952';

======================================================================================================================================
========================================================= FINADMIN ===================================================================
======================================================================================================================================

GRANT SELECT, INSERT, UPDATE, DELETE ON cuentas TO '664952';
GRANT SELECT, INSERT, UPDATE, DELETE ON mfdep TO '664952'; 
GRANT SELECT, INSERT, UPDATE, DELETE ON fmdep TO '664952';
GRANT SELECT ON mper TO '664952';
GRANT SELECT ON morg TO '664952'; 
GRANT SELECT ON mdep TO '664952'; 
GRANT SELECT ON mper_otros TO '664952';
GRANT SELECT, INSERT, UPDATE, DELETE ON hftro_des TO '664952';
GRANT SELECT, INSERT, UPDATE, DELETE ON hfdes TO '664952'; 
GRANT SELECT, INSERT, UPDATE, DELETE ON hfasig TO '664952'; 
GRANT SELECT ON hfasigc TO '664952';
GRANT SELECT, INSERT, UPDATE, DELETE ON hftro TO '664952';
GRANT SELECT, INSERT, UPDATE, DELETE ON fin_subproducto TO '664952'; 
GRANT SELECT, INSERT, UPDATE, DELETE ON fin_subpro_desc TO '664952';
GRANT SELECT, INSERT, UPDATE, DELETE ON esip_unidades_ejecutoras TO '664952';
GRANT SELECT, INSERT, UPDATE, DELETE ON partidas TO '664952';
GRANT SELECT, INSERT, UPDATE, DELETE ON RE22_OBRAS TO '664952';
GRANT SELECT, INSERT, UPDATE, DELETE ON RE22_PARTIDAS TO '664952';
GRANT SELECT, INSERT, UPDATE, DELETE ON RE22_UNIDADES_EJECUTORAS TO '664952';
GRANT SELECT ON GRADOS TO '664952';
GRANT SELECT, INSERT, UPDATE ON MPER_FIRMA TO '664952';
GRANT SELECT, INSERT, UPDATE ON F_CAT_ELIMINADOS TO '664952';
GRANT SELECT, INSERT, UPDATE ON F_CAT_ELIMINADO_R22 TO '664952';
GRANT SELECT, INSERT, UPDATE ON FIRMA_REGISTRO TO '664952';

------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------- F I N ----------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------