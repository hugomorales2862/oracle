UPDATE fmper set per_plaza = 9999, per_desc_empleo = "BAJA A SU SOLICITUD"  WHERE per_catalogo = 642918;
UPDATE fmper set per_plaza = 6925709, per_desc_empleo = "2ESC 4TO. PTN 1RA CIA"  WHERE per_catalogo = 645093;

UPDATE hfasig SET hfa_unidad = 4137, hfa_liquido = (hfa_liquido - 185), hfa_sueldo = (hfa_sueldo - 185) WHERE hfa_fecha = "2015-08-12" AND hfa_catalogo = 645093

UPDATE fmper set per_plaza = 7801004 WHERE per_catalogo = 542290;
UPDATE fmper set per_plaza = 7801995 WHERE per_catalogo = 552901;
UPDATE fmper set per_plaza = 7801921 WHERE per_catalogo = 617480;
INSERT INTO jefes VALUES (7768996,"0100","VICE-MINISTRO DE LA DEFENSA NACIONAL")
INSERT INTO jefes VALUES (7739220,"0100","VICE-MINISTRO DE MARINA DE LA DEFENSA NACIONAL")
UPDATE jefes SET jef_puesto = "VICE-MINISTRO DE POLITCA DE DEFENSA DEL MDN"  WHERE jef_plaza = 7768996 and jef_categoria = "0100"


UPDATE hfasig SET hfa_ipm = 909.19, hfa_liquido = (hfa_liquido - 909.19)   WHERE hfa_Fecha = "2015-08-12" and hfa_catalogo = 353912;
UPDATE hfasig SET hfa_prima_resp = 1200, hfa_liquido = (hfa_liquido + 920) WHERE hfa_Fecha = "2015-08-12" and hfa_catalogo = 613959;
UPDATE hfasig SET hfa_grupo = 5 WHERE hfa_depen = 31 AND hfa_fecha = "2015-08-12"

SELECT pue_catalogo,pue_plaza,pue_ceom
FROM dpue
WHERE pue_fec_cese = "2015/07/31"
AND pue_catalogo IN 
( SELECT per_catalogo FROM mper,grados,morg
  WHERE per_plaza = org_plaza
  AND   per_grado = gra_codigo
  AND   org_dependencia IN (2800,2810,2820,2830)
  AND   gra_clase = 4
)
AND pue_catalogo NOT IN (select fc_catalogo FROM fceom)

-----TROPA
:1,14090w!grutro1.out
:14090,27358w!grutro2.out
:27358,35147w!grutro3.out
:35147,45047w!grutro4.out
:45047,46762w!grutro5.out
:46762,55475w!grutro6.out
:55475,58918w!grutro7.out



---VALES
:1,595w!valgru1.out
:595,1519w!valgru2.out
:1519,2509w!valgru3.out
:2509,3498w!valgru4.out
:3498,4093w!valgru5.out
:4093,4884w!valgru6.out
:4884,5676w!valgru7.out




:1,6566w!gruof1.out
:6566,14686w!gruof2.out
:14686,24516w!gruof3.out
:24516,32305w!gruof4.out
:32305,43060w!gruof5.out
:43060,55340w!gruof6.out
:55340,66360w!gruof7.out
:66360,66556w!gruof8.out

:1,29471w!bolgru1.out
:29471,62009w!bolgru2.out
:62009,103755w!bolgru3.out
:103755,131705w!bolgru4.out
:131705,174044w!bolgru5.out
:174044,204669w!bolgru6.out
:204669,244763w!bolgru7.out
:244763,245289w!bolgru8.out