GRANT SELECT ON morg TO '692921';
GRANT SELECT ON mdep TO '692921';
GRANT SELECT ON grados TO '692921';
GRANT SELECT ON mper TO '692921';
GRANT SELECT ON armas TO '692921';
GRANT SELECT ON dep_mun TO '692921';
GRANT SELECT ON bin_asignacion TO '692921';
GRANT SELECT ON bin_tipos TO '692921';
GRANT SELECT ON bin_adquisicion TO '692921';
GRANT SELECT ON bin_inmueble TO '692921';
GRANT SELECT ON bin_situacion TO '692921';
GRANT SELECT ON bin_ubicacion TO '692921';
GRANT SELECT ON bin_utm TO '692921';
GRANT SELECT ON bin_accion TO '692921';
GRANT SELECT ON bin_incidencia TO '692921';
GRANT SELECT ON jefes TO '692921';


GRANT INSERT ON bin_inmueble TO '692921';
GRANT INSERT ON bin_ubicacion TO '692921';
GRANT INSERT ON bin_utm TO '692921';
GRANT INSERT ON bin_incidencia TO '692921';
GRANT INSERT ON bin_accion TO '692921';
GRANT INSERT ON bin_asignacion TO '692921';


GRANT UPDATE ON bin_inmueble TO '692921';
GRANT UPDATE ON bin_ubicacion TO '692921';
GRANT UPDATE ON bin_utm TO '692921';
GRANT UPDATE ON bin_incidencia TO '692921';
GRANT UPDATE ON bin_accion TO '692921';
GRANT UPDATE ON bin_asignacion TO '692921';


GRANT SELECT ON dot_uniformes TO '692921';
GRANT SELECT ON dot_detalle TO '692921';
GRANT SELECT ON dot_solicitud TO '692921';
GRANT INSERT ON dot_detalle TO '692921';
GRANT INSERT ON dot_solicitud TO '692921';
GRANT UPDATE ON dot_detalle TO '692921';
GRANT UPDATE ON dot_solicitud TO '692921';

GRANT INSERT, SELECT, UPDATE ON bin_pdf_edificaciones TO "692921";
GRANT INSERT, SELECT, UPDATE ON bin_edificaciones TO "692921";
GRANT INSERT, SELECT, UPDATE ON bin_valor_inmueble TO "692921";
GRANT INSERT, SELECT, UPDATE ON bin_solicitudes TO "692921";


--grant select on "informix".menuautocom to "692921" as "informix";
--grant select on "informix".grupo_menuautocom to "692921" as "informix";
--grant select on "informix".niveles_autocom to "692921" as "informix";
