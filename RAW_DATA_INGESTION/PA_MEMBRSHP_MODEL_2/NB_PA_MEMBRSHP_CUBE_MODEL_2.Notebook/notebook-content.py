# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "820ff289-52b1-4c8f-8705-a88c51f147ce",
# META       "default_lakehouse_name": "GOLD_LAKEHOUSE",
# META       "default_lakehouse_workspace_id": "890304bc-64e8-46be-93d9-8ea5a5a56669",
# META       "known_lakehouses": [
# META         {
# META           "id": "820ff289-52b1-4c8f-8705-a88c51f147ce"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC 
# MAGIC CREATE OR REPLACE TABLE VisitType (
# MAGIC   VISITTYPE STRING,
# MAGIC   PROC_CD STRING,
# MAGIC   PROC_MDFR STRING,
# MAGIC   PROC_KEY STRING,
# MAGIC   RVNU_CD STRING
# MAGIC );
# MAGIC 
# MAGIC INSERT INTO VisitType VALUES
# MAGIC   ('Urgent Care','99421','','99421_2023',''),
# MAGIC   ('Wellness','99385','GT','99385GT',''),
# MAGIC   ('Wellness','99386','GT','99386GT',''),
# MAGIC   ('Wellness','99395','GT','99395GT',''),
# MAGIC   ('Wellness','99396','GT','99396GT',''),
# MAGIC   ('Urgent Care','99422','','99422',''),
# MAGIC   ('Behavioral Health','90832','','90832',''),
# MAGIC   ('Behavioral Health','90834','','90834',''),
# MAGIC   ('Behavioral Health','90837','','90837',''),
# MAGIC   ('Behavioral Health','99204','GT','99204GT',''),
# MAGIC   ('Behavioral Health','99213','GT','99213GT',''),
# MAGIC   ('Behavioral Health','99214','GT','99214GT',''),
# MAGIC   ('Specialty - Sleep','99204','GQ','99204GQ',''),
# MAGIC   ('Specialty - Sleep','99213','GQ','99213GQ',''),
# MAGIC   ('Specialty - Sleep','99214','GQ','99214GQ',''),
# MAGIC   ('Specialty - Sleep','95806','','95806',''),
# MAGIC   ('Specialty - Dermatology','99423','GQ','99423GQ',''),
# MAGIC   ('Primary Care','99202','','99202_2023',''),
# MAGIC   ('Primary Care','99212','GT','99212GT_2023',''),
# MAGIC   ('Urgent Care','99441','','99441_2023',''),
# MAGIC   ('Urgent Care','99442','','99442_2023',''),
# MAGIC   ('Urgent Care','99443','','99443_2023',''),
# MAGIC   ('Urgent Care','S9083','','S9083',''),
# MAGIC   ('Urgent Care','S9084','','S9084',''),
# MAGIC   ('Urgent Care','S9085','','S9085',''),
# MAGIC   ('Urgent Care','S9086','','S9086',''),
# MAGIC   ('Urgent Care','S9087','','S9087',''),
# MAGIC   ('Urgent Care','S9088','','S9088',''),
# MAGIC   ('Urgent Care','99058','','99058',''),
# MAGIC   ('Urgent Care','99059','','99059',''),
# MAGIC   ('Urgent Care','99060','','99060',''),
# MAGIC   ('Urgent Care','G0380','','G0380',''),
# MAGIC   ('Urgent Care','G0381','','G0381',''),
# MAGIC   ('Urgent Care','G0382','','G0382',''),
# MAGIC   ('Urgent Care','G0383','','G0383',''),
# MAGIC   ('Urgent Care','G0384','','G0384',''),
# MAGIC   ('Urgent Care','','','0456','0456'),
# MAGIC   ('Urgent Care','','','0516','0516'),
# MAGIC   ('Urgent Care','','','0526','0526'),
# MAGIC   ('Wellness','99384','GT','99384GT_2024',''),
# MAGIC   ('Wellness','99394','GT','99394GT_2024',''),
# MAGIC   ('Primary Care','99213','GT','99213GT_2024',''),
# MAGIC   ('Primary Care','99213','GQ','99213GQ_2024',''),
# MAGIC   ('Primary Care','99213','','99213_2024',''),
# MAGIC   ('Urgent Care','99212','GT','99212GT_2024',''),
# MAGIC   ('Urgent Care','99212','GQ','99212GQ_2024','');

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC 
# MAGIC CREATE OR REPLACE TABLE InteractionsProvider (
# MAGIC   VNDR_NM STRING,
# MAGIC   PROVIDER_NAME STRING,
# MAGIC   Source STRING
# MAGIC );
# MAGIC 
# MAGIC INSERT INTO InteractionsProvider VALUES
# MAGIC   ('LIVEHEALTHONLINE', 'Live Health Online', 'LiveHealth Online Supplemental data'),
# MAGIC   ('HYDROGEN HEALTH', 'K Health', 'K Health Supplemental data'),
# MAGIC   ('', 'Other', '');

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC 
# MAGIC CREATE OR REPLACE TABLE COC_Periods (
# MAGIC   Rolling_Period STRING,
# MAGIC   Order INT,
# MAGIC   Period STRING
# MAGIC );
# MAGIC 
# MAGIC INSERT INTO COC_Periods VALUES
# MAGIC   ('1', 1, 'Monthly'),
# MAGIC   ('3', 2, 'Rolling 3'),
# MAGIC   ('6', 3, 'Rolling 6'),
# MAGIC   ('12', 4, 'Rolling 12'),
# MAGIC   ('YTD', 5, 'YTD'),
# MAGIC   ('15', 6, 'Rolling 12 w runout');

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC 
# MAGIC CREATE OR REPLACE TABLE VirtualProvider (
# MAGIC   Provider_Name STRING,
# MAGIC   BILLG_PROV_TAX_ID STRING,
# MAGIC   NPI STRING
# MAGIC );
# MAGIC 
# MAGIC INSERT INTO VirtualProvider VALUES
# MAGIC   ('K-Health','841782311','1740752161'),
# MAGIC   ('K-Health','832925394','1740752161'),
# MAGIC   ('K-Health','833345615','1922765528'),
# MAGIC   ('LHO','541237939','');

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }
