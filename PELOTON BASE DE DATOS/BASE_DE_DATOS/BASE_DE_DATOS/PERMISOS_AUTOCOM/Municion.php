<?php
require_once ("ClsConex.php");

class ClsMunicion extends ClsConex{

/////////////////////////////77*****************************************//////////////////77
///////////////////////////////FUNCIONES PARA DAR PERMISOS////////////////////////////////7
////////////////////////**********************************///////////////////////////////

	function municion_segungo_nivel($cat) {
		
			//NIVEL COMANDO
		
			//PERMISOS DE SELECT
			
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
			
			$sql.= "GRANT SELECT ON lmun_movimientos TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_mov_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON l_municion TO '$cat'; ";
			$sql.= "GRANT SELECT ON larm_tip_sol TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_det_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_det_solasigna TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_det_cambiosit TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_trasint TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_asignacion TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_situacion TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_carga TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_marca TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_uso TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_lote TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_modelo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_calibre TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_tipo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_color TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_cambio_sit TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_conocimiento TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_det_conocimiento TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_det_conoc_fab TO '$cat'; ";
			
			
			//PERMISOS DE INSERT
			
			$sql.= "GRANT INSERT ON lmun_movimientos TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_solicitud TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_mov_solicitud TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_det_solicitud TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_det_solasigna TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_det_cambiosit TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_devolentre TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_trasint TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_asignacion TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_cambio_sit TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_conocimiento TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_det_conocimiento TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_conoc_fab TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_det_conoc_fab TO '$cat'; ";
			$sql.= "GRANT INSERT ON l_municion TO '$cat'; ";
			
			
			//PERMISOS DE UPDATE
			
			$sql.= "GRANT UPDATE ON lmun_movimientos TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_solicitud TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_mov_solicitud TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_det_solicitud TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_det_solasigna TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_det_cambiosit TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_devolentre TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_trasint TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_asignacion TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_cambio_sit TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_conocimiento TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_det_conocimiento TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_conoc_fab TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_det_conoc_fab TO '$cat'; ";
			
		//echo $sql;

		return $sql;
			
	}	
			
	function municion_tercer_nivel($cat) {
		
			//NIVEL COMANDO
		
			//PERMISOS DE SELECT
			
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
			
			$sql.= "GRANT SELECT ON lmun_movimientos TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_mov_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON l_municion TO '$cat'; ";
			$sql.= "GRANT SELECT ON larm_tip_sol TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_det_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_det_solasigna TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_det_cambiosit TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_trasint TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_asignacion TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_situacion TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_carga TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_marca TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_uso TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_lote TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_modelo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_calibre TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_tipo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_color TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_cambio_sit TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_fabrica TO '$cat'; ";
					
			
			//PERMISOS DE INSERT
			
			$sql.= "GRANT INSERT ON lmun_asignacion TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_cambio_sit TO '$cat'; ";
						
			//PERMISOS DE UPDATE
			
			$sql.= "GRANT UPDATE ON lmun_mov_solicitud TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_asignacion TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_cambio_sit TO '$cat'; ";
						
		//echo $sql;
	
		return $sql;
			
	}	
			
		function municion_cuarto_nivel($cat) {
		
			//NIVEL COMANDO
		
			//PERMISOS DE SELECT
			
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
			
			$sql.= "GRANT SELECT ON lmun_movimientos TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_mov_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON l_municion TO '$cat'; ";
			$sql.= "GRANT SELECT ON larm_tip_sol TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_det_solicitud TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_det_solasigna TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_det_cambiosit TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_trasint TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_asignacion TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_situacion TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_carga TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_marca TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_uso TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_lote TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_modelo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_calibre TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_tipo TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_color TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_cambio_sit TO '$cat'; ";
			$sql.= "GRANT SELECT ON lmun_fabrica TO '$cat'; ";
					
			
			//PERMISOS DE INSERT
			
			$sql.= "GRANT INSERT ON lmun_asignacion TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_cambio_sit TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_conocimiento TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_det_conocimiento TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_conoc_fab TO '$cat'; ";
			$sql.= "GRANT INSERT ON lmun_det_conoc_fab TO '$cat'; ";
						
			//PERMISOS DE UPDATE
			
			$sql.= "GRANT UPDATE ON lmun_mov_solicitud TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_asignacion TO '$cat'; ";
			$sql.= "GRANT UPDATE ON lmun_cambio_sit TO '$cat'; ";
						
		//echo $sql;
	
		return $sql;
			
	}

/////////////////////////////77*****************************************//////////////////77
///////////////////////////////FUNCIONES PARA QUITAR PERMISOS////////////////////////////////7
////////////////////////**********************************///////////////////////////////

	function municion_nivel2($cat) {
		
			$sql= "REVOKE SELECT ON lmun_movimientos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_solicitud FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_mov_solicitud FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON l_municion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON larm_tip_sol FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_det_solicitud FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_det_solasigna FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_det_cambiosit FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_trasint FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_asignacion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_situacion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_carga FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_marca FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_uso FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_lote FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_modelo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_calibre FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_tipo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_color FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_cambio_sit FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_conocimiento FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_det_conocimiento FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_det_conoc_fab FROM '$cat'; ";
			
			
			//PERMISOS DE INSERT
			
			$sql.= "REVOKE INSERT ON lmun_movimientos FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_solicitud FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_mov_solicitud FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_det_solicitud FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_det_solasigna FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_det_cambiosit FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_devolentre FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_trasint FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_asignacion FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_cambio_sit FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_conocimiento FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_det_conocimiento FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_conoc_fab FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_det_conoc_fab FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON l_municion FROM '$cat'; ";
			
			
			//PERMISOS DE UPDATE
			
			$sql.= "REVOKE UPDATE ON lmun_movimientos FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_solicitud FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_mov_solicitud FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_det_solicitud FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_det_solasigna FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_det_cambiosit FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_devolentre FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_trasint FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_asignacion FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_cambio_sit FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_conocimiento FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_det_conocimiento FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_conoc_fab FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_det_conoc_fab FROM '$cat'; ";
			
		//echo $sql;
	
		return $sql;
			
	}	
			
	function municion_nivel3($cat) {
		
			$sql= "REVOKE SELECT ON lmun_movimientos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_solicitud FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_mov_solicitud FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON l_municion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON larm_tip_sol FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_det_solicitud FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_det_solasigna FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_det_cambiosit FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_trasint FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_asignacion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_situacion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_carga FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_marca FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_uso FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_lote FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_modelo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_calibre FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_tipo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_color FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_cambio_sit FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_fabrica FROM '$cat'; ";
					
			
			//PERMISOS DE INSERT
			
			$sql.= "REVOKE INSERT ON lmun_asignacion FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_cambio_sit FROM '$cat'; ";
						
			//PERMISOS DE UPDATE
			
			$sql.= "REVOKE UPDATE ON lmun_mov_solicitud FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_asignacion FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_cambio_sit FROM '$cat'; ";
						
		//echo $sql;
		
		return $sql;
			
	}	
			
		function municion_nivel4($cat) {
		
			$sql= "REVOKE SELECT ON lmun_movimientos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_solicitud FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_mov_solicitud FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON l_municion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON larm_tip_sol FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_det_solicitud FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_det_solasigna FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_det_cambiosit FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_trasint FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_asignacion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_situacion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_carga FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_marca FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_uso FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_lote FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_modelo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_calibre FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_tipo FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_color FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_cambio_sit FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON lmun_fabrica FROM '$cat'; ";
					
			
			//PERMISOS DE INSERT
			
			$sql.= "REVOKE INSERT ON lmun_asignacion FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_cambio_sit FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_conocimiento FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_det_conocimiento FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_conoc_fab FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON lmun_det_conoc_fab FROM '$cat'; ";
						
			//PERMISOS DE UPDATE
			
			$sql.= "REVOKE UPDATE ON lmun_mov_solicitud FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_asignacion FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON lmun_cambio_sit FROM '$cat'; ";
						
		//echo $sql;
	
		return $sql;
			
	}	
}	
?>