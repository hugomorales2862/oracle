<?php
require_once ("ClsConex.php");

class ClsFinanzas extends ClsConex{

/////////////////////////////77*****************************************//////////////////77
///////////////////////////////FUNCIONES PARA DAR PERMISOS////////////////////////////////7
////////////////////////**********************************///////////////////////////////

	function finanzas_primer_nivel($cat) {
		
			//PRIMER NIVEL ES PARA LOS PAGADORES
		
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
			
			$sql.= "GRANT SELECT ON agtsa TO '$cat'; ";
			$sql.= "GRANT SELECT ON asignaciones TO '$cat'; ";
			$sql.= "GRANT SELECT ON banderas TO '$cat'; ";
			$sql.= "GRANT SELECT ON banejer_acc TO '$cat'; ";
			$sql.= "GRANT SELECT ON banejer_car TO '$cat'; ";
			$sql.= "GRANT SELECT ON dfdes_btrab TO '$cat'; ";
			$sql.= "GRANT SELECT ON cuentas TO '$cat'; ";
			$sql.= "GRANT SELECT ON descuentos TO '$cat'; ";
			$sql.= "GRANT SELECT ON det_isr TO '$cat'; ";
			$sql.= "GRANT SELECT ON detalle TO '$cat'; ";
			$sql.= "GRANT SELECT ON devoluciones TO '$cat'; ";
			$sql.= "GRANT SELECT ON dfasig TO '$cat'; ";
			$sql.= "GRANT SELECT ON dfdes TO '$cat'; ";
			$sql.= "GRANT SELECT ON dper TO '$cat'; ";
			$sql.= "GRANT SELECT ON dpue TO '$cat'; ";
			$sql.= "GRANT SELECT ON meom TO '$cat'; ";
			$sql.= "GRANT SELECT ON fthreal400 TO '$cat'; ";
			$sql.= "GRANT SELECT ON hfasig TO '$cat'; ";
			$sql.= "GRANT SELECT ON hfdes TO '$cat'; ";
			$sql.= "GRANT SELECT ON hftro TO '$cat'; ";
			$sql.= "GRANT SELECT ON hftro_des TO '$cat'; ";
			$sql.= "GRANT SELECT ON ipm_cart TO '$cat'; ";
			$sql.= "GRANT SELECT ON menu_det TO '$cat'; ";
			$sql.= "GRANT SELECT ON menu_master TO '$cat'; ";
			$sql.= "GRANT SELECT ON mfsub TO '$cat'; ";
			$sql.= "GRANT SELECT ON mfsue_et TO '$cat'; ";
			$sql.= "GRANT SELECT ON mfsue_e TO '$cat'; ";
			$sql.= "GRANT SELECT ON mfsue_o TO '$cat'; ";
			$sql.= "GRANT SELECT ON mftro TO '$cat'; ";
			$sql.= "GRANT SELECT ON msan TO '$cat'; ";
			$sql.= "GRANT SELECT ON partidas TO '$cat'; ";
			$sql.= "GRANT SELECT ON pbienal TO '$cat'; ";
			$sql.= "GRANT SELECT ON permisos TO '$cat'; ";
			$sql.= "GRANT SELECT ON permper TO '$cat'; ";
			$sql.= "GRANT SELECT ON resofi TO '$cat'; ";
			$sql.= "GRANT SELECT ON resutro TO '$cat'; ";
			$sql.= "GRANT SELECT ON retencion TO '$cat'; ";
			$sql.= "GRANT SELECT ON vmper TO '$cat'; ";	
			$sql.= "GRANT SELECT ON cuentas15 TO '$cat'; ";
			$sql.= "GRANT SELECT ON des_no_efec TO '$cat'; ";
			$sql.= "GRANT SELECT ON economato TO '$cat'; ";
						
					
		//echo $sql;
		
		return $sql;
	}

	function finanzas_segundo_nivel($cat) {
		
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
			$sql.= "GRANT SELECT ON tiempos TO '$cat'; ";
			
			$sql.= "GRANT SELECT ON agtsa TO '$cat'; ";
			$sql.= "GRANT SELECT ON asignaciones TO '$cat'; ";
			$sql.= "GRANT SELECT ON banderas TO '$cat'; ";
			$sql.= "GRANT SELECT ON banejer_acc TO '$cat'; ";
			$sql.= "GRANT SELECT ON banejer_car TO '$cat'; ";
			$sql.= "GRANT SELECT ON dfdes_btrab TO '$cat'; ";
			$sql.= "GRANT SELECT ON cuentas TO '$cat'; ";
			$sql.= "GRANT SELECT ON descuentos TO '$cat'; ";
			$sql.= "GRANT SELECT ON det_isr TO '$cat'; ";
			$sql.= "GRANT SELECT ON detalle TO '$cat'; ";
			$sql.= "GRANT SELECT ON devoluciones TO '$cat'; ";
			$sql.= "GRANT SELECT ON dfasig TO '$cat'; ";
			$sql.= "GRANT SELECT ON dfdes TO '$cat'; ";
			$sql.= "GRANT SELECT ON dper TO '$cat'; ";
			$sql.= "GRANT SELECT ON dpue TO '$cat'; ";
			$sql.= "GRANT SELECT ON meom TO '$cat'; ";
			$sql.= "GRANT SELECT ON fthreal400 TO '$cat'; ";
			$sql.= "GRANT SELECT ON hfasig TO '$cat'; ";
			$sql.= "GRANT SELECT ON hfdes TO '$cat'; ";
			$sql.= "GRANT SELECT ON hftro TO '$cat'; ";
			$sql.= "GRANT SELECT ON hftro_des TO '$cat'; ";
			$sql.= "GRANT SELECT ON ipm_cart TO '$cat'; ";
			$sql.= "GRANT SELECT ON menu_det TO '$cat'; ";
			$sql.= "GRANT SELECT ON menu_master TO '$cat'; ";
			$sql.= "GRANT SELECT ON mfsub TO '$cat'; ";
			$sql.= "GRANT SELECT ON mfsue_et TO '$cat'; ";
			$sql.= "GRANT SELECT ON mfsue_e TO '$cat'; ";
			$sql.= "GRANT SELECT ON mfsue_o TO '$cat'; ";
			$sql.= "GRANT SELECT ON mftro TO '$cat'; ";
			$sql.= "GRANT SELECT ON msan TO '$cat'; ";
			$sql.= "GRANT SELECT ON partidas TO '$cat'; ";
			$sql.= "GRANT SELECT ON pbienal TO '$cat'; ";
			$sql.= "GRANT SELECT ON permisos TO '$cat'; ";
			$sql.= "GRANT SELECT ON permper TO '$cat'; ";
			$sql.= "GRANT SELECT ON resofi TO '$cat'; ";
			$sql.= "GRANT SELECT ON resutro TO '$cat'; ";
			$sql.= "GRANT SELECT ON retencion TO '$cat'; ";
			$sql.= "GRANT SELECT ON vmper TO '$cat'; ";	
			$sql.= "GRANT SELECT ON cuentas15 TO '$cat'; ";
			$sql.= "GRANT SELECT ON des_no_efec TO '$cat'; ";
			$sql.= "GRANT SELECT ON economato TO '$cat'; ";
						
				//PERMISOS DE UPDATE
						
			$sql.= "GRANT UPDATE ON agtsa TO '$cat'; ";
			$sql.= "GRANT UPDATE ON asignaciones TO '$cat'; ";
			$sql.= "GRANT UPDATE ON banderas TO '$cat'; ";
			$sql.= "GRANT UPDATE ON banejer_acc TO '$cat'; ";
			$sql.= "GRANT UPDATE ON banejer_car TO '$cat'; ";
			$sql.= "GRANT UPDATE ON dfdes_btrab TO '$cat'; ";
			$sql.= "GRANT UPDATE ON cuentas TO '$cat'; ";
			$sql.= "GRANT UPDATE ON descuentos TO '$cat'; ";
			$sql.= "GRANT UPDATE ON cuentas15 TO '$cat'; ";
			$sql.= "GRANT UPDATE ON des_no_efec TO '$cat'; ";
			$sql.= "GRANT UPDATE ON det_isr TO '$cat'; ";
			$sql.= "GRANT UPDATE ON detalle TO '$cat'; ";
			$sql.= "GRANT UPDATE ON devoluciones TO '$cat'; ";
			$sql.= "GRANT UPDATE ON dfasig TO '$cat'; ";
			$sql.= "GRANT UPDATE ON dfdes TO '$cat'; ";
			$sql.= "GRANT UPDATE ON economato TO '$cat'; ";
			$sql.= "GRANT UPDATE ON fthreal400 TO '$cat'; ";
			$sql.= "GRANT UPDATE ON hdareal TO '$cat'; ";
			$sql.= "GRANT UPDATE ON hfasig TO '$cat'; ";
			$sql.= "GRANT UPDATE ON hfdes TO '$cat'; ";
			$sql.= "GRANT UPDATE ON hftro TO '$cat'; ";
			$sql.= "GRANT UPDATE ON hftro_des TO '$cat'; ";
			$sql.= "GRANT UPDATE ON ipm_cart TO '$cat'; ";
			$sql.= "GRANT UPDATE ON ipm_fact TO '$cat'; ";
			$sql.= "GRANT UPDATE ON ipm_manto TO '$cat'; ";
			$sql.= "GRANT UPDATE ON mfsub TO '$cat'; ";
			$sql.= "GRANT UPDATE ON mfsue_et TO '$cat'; ";
			$sql.= "GRANT UPDATE ON mfsue_e TO '$cat'; ";
			$sql.= "GRANT UPDATE ON mfsue_o TO '$cat'; ";
			$sql.= "GRANT UPDATE ON mftro TO '$cat'; ";
			$sql.= "GRANT UPDATE ON partidas TO '$cat'; ";
			$sql.= "GRANT UPDATE ON pbienal TO '$cat'; ";
			$sql.= "GRANT UPDATE ON permisos TO '$cat'; ";
			$sql.= "GRANT UPDATE ON resofi TO '$cat'; ";
			$sql.= "GRANT UPDATE ON resutro TO '$cat'; ";
			$sql.= "GRANT UPDATE ON retencion TO '$cat'; ";
			
			
				//PERMISOS DE INSERT
						
			$sql.= "GRANT INSERT ON agtsa TO '$cat'; ";
			$sql.= "GRANT INSERT ON asignaciones TO '$cat'; ";
			$sql.= "GRANT INSERT ON banderas TO '$cat'; ";
			$sql.= "GRANT INSERT ON banejer_acc TO '$cat'; ";
			$sql.= "GRANT INSERT ON banejer_car TO '$cat'; ";
			$sql.= "GRANT INSERT ON dfdes_btrab TO '$cat'; ";
			$sql.= "GRANT INSERT ON cuentas TO '$cat'; ";
			$sql.= "GRANT INSERT ON descuentos TO '$cat'; ";
			$sql.= "GRANT INSERT ON cuentas15 TO '$cat'; ";
			$sql.= "GRANT INSERT ON des_no_efec TO '$cat'; ";
			$sql.= "GRANT INSERT ON det_isr TO '$cat'; ";
			$sql.= "GRANT INSERT ON detalle TO '$cat'; ";
			$sql.= "GRANT INSERT ON devoluciones TO '$cat'; ";
			$sql.= "GRANT INSERT ON dfasig TO '$cat'; ";
			$sql.= "GRANT INSERT ON dfdes TO '$cat'; ";
			$sql.= "GRANT INSERT ON economato TO '$cat'; ";
			$sql.= "GRANT INSERT ON fthreal400 TO '$cat'; ";
			$sql.= "GRANT INSERT ON hdareal TO '$cat'; ";
			$sql.= "GRANT INSERT ON hfasig TO '$cat'; ";
			$sql.= "GRANT INSERT ON hfdes TO '$cat'; ";
			$sql.= "GRANT INSERT ON hftro TO '$cat'; ";
			$sql.= "GRANT INSERT ON hftro_des TO '$cat'; ";
			$sql.= "GRANT INSERT ON ipm_cart TO '$cat'; ";
			$sql.= "GRANT INSERT ON ipm_fact TO '$cat'; ";
			$sql.= "GRANT INSERT ON ipm_manto TO '$cat'; ";
			$sql.= "GRANT INSERT ON mfsub TO '$cat'; ";
			$sql.= "GRANT INSERT ON mfsue_et TO '$cat'; ";
			$sql.= "GRANT INSERT ON mfsue_e TO '$cat'; ";
			$sql.= "GRANT INSERT ON mfsue_o TO '$cat'; ";
			$sql.= "GRANT INSERT ON mftro TO '$cat'; ";
			$sql.= "GRANT INSERT ON partidas TO '$cat'; ";
			$sql.= "GRANT INSERT ON pbienal TO '$cat'; ";
			$sql.= "GRANT INSERT ON permisos TO '$cat'; ";
			$sql.= "GRANT INSERT ON resofi TO '$cat'; ";
			$sql.= "GRANT INSERT ON resutro TO '$cat'; ";
			$sql.= "GRANT INSERT ON retencion TO '$cat'; ";
			
			
				//PERMISOS DE DELETE
						
			$sql.= "GRANT DELETE ON agtsa TO '$cat'; ";
			$sql.= "GRANT DELETE ON asignaciones TO '$cat'; ";
			$sql.= "GRANT DELETE ON banderas TO '$cat'; ";
			$sql.= "GRANT DELETE ON banejer_acc TO '$cat'; ";
			$sql.= "GRANT DELETE ON banejer_car TO '$cat'; ";
			$sql.= "GRANT DELETE ON dfdes_btrab TO '$cat'; ";
			$sql.= "GRANT DELETE ON cuentas TO '$cat'; ";
			$sql.= "GRANT DELETE ON descuentos TO '$cat'; ";
			$sql.= "GRANT DELETE ON cuentas15 TO '$cat'; ";
			$sql.= "GRANT DELETE ON des_no_efec TO '$cat'; ";
			$sql.= "GRANT DELETE ON det_isr TO '$cat'; ";
			$sql.= "GRANT DELETE ON detalle TO '$cat'; ";
			$sql.= "GRANT DELETE ON devoluciones TO '$cat'; ";
			$sql.= "GRANT DELETE ON dfasig TO '$cat'; ";
			$sql.= "GRANT DELETE ON dfdes TO '$cat'; ";
			$sql.= "GRANT DELETE ON economato TO '$cat'; ";
			$sql.= "GRANT DELETE ON fthreal400 TO '$cat'; ";
			$sql.= "GRANT DELETE ON hdareal TO '$cat'; ";
			$sql.= "GRANT DELETE ON hfasig TO '$cat'; ";
			$sql.= "GRANT DELETE ON hfdes TO '$cat'; ";
			$sql.= "GRANT DELETE ON hftro TO '$cat'; ";
			$sql.= "GRANT DELETE ON hftro_des TO '$cat'; ";
			$sql.= "GRANT DELETE ON ipm_cart TO '$cat'; ";
			$sql.= "GRANT DELETE ON ipm_fact TO '$cat'; ";
			$sql.= "GRANT DELETE ON ipm_manto TO '$cat'; ";
			$sql.= "GRANT DELETE ON mfsub TO '$cat'; ";
			$sql.= "GRANT DELETE ON mfsue_et TO '$cat'; ";
			$sql.= "GRANT DELETE ON mfsue_e TO '$cat'; ";
			$sql.= "GRANT DELETE ON mfsue_o TO '$cat'; ";
			$sql.= "GRANT DELETE ON mftro TO '$cat'; ";
			$sql.= "GRANT DELETE ON partidas TO '$cat'; ";
			$sql.= "GRANT DELETE ON pbienal TO '$cat'; ";
			$sql.= "GRANT DELETE ON permisos TO '$cat'; ";
			$sql.= "GRANT DELETE ON resofi TO '$cat'; ";
			$sql.= "GRANT DELETE ON resutro TO '$cat'; ";
			$sql.= "GRANT DELETE ON retencion TO '$cat'; ";
			$sql.= "GRANT DELETE ON hfasigc TO '$cat'; ";
						
						
		//echo $sql;

		return $sql;
	}
	
	
/////////////////////////////77*****************************************//////////////////77
///////////////////////////////FUNCIONES PARA QUITAR PERMISOS////////////////////////////////7
////////////////////////**********************************///////////////////////////////

	function finanzas_nivel1($cat) {
		
			$sql= "REVOKE SELECT ON agtsa FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON asignaciones FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON banderas FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON banejer_acc FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON banejer_car FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON dfdes_btrab FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON cuentas FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON descuentos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON det_isr FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON detalle FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON devoluciones FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON dfasig FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON dfdes FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON dper FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON dpue FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON meom FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON fthreal400 FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON hfasig FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON hfdes FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON hftro FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON hftro_des FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON ipm_cart FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON menu_det FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON menu_master FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON mfsub FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON mfsue_et FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON mfsue_e FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON mfsue_o FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON mftro FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON msan FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON partidas FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON pbienal FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON permisos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON permper FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON resofi FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON resutro FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON retencion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON vmper FROM '$cat'; ";	
			$sql.= "REVOKE SELECT ON cuentas15 FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON des_no_efec FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON economato FROM '$cat'; ";
						
					
		//echo $sql;
	
		return $sql;
	}

	function finanzas_nivel2($cat) {
		
			$sql= "REVOKE SELECT ON agtsa FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON asignaciones FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON banderas FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON banejer_acc FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON banejer_car FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON dfdes_btrab FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON cuentas FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON descuentos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON det_isr FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON detalle FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON devoluciones FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON dfasig FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON dfdes FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON dper FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON dpue FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON meom FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON fthreal400 FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON hfasig FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON hfdes FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON hftro FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON hftro_des FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON ipm_cart FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON menu_det FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON menu_master FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON mfsub FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON mfsue_et FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON mfsue_e FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON mfsue_o FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON mftro FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON msan FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON partidas FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON pbienal FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON permisos FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON permper FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON resofi FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON resutro FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON retencion FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON vmper FROM '$cat'; ";	
			$sql.= "REVOKE SELECT ON cuentas15 FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON des_no_efec FROM '$cat'; ";
			$sql.= "REVOKE SELECT ON economato FROM '$cat'; ";
						
				//PERMISOS DE UPDATE
						
			$sql.= "REVOKE UPDATE ON agtsa FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON asignaciones FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON banderas FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON banejer_acc FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON banejer_car FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON dfdes_btrab FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON cuentas FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON descuentos FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON cuentas15 FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON des_no_efec FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON det_isr FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON detalle FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON devoluciones FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON dfasig FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON dfdes FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON economato FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON fthreal400 FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON hdareal FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON hfasig FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON hfdes FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON hftro FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON hftro_des FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON ipm_cart FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON ipm_fact FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON ipm_manto FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON mfsub FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON mfsue_et FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON mfsue_e FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON mfsue_o FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON mftro FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON partidas FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON pbienal FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON permisos FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON resofi FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON resutro FROM '$cat'; ";
			$sql.= "REVOKE UPDATE ON retencion FROM '$cat'; ";
			
			
				//PERMISOS DE INSERT
						
			$sql.= "REVOKE INSERT ON agtsa FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON asignaciones FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON banderas FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON banejer_acc FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON banejer_car FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON dfdes_btrab FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON cuentas FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON descuentos FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON cuentas15 FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON des_no_efec FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON det_isr FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON detalle FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON devoluciones FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON dfasig FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON dfdes FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON economato FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON fthreal400 FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON hdareal FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON hfasig FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON hfdes FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON hftro FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON hftro_des FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON ipm_cart FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON ipm_fact FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON ipm_manto FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON mfsub FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON mfsue_et FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON mfsue_e FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON mfsue_o FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON mftro FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON partidas FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON pbienal FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON permisos FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON resofi FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON resutro FROM '$cat'; ";
			$sql.= "REVOKE INSERT ON retencion FROM '$cat'; ";
			
			
				//PERMISOS DE DELETE
						
			$sql.= "REVOKE DELETE ON agtsa FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON asignaciones FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON banderas FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON banejer_acc FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON banejer_car FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON dfdes_btrab FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON cuentas FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON descuentos FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON cuentas15 FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON des_no_efec FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON det_isr FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON detalle FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON devoluciones FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON dfasig FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON dfdes FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON economato FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON fthreal400 FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON hdareal FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON hfasig FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON hfdes FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON hftro FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON hftro_des FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON ipm_cart FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON ipm_fact FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON ipm_manto FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON mfsub FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON mfsue_et FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON mfsue_e FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON mfsue_o FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON mftro FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON partidas FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON pbienal FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON permisos FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON resofi FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON resutro FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON retencion FROM '$cat'; ";
			$sql.= "REVOKE DELETE ON hfasigc FROM '$cat'; ";
						
						

		return $sql;
	}

	
}	
?>