NOMINAS OFICIALES nomiof0216.out
:1,6435w!gruof1.out
:6435,14686w!gruof2.out
:14686,24518w!gruof3.out
:24518,32369w!gruof4.out
:32369,43261w!gruof5.out
:43261,55737w!gruof6.out
:55737,66692w!gruof7.out
:66692,66887w!gruof8.out


15015w!gruof2.out
:15015,24847w!gruof3.out
:24847,32701w!gruof4.out
:32701,43593w!gruof5.out
:43593,56066w!gruof6.out
:56066,67022w!gruof7.out
:67022,67215w!gruof8.out



BOLETAS OFICIALES bolofs0216.out
:1,30329w!bolgru1.out
:30329,63263w!bolgru2.out
:63263,104316w!bolgru3.out
:104316,132069w!bolgru4.out
:132069,176585w!bolgru5.out
:176585,210476w!bolgru6.out
:210476,250209w!bolgru7.out
:250209,250734w!bolgru8.out


NOMINA TROPA nomtr02.out
:1,14817w!grutro1.out
:14817,32703w!grutro2.out
:32703,43461w!grutro3.out
:43461,53428w!grutro4.out
:53428,55210w!grutro5.out
:55210,63988w!grutro6.out
:63988,66907w!grutro7.out


valgru1.out



SELECT desc_desc_lg,sum(hfa_mensual)
FROM desc_desc_lg,hfasigc
WHERE hfa_codigo = desc_codigo
AND hfa_fecha = "2016-02-11"
GROUP BY 1
ORDER BY 1
----QUERY PARA OBTENER LA CFAC



UPDATE hfasig SET hfa_depen = 2670 
WHERE YEAR(hfa_fecha) = YEAR(TODAY)
AND MONTH(hfa_fecha)  = MONTH(TODAY) 
AND hfa_catalogo IN 
   (SELECT per_catalogo 
   FROM mper,morg 	
   WHERE per_plaza = org_plaza
   AND org_dependencia = 2040
   AND org_jerarquia[1,8] = "08020200"
   )






