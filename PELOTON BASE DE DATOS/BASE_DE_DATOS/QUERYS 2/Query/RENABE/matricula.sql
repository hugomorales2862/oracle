**********TODAS LAS MATRICULAS DE LAS EMBARCACIONES
select * from rnb_matricula
 WHERE mat_codigo in ( "CCP-0907-2012", "CCP-0178-2012")
**********ACTUALIZAR SITUACION DE MATRICULA*************** 
===quitar el comentario
--UPDATE rnb_matricula set mat_situacion = 'I'
                    WHERE mat_codigo = "CCP-0907-2012"
RENABE/EMBARCACIONES/fns_buscar.php
$situacion =($situacion == 'A')?'ACTIVA':$situacion =($situacion == 'I')?'INACTIVA':'INACTIVA, ROBADA';

**************
