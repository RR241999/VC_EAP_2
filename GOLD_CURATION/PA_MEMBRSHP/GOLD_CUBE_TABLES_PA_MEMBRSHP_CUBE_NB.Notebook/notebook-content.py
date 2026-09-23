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
# MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.MPR_IND (
# MAGIC     MPR_IND STRING
# MAGIC );
# MAGIC 
# MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.MPR_IND VALUES
# MAGIC     ("Y"),
# MAGIC     ("N");
# MAGIC 
# MAGIC     


# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC 
# MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.RFR_IND (
# MAGIC     RFR_IND STRING
# MAGIC );
# MAGIC 
# MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.RFR_IND VALUES
# MAGIC     ("Y"),
# MAGIC     ("N");
# MAGIC 
# MAGIC     


# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC 
# MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.Value_Add_Ind (
# MAGIC     size_id INT,
# MAGIC     beg INT,
# MAGIC     end INT,
# MAGIC     bucket STRING
# MAGIC );
# MAGIC 
# MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.Value_Add_Ind VALUES
# MAGIC     (1, 1, 10, 'MEWA'),
# MAGIC     (2, 11, 20, 'ABF'),
# MAGIC     (3, 21, 50, 'ACA OFF Exc'),
# MAGIC     (4, 51, 100, 'ACA On Exc'),
# MAGIC     (5, 101, 199, 'Legacy'),
# MAGIC     (6, 0, 0, 'NULL');
# MAGIC 
# MAGIC     


# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.Group_Zip_Bridge
# MAGIC (
# MAGIC EDM_CLNT_GRP_SUBGRP_ACCT_KEY INT
# MAGIC )
# MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.Group_Zip_Bridge
# MAGIC SELECT 
# MAGIC 
# MAGIC DISTINCT(EDM_CLNT_GRP_SUBGRP_ACCT_KEY)
# MAGIC 
# MAGIC FROM GOLD_LAKEHOUSE.dbo.fact_cl

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.VPC_Pilot_Category (
# MAGIC VPC_Pilot_Category_Key  DOUBLE,
# MAGIC VPC_Enabled_Indicator STRING,
# MAGIC VPC_Enabled_Type  STRING,
# MAGIC VPC_Category  STRING,
# MAGIC Is_Pilot STRING,
# MAGIC VPC_Pilot_Detail STRING,
# MAGIC VPC_Sort DOUBLE
# MAGIC );
# MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.VPC_Pilot_Category VALUES
# MAGIC       (-1,'Unknown' ,''                ,''            ,'Unknown'  ,'Unknown'                 ,6),
# MAGIC       ( 0,'NON-VPC' ,'NON-VPC'         ,'NON-VPC'     ,'NON-VPC'  ,'NON-VPC'                 ,5),
# MAGIC       ( 1,'VPC'     ,'Link Branded'    ,'Link'        ,'Pilot'    ,'Link Branded w/Pilot'    ,1),
# MAGIC       ( 2,'VPC'     ,'Link Enabled'    ,'Link Enabled','Pilot'    ,'Link Enabled w/Pilot'    ,3),
# MAGIC       ( 3,'VPC'     ,'Link Enabled'    ,'Link Enabled','Pilot'    ,'Pilot Only'              ,3),
# MAGIC       ( 4,'VPC'     ,'Link Branded'    ,'Link'        ,'Non-Pilot','Link Branded w/o Pilot'  ,1),
# MAGIC       ( 5,'VPC'     ,'Link Enabled'    ,'Link Enabled','Non-Pilot','Link Enabled w/o Pilot'  ,3),
# MAGIC       ( 6,'VPC'     ,'Link White Label','Link'        ,'Pilot'    ,'Link White Label w/Pilot' ,2),
# MAGIC       ( 7,'VPC'     ,'Link White Label','Link'        ,'Non-Pilot','Link White Label w/o Pilot',2);

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.HCC_Parent
# MAGIC (
# MAGIC     HCD_CD STRING,
# MAGIC     HCC_TYPE_CD STRING,
# MAGIC     HCC_SHRT_DESC STRING,
# MAGIC     HCC_LONG_DESC STRING
# MAGIC );
# MAGIC 
# MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.HCC_Parent VALUES
# MAGIC ("HCC00003","HCCT3","Dntl MM","Dental Member Months"),
# MAGIC ("HCC00004","HCCT3","Vsn MM","Vision Member Months"),
# MAGIC ("HCC00001","HCCT3","Med MM","Medical Member Months"),
# MAGIC ("HCC00002","HCCT3","Pharmacy MM","Pharmacy Member Months"),
# MAGIC ("HCC00847","HCCT3","Strop Loss MM","Stop Loss Member Months");


# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.Benefit_Package_Type
# MAGIC (
# MAGIC     size_id INT,
# MAGIC     beg INT,
# MAGIC     end INT,
# MAGIC     bucket STRING
# MAGIC );
# MAGIC 
# MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.Benefit_Package_Type VALUES
# MAGIC     (1, 01, 10, 'Custom'),
# MAGIC     (2, 11, 20, 'Modified Standard'),
# MAGIC     (3, 21, 50, 'Standard')
# MAGIC     ;

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC 
# MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.Sales_Lapse_Category (
# MAGIC 
# MAGIC     Sales_Lapse_Category_SK STRING,
# MAGIC     Tableau_sk STRING,
# MAGIC     Sales_Lapse_GainLoss STRING,
# MAGIC     Sales_Lapse_Category STRING,
# MAGIC     Category_Tableau STRING
# MAGIC );
# MAGIC 
# MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.Sales_Lapse_Category VALUES
# MAGIC 
# MAGIC ('Gain.PIC/NIC', 'PIC/NIC', 'Gain', 'PIC', 'PIC/NIC'),
# MAGIC ('Gain.Sale/Lapse', 'New Sale/Lapse', 'Gain', 'Sale', 'New Sale/Lapse'),
# MAGIC ('Gain.Unknown_In_Out', 'Other', 'Gain', 'Unknown', 'Other'),
# MAGIC ('Gain.PIC', 'PIC', 'Gain', 'PIC', 'PIC'),
# MAGIC ('Gain.Sale', 'New Sale', 'Gain', 'Sale', 'New Sale'),
# MAGIC ('Gain.Unknown', 'Unknown/Gain', 'Gain', 'Unknown', 'Unknown/Gain'),
# MAGIC ('Gain.PGS', 'PGS', 'PGS', 'PGS', 'PGS'),
# MAGIC ('Loss.PIC/NIC', 'PIC/NIC Loss', 'Loss', 'NIC', 'PIC/NIC'),
# MAGIC ('Loss.Sale/Lapse', 'New Sale/Lapse Loss', 'Loss', 'Lapse', 'New Sale/Lapse'),
# MAGIC ('Loss.Unknown_In_Out', 'Unknown_Gain/Loss', 'Loss', 'Unknown', 'Unknown_Gain/Loss'),
# MAGIC ('Loss.NIC', 'NIC', 'Loss', 'NIC', 'NIC'),
# MAGIC ('Loss.Lapse', 'Lapse', 'Loss', 'Lapse', 'Lapse'),
# MAGIC ('Loss.Unknown', 'Unknown_Loss', 'Loss', 'Unknown', 'Unknown_Loss'),
# MAGIC ('Keep.Retain', 'Retained', 'Keep', 'Retain', 'Retain'),
# MAGIC ('Keep.Unknown', 'Unknown_Keep', 'Keep', 'Unknown', 'Unknown_Keep'); 

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.COC_Periods
# MAGIC (
# MAGIC     Rolling_Period STRING,
# MAGIC     Order INT,
# MAGIC    Period STRING
# MAGIC );
# MAGIC 
# MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.COC_Periods VALUES
# MAGIC     ('1', 1,'Monthly'),
# MAGIC     ('3', 2,'Rolling 3'),
# MAGIC     ('6', 3,'Rolling 6'),
# MAGIC     ('12', 4,'Rolling 12'),
# MAGIC     ('YTD', 5,'YTD')
# MAGIC     ;

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }
