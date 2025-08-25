
=====================formulas excel para auditorias==================================
=SI(AA2="I";"INGRESO";SI(AA2="U";"ACTUALIZACION"))--acciones
=SI(AA2="Z";"ZONA";SI(AA2="R";"RUTINARIO"))--PAFE


=SI(AL3="I";"INGRESO";SI(AL3="U";"ACTUALIZACION";SI(AL3="D";"ELIMINADO";)))
=SI(AL3=1;"COMANDO";SI(AL3=2;"CAL";SI(AL3=99;"ELIMINADO";"")))
=================================================================================
si se bloquea la BD de desarrollo y para los alumnos
esto se resuelve con un ontape -a
=====
select * from systables a, systabauth b where a.tabid = b.tabid and grantee = "catalogo"
=====
EL RESPALDO DE LOS PERMISOS ANTES DE QUITARLOS ESTA EN ESTA TABLA
resp_perm_220323
=====
FORMULA PARA ARREGLAR HORA DEL SERVER EN EXCEL
=A1 - HORANUMERO("6:00:00")
=====
select * from sysusers;

--Privilegios 
select  systables.tabname, systabauth.* 
from    systables, systabauth 
where systables.tabid =  systabauth.tabid 
and     systables.tabid > 99 order by tabname;

--update statistics low correr al menos 1 vez x mes
unload to updstats12SEP2024.sql delimiter ";" 
select "update statistics high for table " || trim (tabname) 
from systables where tabid > 99 
and tabtype = "T";

--listado de tablas activas en la base de datos
select * 
from systables where tabid > 99 
and tabtype = "T"
and tabname not like "%aud_%"
and nrows != 0
and owner = "informix"
and tabname not like "%sys%";

=================================================
       PARA SABER LOS PERMISOS DE ALGUIEN EN TABLAS O QUIENES TIENEN PERMISOS EN ALGUNA TABLA
SELECT a.grantee, b.tabname
FROM systabauth a
JOIN systables b ON a.tabid = b.tabid
WHERE b.tabname = 'mper';
    
    
SELECT a.grantee, b.tabname
FROM systabauth a
JOIN systables b ON a.tabid = b.tabid
WHERE a.grantee = '441477';


=================================================
EJECUCION DE COMANDOS EN AUTOMATICO
crontab -e
*/5 * * * * cupsenable printronix
para verificar si esta funcionando el crontab
tail -f /var/log/cron
=================================================


Reporte Semanal
select version,max_conns,week,year from syslicenseinfo;

Para matar todas las sesiones
onmode -uy;onmode -m

para reiniciar
onmode -ky;oninit

para buscar todas las sesiones abiertas
onstat -g ses

para buscar 2 o mas palabras
onstat -g ses -r | grep -E "sideg|cit\.mind"

para buscar todo menos esa palabra
onstat -g ses -r | grep -vE "sideg|cit"

apagar el servidor
shutdown -h now

ver el peso de un archivo
du -shs

"para ver la consulta que esta ejecutando un PID (process ID)
primero hacemos un"

onstat -g ses

"para ver las conexiones activas y las que esten ejecutando una accion a la bd

lueg hacemos un "

onstat -g sql <session id> 

"para obtener la consulta exacta que esta ejecutando el PID"

select * from sysmachineinfo;
select * from syslicenseinfo;
===============reporte fin de semana=================================
select version,week,year,max_cpu_vps,max_conns from syslicenseinfo;
===============reporte fin de semana=================================
select cf_name parameter, cf_original boot_value, cf_effective effective_value from sysconfig;

select name dbspace, chunk chunknum, hex(address) address, a.number, a.uniqid, 
a.offset, a.size, a.used, a.flags,
bitval(a.flags, '0x1') used, bitval(a.flags, '0x2')  current, bitval(a.flags, '0x4')  backedup, 
bitval(a.flags, '0x8')  new, bitval(a.flags, '0x10') archived, bitval(a.flags, '0x20') temp, 
bitval(a.flags, '0x40') dropped, DBINFO ('utc_to_datetime', filltime ) timefull from syslogfil a, 
syschunks c, sysdbspaces d where a.chunk = c.chknum and c.dbsnum = d.dbsnum;


select name[1,8] dbspace,
sum(chksize) Pages_size,
sum(chksize) -sum(nfree) Pages_used,
sum(nfree) Pages_free,
round ((sum(nfree)) / (sum(chksize)) * 100, 2) percent_free
from sysdbspaces d, syschunks c
where d.dbsnum = c.dbsnum
group by 1
order by 1;

===================================================================================
===================================================================================
query para saber el peso de cualquier tabla en Mb.
SELECT ROUND(SUM(nptotal)*2/1000,2) AS Tam_en_MB
FROM sysmaster:sysptnhdr
WHERE partnum = (SELECT partnum FROM systables WHERE tabname = "rnb_zarpe_inter");
===================================================================================
===================================================================================

select name dbspace,
       d.dbsnum,
       is_mirrored,
       is_blobspace,
       is_temp,
       chknum chunknum,
       fname  device,
       offset dev_offset,
       is_offline,
       is_recovering,
       is_blobchunk,
       is_inconsistent,
       chksize Pages_size,
       nfree Pages_free,
       mfname mirror_device
from sysdbspaces d, syschunks c 
where d.dbsnum = c.dbsnum 
order by dbsnum, dbspace, chunknum;

select dbinfo("DBSPACE",partnum) dbspace, 
name database, 
owner, 
is_logging, 
is_buff_log 
from sysdatabases 
order by dbspace, name;

select  dbsname, 
sum( pe_size ) total_pages from systabnames, 
sysptnext 
where partnum = pe_partnum 
group by 1 
order by 2 desc;


select * from sysusers;

select  systables.tabname, systabauth.* 
from    systables, systabauth 
where systables.tabid =  systabauth.tabid 
and     systables.tabid > 99 order by tabname;

RUTAS IMPORTANTES
PARA ONLINE.LOG onstat -m
/opt/informix/tmp

para el bkup de ingresos
/backup/informix/auditoria/

asi se definio el ultimo chunk No.10
onspaces -a mdndbs -p /IFMXDATA/prod/mdndbs_chk10 -o 0 -s 20000000

ALTER TABLE nombre_de_la_tabla MODIFY nombre_del_campo TIPO_DE_CAMPO(250);
ALTER TABLE municion_almacen MODIFY almacen_id SERIAL;
ALTER TABLE aud_tiro_totales MODIFY tir_precision DECIMAL(20,5);
ALTER TABLE aud_tiro_totales MODIFY desp_tir_precision DECIMAL(20,5);
ALTER TABLE apresto_asesor add constraint foreign key (ase_funcion) references apresto_funciones (func_id)
=============================================================================
Alter table tri_etapas add ponderacion smallint;
Alter table aud_tri_etapas add ponderacion smallint before desp_id;
Alter table aud_tri_etapas add desp_ponderacion smallint before accion;
LUEGO ELIMINAR Y SUBIR LOS TRIGGERS DE NUEVO
DROP TRIGGER INS_tri_etapas
=============================================================================
===================================================================================
===================================================================================

PARA ELIMINAR USUARIOS DE SYSUSERS:

./home/informix/borrarusuarios.sh

PARA VISUALIZAR LOS LOGS DE SSH:

cat /var/log/secure
 


===================================================================================
===================================================================================

rutia info 73.23
7eLe7ipulArAphi@2022#
ceBS6r@*628gkUp@2023#

info info 73.23
65b%QlN59H&0dvc@2022#
h30@Y5Dx#WPv5Hr@2023#

rutia 73.19 --backups
sR3$h@8P87B8Sae@2022#
G0&TE2uj#&tr30d@2023#

desarrollo rutia 73.30
$yfeA6AkZ8KK77#@2022#
p@OQH92l7!#*VXq@2023#

desarrollo info 73.30
sR3&h@8P83B8Sae@2023#

rutia 73.51--autocom archivos
4@!$0B2WU5RHf!a@2023#
levantar

192.168.73.71 alumnos
root/root01
root/informix
informix/informix


--para capturar los permisos de un usuario, para corroborar que a un usuari si se le dieron los permisos correctos
dbschema -q -d mdn -p catalogo > catalogo.sql--para depurar permisos
dbschema -q -d mdn -p 634543 > 634543.sql --ejemplo
-- para capturar todos los permisos que tiene una tabla, usuarios que tienen permisos sobre la tabla
 
dbschema -q -d mdn -t mper -p all > mper.sql
dbschema -q -d mdn -t apresto_asistencia -p all > apresto_asistencia.sql

alias menu='ls -al'

onstat -u -r|grep -vE "informix"
onstat -u -r|grep daemon
onstat -g ses -r | grep -E "sideg|cit\.mind"

535666
AM56god1n3z66

========================================================================
QUERIES PARA AGREGAR A APLICACION DE PERMISOS
insert into grupo_menuautocom values (70,"ANALISIS DE MEDIOS")
insert into menuautocom values (268,"AMC_ADMINISTRADOR","AMC_ADMIN",70);
========================================================================

======================================================================
para buscar alias de comandos y su referncia "which"
ej: which especiales
alias especiales='cd /home/sps/441972/OfAyuBD/especiales;clear'
        /usr/bin/cd
======================================================================

mount -t ntfs-3g /dev/sdc2 /media/usb

AAA#J305417

SRVDJV

mv /home/informix/mdn.exp /scratch/exp28feb23
=======================================================================
ALTER TABLE
alter table aud_capta_requisitos modify desp_regi_nombre lvarchar(800)
=======================================================================

========================================================================
PARA REINICIAR SERIAL
ALTER TABLE capta_requisitos DROP regi_id;
ALTER TABLE capta_requisitos ADD regi_id serial before regi_nombre;
========================================================================

========================================================================
UPDATE DE INFO EN UNA TABLA
UPDATE nombre_de_tabla
SET columna1 = valor1, columna2 = valor2, ...
WHERE condicion;
========================================================================

solarwinds
crmuñoz
C1b3rSW2025

fortigate
NETADMIN_MDN
F&IK8y#N4y^eCc
=======================================================================
CHIVO PARA INSTALACION DE INFORMIX 14.1 PREVIO A INSTALARLO

yum update
yum install  nogpgcheck -y gcc ncurses-c++-libs ncurses-compat-libs java-1.8.0-openjdk ncurses-libs ncurses-libs.i686 ncurses-devel ncurses-devel.i686 glibc.i686 libnsl libnsl.i686 tmux nano mc
yum install  nogpgcheck pam.i686
yum install  nogpgcheck k
yum install  nogpgcheck python3-dnf-plugin-versionlock
=======================================================================

las sanciones estan amarradas con msan y sand

============================================================================
SCP es el comando para copias seguras de linux a linux (servidores) o de linux a windows (server/pc)

scp /IFMXDATA2/bdp_31012023 root@192.168.73.19:/bdback/bdproduccion/2023/enero/semana4/ --desde 73.23 al 73.19

scp /bdback/bdproduccion/2023/enero/semana4/ informix@192.168.73.23:/IFMXDATA2/bdp_31012023 --desde 73.19 al 73.23

scp -r /IFMXDATA3/mdn/ root@192.168.73.71:/IFMXDATA2/

scp /bdback/bdproduccion/2023/agosto/semana1/dbp_08082023 root@192.168.73.23:/IFMXDATA2/
-- EL SERVIDOR QUE RECIBE TIENE QUE RECIBIR CON ROOT -- 
al realizar la copia le pedira la contraseña del servidor donde se quiere pegar el archivo, al ingresar la contraseña se inicia la copia


scp /bdback/bdproduccion/2023/enero/semana4/dbp_22102023 root@192.168.73.30:/backup/informix/dbp_22102023.0
informix


 useradd -g personal -G personal -d /edeg/produc/menus -s /bin/bash -c "Alferez de Navio Erick Ronel Cardenas Cardenas" 614206
      echo "614206" | passwd --stdin $usuario


================================================================================================================== PARA ACTUALIZAR BD DEL 73.30

1. SE VERIFICA QUE EL 73.30 TENGA LOS MISMOS CHUNKS QUE EL 73.23

       onstat -d
       si no, se crean con el archivo: PROCEDIMIENTO PARA CREAR CHUNKS.pdf


2. CON ROOT SE ENVIA EL NIVEL.0 DEL 73.23 HACIA LA MISMA RUTA EN EL 73.30

       scp /backup/informix/nivel.0 root@192.168.73.30:/backup/informix/nivel.0

       PEDIRA LA CONTRASEÑA DE ROOT DEL 73.30

       SE MIDE EL NIVEL.0 DEL 73.30 PARA CORROBORAR QUE SE HAYA ACTUALIZADO CORRECTAMENTE

2. SE DETIENE EL SERVIDOR, YA QUE NO SE PUEDE LEVANTAR EL BACKUP EN CALIENTE
       
       onmode -ky

3. SE EJECUTA EL LEVANTADO DEL BACKUP EN

       ontape -r

4. EL SISTEMA PREGUTARA SI SE DESEAN RESTAURAR LOS LOGS, LA OPCION A SELECCIONAR ES [NO].
       ESTO ES ASI PORQUE LA BD DE PRUEBA NO TIENE LOS MISMOS ESPACIOS FISICOS QUE PRODUCCION, ENTONCES PRODUCCION NO CABE COMPLETA EN ESTOS DISCOS. 

       Continue restore? (y/n)y   --solo aca es Y
       -- EN EL RESTO ES N
       Do you want to back up the logs? (y/n)n
       Using the backup and restore filter /bin/gunzip.
       Read/Write End Of Medium enabled: blocks = 7616
       Restore a level 1 archive (y/n) n
       Do you want to restore log tapes? (y/n)n

       --(este proceso tarda alrededor de 45 minutos)

5.  LA BD ESTARA EN MODO QUIESCENT, Y ES NECESARIO COLOCARLA EN MODO ON-LINE

       onmode -m

6. LISTO! ASI SE LEVANTA UN BACKUP