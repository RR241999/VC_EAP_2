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


spark.conf.set("spark.sql.parquet.datetimeRebaseModeInRead", "LEGACY")
spark.conf.set("spark.sql.parquet.datetimeRebaseModeInWrite", "LEGACY")

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql
-- MAGIC 
-- MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.ValueAdd_base (
-- MAGIC     size_id INT,
-- MAGIC     beg INT,
-- MAGIC     end INT,
-- MAGIC     bucket STRING
-- MAGIC );
-- MAGIC 
-- MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.ValueAdd_base VALUES
-- MAGIC     (1, 1, 10, 'MEWA'),
-- MAGIC     (2, 11, 20, 'ABF'),
-- MAGIC     (3, 21, 50, 'ACA OFF Exc'),
-- MAGIC     (4, 51, 100, 'ACA On Exc'),
-- MAGIC     (5, 101, 199, 'Legacy'),
-- MAGIC     (6, 0, 0, 'NULL');
-- MAGIC 
-- MAGIC     


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql
-- MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.Periods (
-- MAGIC     Rolling_Period STRING,
-- MAGIC     Order INT,
-- MAGIC     Period STRING
-- MAGIC     
-- MAGIC );
-- MAGIC 
-- MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.Periods VALUES
-- MAGIC     ('1', 1, 'Monthly'),
-- MAGIC     ('3', 2, 'Rolling 3'),
-- MAGIC     ('6', 3,'Rolling 6'),
-- MAGIC     ('12',4,'Rolling 12'),
-- MAGIC     ('YTD',5,'YTD'),
-- MAGIC     ('15', 6,'Rolling 12 w runout');


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.Excel_Navigation (
    Navigation STRING
    
);

INSERT INTO GOLD_LAKEHOUSE.dbo.Excel_Navigation VALUES
    ('Current Month Data'),
    ('Current + Historical Data (39 Months)')
    ;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************


%%sql
CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.GRP_TABLE (
    Group_Type STRING,
    Sort_Number INT
);

INSERT INTO GOLD_LAKEHOUSE.dbo.GRP_TABLE VALUES
    ('Groups With BHF', 1),
    ('Groups Without BHF', 2);

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql
-- MAGIC 
-- MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.DRILL_TABLE (
-- MAGIC     Type STRING
-- MAGIC     
-- MAGIC );
-- MAGIC 
-- MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.DRILL_TABLE VALUES
-- MAGIC     ( "  " );

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql
-- MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.DRILL_TABLE_2 (
-- MAGIC     Value STRING
-- MAGIC     
-- MAGIC );
-- MAGIC 
-- MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.DRILL_TABLE_2 VALUES
-- MAGIC     ( "  " );

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql
-- MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.SMART_REWARDS (
-- MAGIC     Reward_Type STRING,
-- MAGIC     Sort_Number INT
-- MAGIC );
-- MAGIC 
-- MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.SMART_REWARDS VALUES
-- MAGIC         ('BHF Profile', 1 ),
-- MAGIC         ( 'BHF Pregnancy Screener', 2 ),
-- MAGIC         ( 'BHF Pre-Natal Questionnaire', 3 ),
-- MAGIC         ( 'BHF Post-Partum Questionnaire', 4 );
-- MAGIC         

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql
-- MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.LifeStyle(
-- MAGIC     Lifestyle_Type STRING,
-- MAGIC     Sort_Number INT
-- MAGIC );
-- MAGIC 
-- MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.LifeStyle VALUES
-- MAGIC         ('LGBTQ+', 1 ),
-- MAGIC         ( 'Breast Feeding', 2 ),
-- MAGIC         ( 'Black Maternal', 3 ),
-- MAGIC         ( 'Gestational Hypertension', 4 );
-- MAGIC         

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

-- MAGIC %%sql
-- MAGIC CREATE OR REPLACE TABLE GOLD_LAKEHOUSE.dbo.bhf_ind(
-- MAGIC     Category STRING,
-- MAGIC     Sort_Number INT
-- MAGIC );
-- MAGIC 
-- MAGIC INSERT INTO GOLD_LAKEHOUSE.dbo.bhf_ind VALUES
-- MAGIC         ( 'Pregnancy Loss/Deleting a Pregnancy', 1 ),
-- MAGIC         ('Delivery Check-in', 2 ),
-- MAGIC         ('Post-Natal Depression (EPDS)', 3 )
-- MAGIC         
-- MAGIC         
-- MAGIC         

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }
