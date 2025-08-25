<?php

//***********************************************************************************//	
///////////////////////////FUNCIONES PARA DAR PEMISOS//////////////////////////
//***********************************************************************************//	

		
			//PRIMER NIVEL

GRANT CONNECT TO 'catalogo';
GRANT SELECT ON armas TO 'catalogo';
GRANT SELECT ON grados TO 'catalogo';
GRANT SELECT ON mper TO 'catalogo';
GRANT SELECT ON mdep TO 'catalogo';
GRANT SELECT ON paises TO 'catalogo';
GRANT SELECT ON morg TO 'catalogo';
GRANT SELECT ON grupo_menuautocom TO 'catalogo';
GRANT SELECT ON niveles_autocom TO 'catalogo';
GRANT SELECT ON menuautocom TO 'catalogo';
GRANT SELECT ON situaciones TO 'catalogo';
GRANT SELECT ON dcon TO 'catalogo';
GRANT SELECT ON cond TO 'catalogo';
GRANT SELECT ON det_consolicit TO 'catalogo';
GRANT SELECT ON con_solicitud TO 'catalogo';
GRANT SELECT ON cond TO 'catalogo';
GRANT SELECT ON tiempos TO 'catalogo';

	}
	

		
			//SEGUNDO NIVEL COMANDO

			
GRANT CONNECT TO 'catalogo';
GRANT SELECT ON armas TO 'catalogo';
GRANT SELECT ON grados TO 'catalogo';
GRANT SELECT ON mper TO 'catalogo';
GRANT SELECT ON mdep TO 'catalogo';
GRANT SELECT ON paises TO 'catalogo';
GRANT SELECT ON morg TO 'catalogo';
GRANT SELECT ON grupo_menuautocom TO 'catalogo';
GRANT SELECT ON niveles_autocom TO 'catalogo';
GRANT SELECT ON menuautocom TO 'catalogo';
GRANT SELECT ON situaciones TO 'catalogo';
GRANT SELECT ON tiempos TO 'catalogo';
GRANT SELECT ON dcon TO 'catalogo';
GRANT SELECT ON cond TO 'catalogo';
GRANT SELECT ON det_consolicit TO 'catalogo';
GRANT SELECT ON con_solicitud TO 'catalogo';
GRANT INSERT ON det_consolicit TO 'catalogo';
GRANT INSERT ON con_solicitud TO 'catalogo';
GRANT INSERT ON dcon TO 'catalogo';
GRANT UPDATE ON det_consolicit TO 'catalogo';
GRANT UPDATE ON con_solicitud TO 'catalogo';
GRANT DELETE ON det_consolicit TO 'catalogo';
			

	
?>