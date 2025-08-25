-------------------------aqui se hace el update de cambio el codigo de pago de situacion:2  a situacion:1------
UPDATE morg   SET org_cod_pago = 1
            WHERE org_plaza in  ("6895050", "6896008")
