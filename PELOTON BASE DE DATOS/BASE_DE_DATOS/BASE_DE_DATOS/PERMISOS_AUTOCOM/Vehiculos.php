<?php
require_once ("ClsConex.php");

class ClsVehiculos extends ClsConex{

/////////////////////////////77*****************************************//////////////////77
///////////////////////////////FUNCIONES PARA DAR PERMISOS////////////////////////////////7
////////////////////////**********************************///////////////////////////////



	function vehiculos_primer_nivel($cat) {
		
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
			
			
			$sql.= "GRANT SELECT ON lvehiculos TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_aceite TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_asigna TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_caracteristicas TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_combustible TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_documento TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_motor TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_neumaticos TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_otros TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_transmision TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_plaza TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_estilo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_nuevo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_marcas TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_tipo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_neumaticos TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_color TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_situacion TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_obser TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_his TO '$cat'; ";
				
			
		//echo $sql;

		return $sql;
	}
	
	function vehiculos_segundo_nivel($cat) {
		
			//SEGUNDO NIVEL COMANDO
		
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
			
			
			$sql.= "GRANT SELECT ON lvehiculos TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_aceite TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_asigna TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_caracteristicas TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_combustible TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_documento TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_motor TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_neumaticos TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_otros TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_transmision TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_plaza TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_estilo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_nuevo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_marcas TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_tipo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_neumaticos TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_color TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_situacion TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_obser TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_his TO '$cat'; ";
			
			
			//PERMISOS DE INSERT
			
			$sql.= "GRANT INSERT ON lveh_nuevo TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_solicitud TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_asigna TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_det_documento TO '$cat'; ";
			$sql.= "GRANT INSERT ON lvehiculos TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_det_motor TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_det_transmision TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_det_plaza TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_det_neumaticos TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_det_otros TO '$cat'; ";
			
			
			//PERMISOS DE UPDATE
			
			$sql.= "GRANT UPDATE ON lveh_nuevo TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lveh_solicitud TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lveh_asigna TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lveh_det_documento TO '$cat'; ";
			
					
		//echo $sql;
	
		return $sql;
	}
	
	
	function vehiculos_tercer_nivel($cat) {
		
			//TERCER NIVEL EJERCITO
		
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
			
			
			$sql.= "GRANT SELECT ON lvehiculos TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_aceite TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_asigna TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_caracteristicas TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_combustible TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_documento TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_motor TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_neumaticos TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_otros TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_transmision TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_det_plaza TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_estilo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_nuevo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_marcas TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_tipo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_neumaticos TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_color TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_situacion TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_obser TO '$cat'; ";
			$sql.= "GRANT SELECT ON lveh_his TO '$cat'; ";
			
			
			//PERMISOS DE INSERT
			
			$sql.= "GRANT INSERT ON lveh_color TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_situacion TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_nuevo TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_solicitud TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_asigna TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_det_documento TO '$cat'; ";
			$sql.= "GRANT INSERT ON lvehiculos TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_det_motor TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_det_transmision TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_det_plaza TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_det_neumaticos TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_det_otros TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_combustible TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_aceite TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_tipo TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_marcas TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_estilo TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_caracteristicas TO '$cat'; ";
			$sql.= "GRANT INSERT ON lveh_neumaticos TO '$cat'; ";
						
			
			//PERMISOS DE UPDATE
			
			$sql.= "GRANT UPDATE ON lveh_nuevo TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lveh_solicitud TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lveh_asigna TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lveh_det_documento TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lveh_situacion TO '$cat'; ";
			
					
		//echo $sql;

		return $sql;
	}
	
	
/////////////////////////////77*****************************************//////////////////77
///////////////////////////////FUNCIONES PARA QUITAR PERMISOS////////////////////////////////7
////////////////////////**********************************///////////////////////////////

	function vehiculos_nivel1($cat) {
					
			$sql= "REVOKE SELECT ON lvehiculos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_aceite FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_asigna FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_caracteristicas FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_combustible FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_documento FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_motor FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_neumaticos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_otros FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_transmision FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_plaza FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_estilo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_nuevo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_marcas FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_tipo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_neumaticos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_solicitud FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_color FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_situacion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_obser FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_his FROM '$cat'; ";
				
			
		//echo $sql;

		return $sql;
	}
	
	function vehiculos_nivel2($cat) {
		
			$sql= "REVOKE SELECT ON lvehiculos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_aceite FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_asigna FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_caracteristicas FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_combustible FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_documento FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_motor FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_neumaticos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_otros FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_transmision FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_plaza FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_estilo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_nuevo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_marcas FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_tipo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_neumaticos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_solicitud FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_color FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_situacion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_obser FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_his FROM '$cat'; ";
			
			
			//PERMISOS DE INSERT
			
			$sql.= "REVOKE INSERT ON lveh_nuevo FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_solicitud FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_asigna FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_det_documento FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lvehiculos FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_det_motor FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_det_transmision FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_det_plaza FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_det_neumaticos FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_det_otros FROM '$cat'; ";
			
			
			//PERMISOS DE UPDATE
			
			$sql.= "REVOKE UPDATE ON lveh_nuevo FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lveh_solicitud FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lveh_asigna FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lveh_det_documento FROM '$cat'; ";
			
					
		//echo $sql;

		return $sql;
	}
	
	
	function vehiculos_nivel3($cat) {
		
			$sql= "REVOKE SELECT ON lvehiculos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_aceite FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_asigna FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_caracteristicas FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_combustible FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_documento FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_motor FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_neumaticos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_otros FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_transmision FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_det_plaza FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_estilo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_nuevo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_marcas FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_tipo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_neumaticos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_solicitud FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_color FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_situacion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_obser FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lveh_his FROM '$cat'; ";
			
			
			//PERMISOS DE INSERT
			
			$sql.= "REVOKE INSERT ON lveh_color FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_situacion FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_nuevo FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_solicitud FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_asigna FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_det_documento FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lvehiculos FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_det_motor FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_det_transmision FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_det_plaza FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_det_neumaticos FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_det_otros FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_combustible FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_aceite FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_tipo FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_marcas FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_estilo FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_caracteristicas FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lveh_neumaticos FROM '$cat'; ";
						
			
			//PERMISOS DE UPDATE
			
			$sql.= "REVOKE UPDATE ON lveh_nuevo FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lveh_solicitud FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lveh_asigna FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lveh_det_documento FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lveh_situacion FROM '$cat'; ";
			
					
		//echo $sql;

		return $sql;
	}
		
		
}	
?>