<?php

	//PERMISOS ADMINISTRADOR
GRANT CONNECT TO '596345';
GRANT SELECT ON mdep TO '596345';
GRANT SELECT ON mper TO '596345';
GRANT SELECT ON dpue TO '596345';
GRANT SELECT ON menu_det TO '596345';
GRANT SELECT ON menu_master TO '596345';
GRANT SELECT ON morg TO '596345';
GRANT SELECT ON grados TO '596345';
GRANT SELECT ON armas TO '596345';
GRANT SELECT ON situaciones TO '596345';
GRANT SELECT ON c_control TO '596345';
GRANT SELECT ON c_corr_seg TO '596345';
GRANT SELECT ON c_documento TO '596345';
GRANT SELECT ON c_empresas TO '596345';
GRANT SELECT ON c_oficinas TO '596345';
GRANT SELECT ON c_proposito TO '596345';
GRANT SELECT ON c_tipo_docum TO '596345';
GRANT SELECT ON c_ubicacion_docum TO '596345';
GRANT SELECT ON c_tareas TO '596345';	
GRANT SELECT ON cor_corr_seg TO '596345';
GRANT SELECT ON cor_oficinas TO '596345';
GRANT SELECT ON cor_empresas TO '596345';
GRANT SELECT ON cor_documento TO '596345';
GRANT SELECT ON cor_ubicacion_docum TO '596345';
GRANT SELECT ON cor_proposito TO '596345';
GRANT SELECT ON cor_tipo_docum TO '596345';
GRANT INSERT ON cor_corr_seg TO '596345';
GRANT INSERT ON cor_empresas TO '596345';
GRANT INSERT ON cor_documento TO '596345';
GRANT INSERT ON cor_ubicacion_docum TO '596345';
GRANT INSERT ON cor_proposito TO '596345';
GRANT INSERT ON cor_tipo_docum TO '596345';
GRANT UPDATE ON cor_corr_seg TO '596345';
GRANT UPDATE ON cor_empresas TO '596345';
GRANT UPDATE ON cor_documento TO '596345';
GRANT UPDATE ON cor_ubicacion_docum TO '596345';
GRANT UPDATE ON cor_proposito TO '596345';
GRANT UPDATE ON cor_tipo_docum TO '596345';
GRANT DELETE ON cor_empresas TO '596345';
GRANT DELETE ON cor_documento TO '596345';
GRANT DELETE ON cor_ubicacion_docum TO '596345';
GRANT DELETE ON cor_proposito TO '596345';
GRANT DELETE ON cor_tipo_docum TO '596345';

			//PERMISOS COMANDO
			
GRANT CONNECT TO '596345';
GRANT SELECT ON mdep TO '596345';
GRANT SELECT ON mper TO '596345';
GRANT SELECT ON dpue TO '596345';
GRANT SELECT ON menu_det TO '596345';
GRANT SELECT ON menu_master TO '596345';
GRANT SELECT ON morg TO '596345';
GRANT SELECT ON grados TO '596345';
GRANT SELECT ON armas TO '596345';
GRANT SELECT ON situaciones TO '596345';
GRANT SELECT ON c_control TO '596345';
GRANT SELECT ON c_corr_seg TO '596345';
GRANT SELECT ON c_documento TO '596345';
GRANT SELECT ON c_empresas TO '596345';
GRANT SELECT ON c_oficinas TO '596345';
GRANT SELECT ON c_proposito TO '596345';
GRANT SELECT ON c_tipo_docum TO '596345';
GRANT SELECT ON c_ubicacion_docum TO '596345';
GRANT SELECT ON c_tareas TO '596345';	
GRANT SELECT ON cor_corr_seg TO '596345';
GRANT SELECT ON cor_oficinas TO '596345';
GRANT SELECT ON cor_empresas TO '596345';
GRANT SELECT ON cor_documento TO '596345';
GRANT SELECT ON cor_ubicacion_docum TO '596345';
GRANT SELECT ON cor_proposito TO '596345';
GRANT SELECT ON cor_tipo_docum TO '596345';
GRANT INSERT ON cor_empresas TO '596345';
GRANT INSERT ON cor_documento TO '596345';
GRANT INSERT ON cor_ubicacion_docum TO '596345';
GRANT INSERT ON cor_proposito TO '596345';
GRANT INSERT ON cor_tipo_docum TO '596345';
GRANT UPDATE ON cor_empresas TO '596345';
GRANT UPDATE ON cor_documento TO '596345';
GRANT UPDATE ON cor_ubicacion_docum TO '596345';
GRANT UPDATE ON cor_proposito TO '596345';
GRANT UPDATE ON cor_tipo_docum TO '596345';
GRANT DELETE ON cor_empresas TO '596345';
GRANT DELETE ON cor_documento TO '596345';
GRANT DELETE ON cor_ubicacion_docum TO '596345';
GRANT DELETE ON cor_proposito TO '596345';
GRANT DELETE ON cor_tipo_docum TO '596345';

			//////-- FINALIZA  TABLAS QUE SE UTILIZAN PARA LA NUEVA APLICACION DE CORRESPONDENCIA ///////////
			
			
			//PERMISOS DE INSERT
			
			$sql.= "GRANT INSERT ON c_control TO '596345';
			$sql.= "GRANT INSERT ON c_corr_seg TO '596345';
			$sql.= "GRANT INSERT ON c_documento TO '596345';
			$sql.= "GRANT INSERT ON c_empresas TO '596345';
			$sql.= "GRANT INSERT ON c_oficinas TO '596345';
			$sql.= "GRANT INSERT ON c_proposito TO '596345';
			$sql.= "GRANT INSERT ON c_tipo_docum TO '596345';
			$sql.= "GRANT INSERT ON c_ubicacion_docum TO '596345';
			$sql.= "GRANT INSERT ON c_tareas TO '596345';
			
			//PERMISOS DE UPDATE
			
			$sql.= "GRANT UPDATE ON c_control TO '596345';
			$sql.= "GRANT UPDATE ON c_corr_seg TO '596345';
			$sql.= "GRANT UPDATE ON c_documento TO '596345';
			$sql.= "GRANT UPDATE ON c_empresas TO '596345';
			$sql.= "GRANT UPDATE ON c_oficinas TO '596345';
			$sql.= "GRANT UPDATE ON c_proposito TO '596345';
			$sql.= "GRANT UPDATE ON c_tipo_docum TO '596345';
			$sql.= "GRANT UPDATE ON c_ubicacion_docum TO '596345';
			$sql.= "GRANT UPDATE ON c_tareas TO '596345';
			
			//PERMISOS DE DELETE
			
			$sql.= "GRANT DELETE ON c_control TO '596345';
			$sql.= "GRANT DELETE ON c_corr_seg TO '596345';
			$sql.= "GRANT DELETE ON c_documento TO '596345';
			$sql.= "GRANT DELETE ON c_empresas TO '596345';
			$sql.= "GRANT DELETE ON c_oficinas TO '596345';
			$sql.= "GRANT DELETE ON c_proposito TO '596345';
			$sql.= "GRANT DELETE ON c_tipo_docum TO '596345';
			$sql.= "GRANT DELETE ON c_ubicacion_docum TO '596345';
			
					
		//echo $sql;
		
		return $sql;
	}

//***********************************************************************************//	
///////////////////////////FUNCIONES PARA QUITAR PEMISOS//////////////////////////
//***********************************************************************************//	

	function correspondencia_nivel2($cat) {
		
			//SEGUNDO NIVEL
		
			//PERMISOS DE SELECT
			
			$sql= "REVOKE SELECT ON c_control FROM '596345';
			$sql.= "REVOKE SELECT ON c_corr_seg FROM '596345';
			$sql.= "REVOKE SELECT ON c_documento FROM '596345';
			$sql.= "REVOKE SELECT ON c_empresas FROM '596345';
			$sql.= "REVOKE SELECT ON c_oficinas FROM '596345';
			$sql.= "REVOKE SELECT ON c_proposito FROM '596345';
			$sql.= "REVOKE SELECT ON c_tipo_docum FROM '596345';
			$sql.= "REVOKE SELECT ON c_ubicacion_docum FROM '596345';
			$sql.= "REVOKE SELECT ON c_tareas FROM '596345';
						
			
			//PERMISOS DE INSERT
			
			$sql.= "REVOKE INSERT ON c_control FROM '596345';
			$sql.= "REVOKE INSERT ON c_corr_seg FROM '596345';
			$sql.= "REVOKE INSERT ON c_documento FROM '596345';
			$sql.= "REVOKE INSERT ON c_empresas FROM '596345';
			$sql.= "REVOKE INSERT ON c_oficinas FROM '596345';
			$sql.= "REVOKE INSERT ON c_proposito FROM '596345';
			$sql.= "REVOKE INSERT ON c_tipo_docum FROM '596345';
			$sql.= "REVOKE INSERT ON c_ubicacion_docum FROM '596345';
			$sql.= "REVOKE INSERT ON c_tareas FROM '596345';
			
			//PERMISOS DE UPDATE
			
			$sql.= "REVOKE UPDATE ON c_control FROM '596345';
			$sql.= "REVOKE UPDATE ON c_corr_seg FROM '596345';
			$sql.= "REVOKE UPDATE ON c_documento FROM '596345';
			$sql.= "REVOKE UPDATE ON c_empresas FROM '596345';
			$sql.= "REVOKE UPDATE ON c_oficinas FROM '596345';
			$sql.= "REVOKE UPDATE ON c_proposito FROM '596345';
			$sql.= "REVOKE UPDATE ON c_tipo_docum FROM '596345';
			$sql.= "REVOKE UPDATE ON c_ubicacion_docum FROM '596345';
			$sql.= "REVOKE UPDATE ON c_tareas FROM '596345';
			
			//PERMISOS DE DELETE
			
			$sql.= "REVOKE DELETE ON c_control FROM '596345';
			$sql.= "REVOKE DELETE ON c_corr_seg FROM '596345';
			$sql.= "REVOKE DELETE ON c_documento FROM '596345';
			$sql.= "REVOKE DELETE ON c_empresas FROM '596345';
			$sql.= "REVOKE DELETE ON c_oficinas FROM '596345';
			$sql.= "REVOKE DELETE ON c_proposito FROM '596345';
			$sql.= "REVOKE DELETE ON c_tipo_docum FROM '596345';
			$sql.= "REVOKE DELETE ON c_ubicacion_docum FROM '596345';
			
			
			////// TABLAS QUE SE UTILIZAN PARA LA NUEVA APLICACION DE CORRESPONDENCIA ///////////
						
			$sql.= "REVOKE SELECT ON cor_corr_seg FROM '596345';
			$sql.= "REVOKE SELECT ON cor_oficinas FROM '596345';
			$sql.= "REVOKE SELECT ON cor_empresas FROM '596345';
			$sql.= "REVOKE SELECT ON cor_documento FROM '596345';
			$sql.= "REVOKE SELECT ON cor_ubicacion_docum FROM '596345';
			$sql.= "REVOKE SELECT ON cor_proposito FROM '596345';
			$sql.= "REVOKE SELECT ON cor_tipo_docum FROM '596345';
			
			// PERMISOS DE INSERT

			$sql.= "REVOKE INSERT ON cor_empresas FROM '596345';
			$sql.= "REVOKE INSERT ON cor_documento FROM '596345';
			$sql.= "REVOKE INSERT ON cor_ubicacion_docum FROM '596345';
			$sql.= "REVOKE INSERT ON cor_proposito FROM '596345';
			$sql.= "REVOKE INSERT ON cor_tipo_docum FROM '596345';
			//--------------------------------- UPDATE ----------------------//
			
			$sql.= "REVOKE UPDATE ON cor_empresas FROM '596345';
			$sql.= "REVOKE UPDATE ON cor_documento FROM '596345';
			$sql.= "REVOKE UPDATE ON cor_ubicacion_docum FROM '596345';
			$sql.= "REVOKE UPDATE ON cor_proposito FROM '596345';
			$sql.= "REVOKE UPDATE ON cor_tipo_docum FROM '596345';
			
			//--------------------------------- DELETE ----------------------//
			$sql.= "REVOKE DELETE ON cor_empresas FROM '596345';
			$sql.= "REVOKE DELETE ON cor_documento FROM '596345';
			$sql.= "REVOKE DELETE ON cor_ubicacion_docum FROM '596345';
			$sql.= "REVOKE DELETE ON cor_proposito FROM '596345';
			$sql.= "REVOKE DELETE ON cor_tipo_docum FROM '596345';
			
			//////-- FINALIZA  TABLAS QUE SE UTILIZAN PARA LA NUEVA APLICACION DE CORRESPONDENCIA ///////////
			
					
		//echo $sql;
		
		return $sql;
	}
		
}	
?>