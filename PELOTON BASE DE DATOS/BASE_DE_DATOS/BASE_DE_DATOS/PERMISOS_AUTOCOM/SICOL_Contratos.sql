
-======================NIVELES DE PERMISOS APLICACION CONTRATOS========================
--=========================================================================================
--============================== NIVEL 1 ADMINISTRADOR (Con. Admon)======================================

GRANT SELECT ON menuautocom to "catalogo";
GRANT SELECT ON grupo_menuautocom to "catalogo";
GRANT SELECT ON niveles_autocom to "catalogo";
GRANT SELECT ON mper   TO 'catalogo';
GRANT SELECT ON morg   TO 'catalogo';
GRANT SELECT ON mdep   TO 'catalogo';
GRANT SELECT ON grados TO 'catalogo';
GRANT SELECT ON dep_mun TO 'catalogo';
GRANT INSERT ON con_usuarios TO 'catalogo';
GRANT SELECT ON con_usuarios TO 'catalogo';
GRANT UPDATE ON con_usuarios TO 'catalogo';
GRANT INSERT ON con_unidades TO 'catalogo';
GRANT SELECT ON con_unidades TO 'catalogo';
GRANT UPDATE ON con_unidades TO 'catalogo';
GRANT INSERT ON con_subareas TO 'catalogo';
GRANT SELECT ON con_subareas TO 'catalogo';
GRANT UPDATE ON con_subareas TO 'catalogo';
GRANT INSERT ON con_seguimiento TO 'catalogo';
GRANT SELECT ON con_seguimiento TO 'catalogo';
GRANT UPDATE ON con_seguimiento TO 'catalogo';
GRANT INSERT ON con_plaza TO 'catalogo';
GRANT SELECT ON con_plaza TO 'catalogo';
GRANT UPDATE ON con_plaza TO 'catalogo';
GRANT INSERT ON con_permisos TO 'catalogo';
GRANT SELECT ON con_permisos TO 'catalogo';
GRANT UPDATE ON con_permisos TO 'catalogo';
GRANT INSERT ON con_observaciones TO 'catalogo';
GRANT SELECT ON con_observaciones TO 'catalogo';
GRANT UPDATE ON con_observaciones TO 'catalogo';
GRANT INSERT ON con_mper_contratos TO 'catalogo';
GRANT SELECT ON con_mper_contratos TO 'catalogo';
GRANT UPDATE ON con_mper_contratos TO 'catalogo';
GRANT INSERT ON con_minuta TO 'catalogo';
GRANT SELECT ON con_minuta TO 'catalogo';
GRANT UPDATE ON con_minuta TO 'catalogo';
GRANT INSERT ON con_mdep TO 'catalogo';
GRANT SELECT ON con_mdep TO 'catalogo';
GRANT UPDATE ON con_mdep TO 'catalogo';
GRANT INSERT ON con_manual TO 'catalogo';
GRANT SELECT ON con_manual TO 'catalogo';
GRANT UPDATE ON con_manual TO 'catalogo';
GRANT INSERT ON con_juridico TO 'catalogo';
GRANT SELECT ON con_juridico TO 'catalogo';
GRANT UPDATE ON con_juridico TO 'catalogo';
GRANT INSERT ON con_desc_subareas TO 'catalogo';
GRANT SELECT ON con_desc_subareas TO 'catalogo';
GRANT UPDATE ON con_desc_subareas TO 'catalogo';
GRANT INSERT ON con_desc_area TO 'catalogo';
GRANT SELECT ON con_desc_area TO 'catalogo';
GRANT UPDATE ON con_desc_area TO 'catalogo';
GRANT INSERT ON con_contrato TO 'catalogo';
GRANT SELECT ON con_contrato TO 'catalogo';
GRANT UPDATE ON con_contrato TO 'catalogo';
GRANT INSERT ON con_boleta TO 'catalogo';
GRANT SELECT ON con_boleta TO 'catalogo';
GRANT UPDATE ON con_boleta TO 'catalogo';
GRANT INSERT ON con_asignacion_plaza TO 'catalogo';
GRANT SELECT ON con_asignacion_plaza TO 'catalogo';
GRANT UPDATE ON con_asignacion_plaza TO 'catalogo';
GRANT INSERT ON con_area TO 'catalogo';
GRANT SELECT ON con_area TO 'catalogo';
GRANT UPDATE ON con_area TO 'catalogo';



--======================= NIVEL 2 COMANDO o CENTRO DE COSTO================
GRANT SELECT ON menuautocom to "catalogo";
GRANT SELECT ON grupo_menuautocom to "catalogo";
GRANT SELECT ON niveles_autocom to "catalogo";
GRANT SELECT ON mper   TO 'catalogo';
GRANT SELECT ON morg   TO 'catalogo';
GRANT SELECT ON mdep   TO 'catalogo';
GRANT SELECT ON grados TO 'catalogo';
GRANT SELECT ON dep_mun TO 'catalogo';
GRANT SELECT ON con_usuarios TO 'catalogo';
GRANT SELECT ON con_unidades TO 'catalogo';
GRANT SELECT ON con_subareas TO 'catalogo';
GRANT INSERT ON con_seguimiento TO 'catalogo';
GRANT SELECT ON con_seguimiento TO 'catalogo';
GRANT SELECT ON con_plaza TO 'catalogo';
GRANT SELECT ON con_permisos TO 'catalogo';
GRANT INSERT ON con_observaciones TO 'catalogo';
GRANT SELECT ON con_observaciones TO 'catalogo';
GRANT INSERT ON con_mper_contratos TO 'catalogo';
GRANT SELECT ON con_mper_contratos TO 'catalogo';
GRANT UPDATE ON con_mper_contratos TO 'catalogo';
GRANT SELECT ON con_minuta TO 'catalogo';
GRANT SELECT ON con_mdep TO 'catalogo';
GRANT SELECT ON con_manual TO 'catalogo';
GRANT SELECT ON con_juridico TO 'catalogo';
GRANT SELECT ON con_desc_subareas TO 'catalogo';
GRANT SELECT ON con_desc_area TO 'catalogo';
GRANT INSERT ON con_contrato TO 'catalogo';
GRANT SELECT ON con_contrato TO 'catalogo';
GRANT UPDATE ON con_contrato TO 'catalogo';
GRANT INSERT ON con_boleta TO 'catalogo';
GRANT SELECT ON con_boleta TO 'catalogo';
GRANT SELECT ON con_asignacion_plaza TO 'catalogo';
GRANT SELECT ON con_area TO 'catalogo';




--======================= NIVEL 3 PERMISO COMO UNIDADES EJECUTORAS ================
GRANT SELECT ON menuautocom to "catalogo";
GRANT SELECT ON grupo_menuautocom to "catalogo";
GRANT SELECT ON niveles_autocom to "catalogo";
GRANT SELECT ON mper   TO 'catalogo';
GRANT SELECT ON morg   TO 'catalogo';
GRANT SELECT ON mdep   TO 'catalogo';
GRANT SELECT ON grados TO 'catalogo';
GRANT SELECT ON dep_mun TO 'catalogo';
GRANT SELECT ON con_usuarios TO 'catalogo';
GRANT SELECT ON con_unidades TO 'catalogo';
GRANT SELECT ON con_subareas TO 'catalogo';
GRANT INSERT ON con_seguimiento TO 'catalogo';
GRANT SELECT ON con_seguimiento TO 'catalogo';
GRANT SELECT ON con_plaza TO 'catalogo';
GRANT SELECT ON con_permisos TO 'catalogo';
GRANT INSERT ON con_observaciones TO 'catalogo';
GRANT SELECT ON con_observaciones TO 'catalogo';
GRANT SELECT ON con_mper_contratos TO 'catalogo';
GRANT SELECT ON con_minuta TO 'catalogo';
GRANT SELECT ON con_mdep TO 'catalogo';
GRANT SELECT ON con_manual TO 'catalogo';
GRANT SELECT ON con_juridico TO 'catalogo';
GRANT SELECT ON con_desc_subareas TO 'catalogo';
GRANT SELECT ON con_desc_area TO 'catalogo';
GRANT SELECT ON con_contrato TO 'catalogo';
GRANT UPDATE ON con_contrato TO 'catalogo';
GRANT INSERT ON con_boleta TO 'catalogo';
GRANT SELECT ON con_boleta TO 'catalogo';
GRANT SELECT ON con_asignacion_plaza TO 'catalogo';
GRANT SELECT ON con_area TO 'catalogo';


--======================= NIVEL 4 PERMISO PARA JURIDICO ================
GRANT SELECT ON menuautocom to "catalogo";
GRANT SELECT ON grupo_menuautocom to "catalogo";
GRANT SELECT ON niveles_autocom to "catalogo";
GRANT SELECT ON mper   TO 'catalogo';
GRANT SELECT ON morg   TO 'catalogo';
GRANT SELECT ON mdep   TO 'catalogo';
GRANT SELECT ON grados TO 'catalogo';
GRANT SELECT ON dep_mun TO 'catalogo';
GRANT SELECT ON con_usuarios TO 'catalogo';
GRANT SELECT ON con_unidades TO 'catalogo';
GRANT SELECT ON con_subareas TO 'catalogo';
GRANT INSERT ON con_seguimiento TO 'catalogo';
GRANT SELECT ON con_seguimiento TO 'catalogo';
GRANT SELECT ON con_plaza TO 'catalogo';
GRANT SELECT ON con_permisos TO 'catalogo';
GRANT INSERT ON con_observaciones TO 'catalogo';
GRANT SELECT ON con_observaciones TO 'catalogo';
GRANT SELECT ON con_mper_contratos TO 'catalogo';
GRANT SELECT ON con_minuta TO 'catalogo';
GRANT SELECT ON con_mdep TO 'catalogo';
GRANT SELECT ON con_manual TO 'catalogo';
GRANT SELECT ON con_juridico TO 'catalogo';
GRANT SELECT ON con_desc_subareas TO 'catalogo';
GRANT SELECT ON con_desc_area TO 'catalogo';
GRANT SELECT ON con_contrato TO 'catalogo';
GRANT UPDATE ON con_contrato TO 'catalogo';
GRANT INSERT ON con_boleta TO 'catalogo';
GRANT SELECT ON con_boleta TO 'catalogo';
GRANT SELECT ON con_asignacion_plaza TO 'catalogo';
GRANT SELECT ON con_area TO 'catalogo';

         
--============== NIVEL 5 PERMISO PARA DIRECCION GRAL. ADMIN DEL MDN==========                    
GRANT SELECT ON menuautocom to "catalogo";
GRANT SELECT ON grupo_menuautocom to "catalogo";
GRANT SELECT ON niveles_autocom to "catalogo";
GRANT SELECT ON mper   TO 'catalogo';
GRANT SELECT ON morg   TO 'catalogo';
GRANT SELECT ON mdep   TO 'catalogo';
GRANT SELECT ON grados TO 'catalogo';
GRANT SELECT ON dep_mun TO 'catalogo';
GRANT SELECT ON con_usuarios TO 'catalogo';
GRANT SELECT ON con_unidades TO 'catalogo';
GRANT SELECT ON con_subareas TO 'catalogo';
GRANT INSERT ON con_seguimiento TO 'catalogo';
GRANT SELECT ON con_seguimiento TO 'catalogo';
GRANT SELECT ON con_plaza TO 'catalogo';
GRANT SELECT ON con_permisos TO 'catalogo';
GRANT INSERT ON con_observaciones TO 'catalogo';
GRANT SELECT ON con_observaciones TO 'catalogo';
GRANT SELECT ON con_mper_contratos TO 'catalogo';
GRANT SELECT ON con_minuta TO 'catalogo';
GRANT SELECT ON con_mdep TO 'catalogo';
GRANT SELECT ON con_manual TO 'catalogo';
GRANT INSERT ON con_juridico TO 'catalogo';
GRANT SELECT ON con_juridico TO 'catalogo';
GRANT UPDATE ON con_juridico TO 'catalogo';
GRANT SELECT ON con_desc_subareas TO 'catalogo';
GRANT SELECT ON con_desc_area TO 'catalogo';
GRANT SELECT ON con_contrato TO 'catalogo';
GRANT UPDATE ON con_contrato TO 'catalogo';
GRANT INSERT ON con_boleta TO 'catalogo';
GRANT SELECT ON con_boleta TO 'catalogo';
GRANT SELECT ON con_asignacion_plaza TO 'catalogo';
GRANT SELECT ON con_area TO 'catalogo';




--g/as "informix"; /s//;/g