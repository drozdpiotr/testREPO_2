/*Remove additional fields that currently exist*/
DELETE
FROM JM_NEXUS_FL_TO_STG_MPNGS
WHERE SRC_FILE_NM = 'ES_IMS_RETAIL_SALES'
AND SRC_FLD_NM IN (
'EINUS_TOT'
,'ELAST_PBLPRC'
,'ELAST_MNFPRC'
,'EINUN_CU_SI'
,'EINUN_DDD'
,'EINUN_SU'
);

/*Reorder of fields*/
UPDATE JM_NEXUS_FL_TO_STG_MPNGS
SET SRC_FLD_ID = 4
WHERE SRC_FILE_NM = 'ES_IMS_RETAIL_SALES'
AND SRC_FLD_NM = 'EINEU_MNF_SI'
AND SRC_FLD_ID = 5;

UPDATE JM_NEXUS_FL_TO_STG_MPNGS
SET SRC_FLD_ID = 5
WHERE SRC_FILE_NM = 'ES_IMS_RETAIL_SALES'
AND SRC_FLD_NM = 'EINUN_TOT_SI'
AND SRC_FLD_ID = 6;

COMMIT;

--Michal Krolik
