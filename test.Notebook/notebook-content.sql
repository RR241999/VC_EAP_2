-- Fabric notebook source

-- METADATA ********************

-- META {
-- META   "kernel_info": {
-- META     "name": "synapse_pyspark"
-- META   },
-- META   "dependencies": {
-- META     "lakehouse": {
-- META       "default_lakehouse": "820ff289-52b1-4c8f-8705-a88c51f147ce",
-- META       "default_lakehouse_name": "GOLD_LAKEHOUSE",
-- META       "default_lakehouse_workspace_id": "890304bc-64e8-46be-93d9-8ea5a5a56669",
-- META       "known_lakehouses": [
-- META         {
-- META           "id": "820ff289-52b1-4c8f-8705-a88c51f147ce"
-- META         }
-- META       ]
-- META     }
-- META   }
-- META }

-- CELL ********************

CREATE TABLE GOLD_LAKEHOUSE.dbo.Test
USING DELTA
AS
SELECT
    CAST(SNAP_YEAR_MNTH_NBR AS INT) AS SNAP_YEAR_MNTH_NBR,
        CAST(SRC_GRP_NBR AS STRING) AS EAP_Source_Group_Number,
            CAST(EAP_GRP_ID AS STRING) AS EAP_Client_Group_ID,
                CAST(GRP_NM AS STRING) AS EAP_Client_Group_Name
                FROM GOLD_LAKEHOUSE.dbo.DIM_EAP_GRP;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }
