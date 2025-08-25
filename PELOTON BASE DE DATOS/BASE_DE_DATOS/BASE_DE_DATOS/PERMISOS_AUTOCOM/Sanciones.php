<?php
require_once ("ClsConex.php");

class ClsSanciones extends ClsConex{

/////////////////////////////77*****************************************//////////////////77
///////////////////////////////FUNCIONES PARA DAR PERMISOS////////////////////////////////7
////////////////////////**********************************///////////////////////////////


	function sanciones_primer_nivel($cat) {
		
			//PRIMER NIVEL
		
			//PERMISOS DE SELECT
			
			//TABLAS DE LOGIN
			
			$sql= "GRANT CONNECT TO '$cat'; ";
			$sql.= "GRANT SELECT ON armas TO '$cat'; ";
			$sql.= "GRANT SELECT ON grados TO '$cat'; ";
			$sql.= "GRANT SELECT ON mper TO '$cat'; ";
			$sql.= "GRANT SELECT ON mdep TO '$cat'; ";
			$sql.= "GRANT SELECT ON paises TO '$cat'; ";
			$sql.= "GRANT SELECT ON morg TO '$cat'; ";
			$sql.= "GRANT SELECT ON grupo_menuautocom TO '$cat'; ";
			$sql.= "GRANT SELECT ON niveles_autocom TO '$cat'; ";
			$sql.= "GRANT SELECT ON menuautocom TO '$cat'; ";
			$sql.= "GRANT SELECT ON situaciones TO '$cat'; ";
			////////TABLAS SANCIONES ////////
			$sql.= "GRANT SELECT ON psan_boleta TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_detalle TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_estadistica TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_orden TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_registro TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_sanciones TO '$cat'; ";
			
						
		//echo $sql;

		return $sql;
	}
	
	function sanciones_segundo_nivel($cat) {
		
			//SEGUNDO NIVEL
		
			//PERMISOS DE SELECT
			
			//TABLAS DE LOGIN
			
			$sql= "GRANT CONNECT TO '$cat'; ";
			$sql.= "GRANT SELECT ON armas TO '$cat'; ";
			$sql.= "GRANT SELECT ON grados TO '$cat'; ";
			$sql.= "GRANT SELECT ON mper TO '$cat'; ";
			$sql.= "GRANT SELECT ON mdep TO '$cat'; ";
			$sql.= "GRANT SELECT ON paises TO '$cat'; ";
			$sql.= "GRANT SELECT ON morg TO '$cat'; ";
			$sql.= "GRANT SELECT ON grupo_menuautocom TO '$cat'; ";
			$sql.= "GRANT SELECT ON niveles_autocom TO '$cat'; ";
			$sql.= "GRANT SELECT ON menuautocom TO '$cat'; ";
			$sql.= "GRANT SELECT ON situaciones TO '$cat'; ";
			$sql.= "GRANT SELECT ON tiempos TO '$cat'; ";
			
			////////TABLAS SANCIONES ////////
			$sql.= "GRANT SELECT ON psan_boleta TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_detalle TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_estadistica TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_orden TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_registro TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_sanciones TO '$cat'; ";			
			
			//PERMISOS DE INSERT
			
			$sql.= "GRANT INSERT ON psan_boleta TO '$cat'; ";
			$sql.= "GRANT INSERT ON psan_detalle TO '$cat'; ";
			$sql.= "GRANT INSERT ON psan_estadistica TO '$cat'; ";
			$sql.= "GRANT INSERT ON psan_orden TO '$cat'; ";
			$sql.= "GRANT INSERT ON psan_registro TO '$cat'; ";
						
			//PERMISOS DE UPDATE
						
			$sql.= "GRANT UPDATE ON psan_boleta TO '$cat'; ";
			$sql.= "GRANT UPDATE ON psan_detalle TO '$cat'; ";
			$sql.= "GRANT UPDATE ON psan_estadistica TO '$cat'; ";
			$sql.= "GRANT UPDATE ON psan_orden TO '$cat'; ";
			$sql.= "GRANT UPDATE ON psan_registro TO '$cat'; ";
						
		
		//echo $sql;

		return $sql;
	}
	
		function sanciones_tercer_nivel($cat) {
		
			//SEGUNDO NIVEL
		
			//PERMISOS DE SELECT
			
			//TABLAS DE LOGIN
			
			$sql= "GRANT CONNECT TO '$cat'; ";
			$sql.= "GRANT SELECT ON armas TO '$cat'; ";
			$sql.= "GRANT SELECT ON grados TO '$cat'; ";
			$sql.= "GRANT SELECT ON mper TO '$cat'; ";
			$sql.= "GRANT SELECT ON mdep TO '$cat'; ";
			$sql.= "GRANT SELECT ON paises TO '$cat'; ";
			$sql.= "GRANT SELECT ON morg TO '$cat'; ";
			$sql.= "GRANT SELECT ON dot_uniformes TO '$cat'; ";
			$sql.= "GRANT SELECT ON dot_detalle TO '$cat'; ";
			$sql.= "GRANT SELECT ON dot_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON grupo_menuautocom TO '$cat'; ";
			$sql.= "GRANT SELECT ON niveles_autocom TO '$cat'; ";
			$sql.= "GRANT SELECT ON menuautocom TO '$cat'; ";
			$sql.= "GRANT SELECT ON situaciones TO '$cat'; ";
			$sql.= "GRANT SELECT ON tiempos TO '$cat'; ";
			
			////////TABLAS SANCIONES ////////
			$sql.= "GRANT SELECT ON psan_boleta TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_detalle TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_estadistica TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_orden TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_registro TO '$cat'; ";
			$sql.= "GRANT SELECT ON psan_sanciones TO '$cat'; ";		
			
			//PERMISOS DE INSERT
			
			$sql.= "GRANT INSERT ON psan_boleta TO '$cat'; ";
			$sql.= "GRANT INSERT ON psan_detalle TO '$cat'; ";
			$sql.= "GRANT INSERT ON psan_estadistica TO '$cat'; ";
			$sql.= "GRANT INSERT ON psan_orden TO '$cat'; ";
			$sql.= "GRANT INSERT ON psan_registro TO '$cat'; ";
						
			//PERMISOS DE UPDATE
						
			$sql.= "GRANT UPDATE ON psan_boleta TO '$cat'; ";
			$sql.= "GRANT UPDATE ON psan_detalle TO '$cat'; ";
			$sql.= "GRANT UPDATE ON psan_estadistica TO '$cat'; ";
			$sql.= "GRANT UPDATE ON psan_orden TO '$cat'; ";
			$sql.= "GRANT UPDATE ON psan_registro TO '$cat'; ";
						
		
		//echo $sql;

		return $sql;
	}
	
/////////////////////////////77*****************************************//////////////////77
///////////////////////////////FUNCIONES PARA QUITAR PERMISOS////////////////////////////////7
////////////////////////**********************************///////////////////////////////

	function sanciones_nivel1($cat) {
		
			$sql= "REVOKE SELECT ON psan_boleta FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_detalle FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_estadistica FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_orden FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_registro FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_sanciones FROM '$cat'; ";
			
						
		//echo $sql;

		return $sql;
	}
	
	function sanciones_nivel2($cat) {
				
			$sql= "REVOKE SELECT ON psan_boleta FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_detalle FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_estadistica FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_orden FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_registro FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_sanciones FROM '$cat'; ";
			
			//PERMISOS DE INSERT
			
			$sql= "REVOKE INSERT ON psan_boleta FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON psan_detalle FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON psan_estadistica FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON psan_orden FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON psan_registro FROM '$cat'; ";
						
			//PERMISOS DE UPDATE
			
			$sql= "REVOKE UPDATE ON psan_boleta FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON psan_detalle FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON psan_estadistica FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON psan_orden FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON psan_registro FROM '$cat'; ";
						
		

		return $sql;
	}
	
		function sanciones_nivel3($cat) {
		
			$sql= "REVOKE SELECT ON psan_boleta FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_detalle FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_estadistica FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_orden FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_registro FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON psan_sanciones FROM '$cat'; ";
			
			//PERMISOS DE INSERT
			
			$sql= "REVOKE INSERT ON psan_boleta FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON psan_detalle FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON psan_estadistica FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON psan_orden FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON psan_registro FROM '$cat'; ";
						
			//PERMISOS DE UPDATE
			
			$sql= "REVOKE UPDATE ON psan_boleta FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON psan_detalle FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON psan_estadistica FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON psan_orden FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON psan_registro FROM '$cat'; ";
						

		return $sql;
	}
	
}	
?>