https://edelivery.oracle.com/osdc/faces/SoftwareDelivery
paso uno cargar variables de db  . db.env  o subir el archivo a .bash_profile  . /home/oracle/db.env luego realizar echo a $ORACLE_SID $ORACLE_HOME
paso dos hacer un stop al lister lsnrctl stop  
paso tres hacer un shutdown a la db  shutdown immediate 

ps -ef | grep pmon   -- si el servicio esta arriba 
ps -ef | grep tns    -- listener 

mover instaladores a un directorio al server   
movernos a la ubicacion donde estaran los instaladores cd /opt/media
 

unzip -q p6880880_190000_Linux-x86-64.zip
mv $ORACLE_HOME/OPatch  $ORACLE_HOME/OPatch.back
mv OPatch/ $ORACLE_HOME
$ORACLE_HOME/OPatch/opatch version

investigar cual es el id de parche de cada uno  https://www.cndba.cn/dave/article/131694
para cuando descomprimamos sepamos cual instalar 


unzip -q p37957391_190000_Linux-x86-64.zip
moveros hacia el directorio que se descomprimio 

ahora nos guiaremos de https://www.cndba.cn/dave/article/131694  para saber cual corresponde 
por ahora el de db sera 37960098
el de ocw 37962946
nos dirigimos al primir directorio 37960098 y ejecutamos en orden los siguientes comandos 

$ORACLE_HOME/OPatch/opatch prereq CheckConflictAgainstOHWithDetail -ph ./
$ORACLE_HOME/OPatch/opatch apply
$ORACLE_HOME/OPatch/opatch lspatches


lsnrctl start 

startup 

ps -ef | grep pmon   -- si el servicio esta arriba 
ps -ef | grep tns    -- listener 