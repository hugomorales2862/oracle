<?php
require_once ("ClsConex.php");

class ClsEvaluacionEspta extends ClsConex{

//***********************************************************************************//	
///////////////////////////FUNCIONES PARA DAR PEMISOS//////////////////////////
//***********************************************************************************//	


	function evaluacionespta_primer_nivel($cat) {
		
			//NIVEL SELECT

GRANT CONNECT TO '653899';
GRANT SELECT ON armas TO '653899';
GRANT SELECT ON grados TO '653899';
GRANT SELECT ON mper TO '653899';
GRANT SELECT ON mdep TO '653899';
GRANT SELECT ON paises TO '653899';
GRANT SELECT ON morg TO '653899';
GRANT SELECT ON grupo_menuautocom TO '653899';
GRANT SELECT ON niveles_autocom TO '653899';
GRANT SELECT ON menuautocom TO '653899';
GRANT SELECT ON situaciones TO '653899';
GRANT SELECT ON tiempos TO '653899';
GRANT SELECT ON eva_boleta TO '653899';
GRANT SELECT ON bol_det_meritos TO '653899';
GRANT SELECT ON bol_det_concep TO '653899';
GRANT SELECT ON eva_preguntas TO '653899';
GRANT SELECT ON acc_motivadora TO '653899';
GRANT SELECT ON acc_correctiva TO '653899';
GRANT SELECT ON eva_meritos TO '653899';
GRANT SELECT ON eva_datos TO '653899';
GRANT SELECT ON eva_certifica TO '653899';
GRANT SELECT ON meom TO '653899';
						
			//NIVEL COMANDO
		
GRANT CONNECT TO '653899';
GRANT SELECT ON armas TO '653899';
GRANT SELECT ON grados TO '653899';
GRANT SELECT ON mper TO '653899';
GRANT SELECT ON mdep TO '653899';
GRANT SELECT ON paises TO '653899';
GRANT SELECT ON morg TO '653899';
GRANT SELECT ON grupo_menuautocom TO '653899';
GRANT SELECT ON niveles_autocom TO '653899';
GRANT SELECT ON menuautocom TO '653899';
GRANT SELECT ON situaciones TO '653899';
GRANT SELECT ON tiempos TO '653899';
GRANT SELECT ON meom TO '653899';
GRANT SELECT ON eva_boleta TO '653899';
GRANT SELECT ON bol_det_meritos TO '653899';
GRANT SELECT ON bol_det_concep TO '653899';
GRANT SELECT ON eva_preguntas TO '653899';
GRANT SELECT ON acc_motivadora TO '653899';
GRANT SELECT ON acc_correctiva TO '653899';
GRANT SELECT ON eva_meritos TO '653899';
GRANT SELECT ON eva_datos TO '653899';
GRANT SELECT ON eva_certifica TO '653899';
GRANT INSERT ON bol_det_concep TO '653899';
GRANT INSERT ON bol_det_meritos TO '653899';
GRANT INSERT ON eva_boleta TO '653899';
GRANT INSERT ON eva_datos TO '653899';
GRANT INSERT ON eva_certifica TO '653899';
GRANT UPDATE ON bol_det_concep TO '653899';
GRANT UPDATE ON bol_det_meritos TO '653899';
GRANT UPDATE ON eva_boleta TO '653899';
GRANT UPDATE ON eva_datos TO '653899';
GRANT UPDATE ON eva_certifica TO '653899';
					

