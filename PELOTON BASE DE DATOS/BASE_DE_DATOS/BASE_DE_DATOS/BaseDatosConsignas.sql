<===================================================================================>
<=================== CONSIGNAS DEL PELOTÓN DE BASE DE DATOS ========================>
<===================================================================================>
			    SERVIDOR HERCULES: 192.168.73.23 (root, informix)

/* Ver el estado de la Base de Datos */
onstat - (online)


/* Dar permisos de impresión */
printronix cupsanable			    

<===================================================================================>
<============================== USUARIOS AUTOCOM ===================================>
<===================================================================================>	
	* Ingresar al servidor Hercules (root): 

	* Escribir "menu"

				  1.-  CREACION DE  USUARIOS.
         		  2.-  CAMBIO DE PASSWORD.
         		  3.-  ELIMINAR USUARIOS.
         		  4.-  SALIR.

	* Seleccionar la opción a utilizar

	* Llenar campos 

	* Retornar al usuario root escribiendo la opción "4"

<===================================================================================>
<========================== DAR PERMISOS PARA AUTOCOM ==============================>
<===================================================================================>
* Ingresar al servidor Hercules (informix):

* Escribir "dbaccess" o "bd"

* Seleccionar "Query-language"

* Seleccionar "Use-editor"

* Enter

* Escribir "i" de INSERTAR 

* Pegar el Script con click derecho del mouse

* Presionar "ESC"

* Presionar "shift" + "z"+"z" (seguido)

* Presionar enter en "run" 

* retornar presionando "Exit"

<===================================================================================>
<============================ PROCEDIMIENTO DE BACKUP ==============================>
<===================================================================================>

1) Comando para cerrar sesiones activas o que  llevan tiempo de inactividad
   en el servidor previo a correr los proceso que dan inicio al backup:

			onmode -uy;onmode -m

2) Comando para ver el tamaño del Backup:

		    du -sh/backup/informix/nivel.0

3) Comando para colocar el Backup anterior en blanco:

		cat /dev/null > /backup/informix/nivel.0

4) Comando para iniciar sesión como "informix" y poder hacer el Backup:

			  su - informix

5) Dentro del usuario "informix" correr los siguientes procesos:
		(Este proceso demora un tiempo)
		
			     tiempos 

6) Siguiente proceso:						bienal

7) Seleccionar la opción siguiente: 		Procesar

8) Seleccionar la opción siguiente: 		Si

9) Seleccionar la opción siguiente: 		No

10) Seleccionar la opción siguiente: 		Salir

11) Comando para ejecutar el respaldo del Backup: (Este proceso demora)

				correr

12) Terminado de Correr el  respaldo del  Backup,  ejecutar el comando para
    verificar la versión de informix instalada: 

				onstat - 

13) Comando para efectuar Backup de la base de datos de forma comprimida:
		(Este proceso demora)

			     ontape -s -L 0

14) Finalizada la compresión de nuestra Base de Datos, salimos  del usuario 
    informix colocando EXIT  (en Minúsculas) y  retornamos al usuario root:

				exit

15) Situados en el usuario "root" ejecutamos copia segura  con la siguiente 
    ruta:

	scp /backup/informix/nivel.0 root@192.168.73.19:/backupbd/bdpr
	oduccion/2022/mayo/semana1/bdp_03052022

Nota: recuerde cambiar de ser necesario campos:  año/mes/semana/nombre
      de su copia segura con el día mes y año correspondiente.

16) Coloque el password del servidor a donde se guardará su respaldo, 
    luego dará inicio.  

		   NEMESIS		192.168.73.19

17) Finalizada la copia donde se almaceno nuestra copia procedemos a salir
    y cerrar nuestro gestor de Base de Datos.

    								701888
<===================================================================================>
<===================================== FIN  ========================================>
<===================================================================================>

