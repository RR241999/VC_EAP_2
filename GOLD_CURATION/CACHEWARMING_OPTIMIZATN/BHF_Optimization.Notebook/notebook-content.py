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
spark.conf.set("spark.sql.parquet.datetimeRebaseModeInRead", "LEGACY")
spark.conf.set("spark.sql.parquet.datetimeRebaseModeInWrite", "LEGACY")


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# MARKDOWN ********************

# 


# MARKDOWN ********************

# **VACUUM**

# CELL ********************

# MAGIC %%sql
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.work_adim_prda_bhf_mbr_dtl_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.work_adim_prda_bhf_ivr_call_dtl_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.work_mbr_mdcl_prod_dtl_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.wbs_mbr_sumry_pgm_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.DIM_PRDA_BHF_MBR_TYPE_BHF RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.dim_prda_bhf_rwrd_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.dim_prda_bhfp_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.dim_prda_brth_wt_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.dim_prda_call_chat_type_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.dim_prda_dgtl_stts_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.dim_prda_gsttnl_dlvry_age_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.dim_prda_life_ctgry_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.dim_prda_mbr_age_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.dim_prda_mtrnty_risk_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.dim_prda_prfl_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.Product_Chart_Field_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.client_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.work_mbr_hw_txnmy_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.member_account_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.medical_Product_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.med_lkup_prod_key_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.sfact_prod_mdcl_addnl_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.group_mbr_range_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.group_derived_mbr_range_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.group_contract_range_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.standard_age_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.incurred_month_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.funding_chart_field_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.company_chart_field_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.mbu_chart_field_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.group_zip_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.gender_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.jaa_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.med_ntwk_lkup_lvl1_bhf RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.med_ntwk_lkup_lvl2_bhf RETAIN 168 HOURS;
# MAGIC 


# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# MARKDOWN ********************

# **OPTIMIZE**

# CELL ********************

# MAGIC %%sql
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.work_adim_prda_bhf_mbr_dtl_bhf;
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.work_adim_prda_bhf_ivr_call_dtl_bhf;
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.work_mbr_mdcl_prod_dtl_bhf;
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.wbs_mbr_sumry_pgm_bhf;

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# MARKDOWN ********************

# **OPTIMIZE ZORDER**

# CELL ********************

# MAGIC %%sql
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.DIM_PRDA_BHF_MBR_TYPE_BHF ZORDER BY (BHF_MBR_TYPE_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.dim_prda_bhf_rwrd_bhf ZORDER BY (BHF_Reward_Active_Profile_Key);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.dim_prda_bhfp_bhf ZORDER BY (BHFP_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.dim_prda_brth_wt_bhf ZORDER BY (BRTH_WT_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.dim_prda_call_chat_type_bhf ZORDER BY (CALL_CHAT_TYPE_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.dim_prda_dgtl_stts_bhf ZORDER BY (DGTL_STTS_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.dim_prda_gsttnl_dlvry_age_bhf ZORDER BY (GSTTNL_DLVRY_AGE_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.dim_prda_life_ctgry_bhf ZORDER BY (LIFE_CTGRY_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.dim_prda_mbr_age_bhf ZORDER BY (MBR_AGE_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.dim_prda_mtrnty_risk_bhf ZORDER BY (MTRNTY_RISK_LVL_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.dim_prda_prfl_bhf ZORDER BY (PRFLG_CMPLT_PHASE_KEY);
# MAGIC 
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.member_account_bhf ZORDER BY (Member_Account_Key);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.work_mbr_hw_txnmy_bhf ZORDER BY (HW_PROD_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.med_lkup_prod_key_bhf ZORDER BY (PROD_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.client_bhf ZORDER BY (EDM_CLNT_GRP_SUBGRP_ACCT_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.medical_product_bhf ZORDER BY (PROD_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.sfact_prod_mdcl_addnl_bhf ZORDER BY (PROD_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.incurred_month_bhf ZORDER BY (Incurred_Year_Month_Nbr );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.company_chart_field_bhf ZORDER BY (CMPNY_CF_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.funding_chart_field_bhf ZORDER BY (FUNDG_CF_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.gender_bhf ZORDER BY (GNDR_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.group_contract_range_bhf ZORDER BY (GRP_CNTRCT_SIZE_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.group_mbr_range_bhf ZORDER BY (GRP_MBR_SIZE_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.group_derived_mbr_range_bhf ZORDER BY (GRP_MBR_RNG_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.jaa_bhf ZORDER BY (JAA_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.mbu_chart_field_bhf ZORDER BY (MBU_CF_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.product_chart_field_bhf ZORDER BY (PROD_CF_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.standard_age_bhf ZORDER BY (STNDRD_AGE_MNTH_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.group_zip_bhf ZORDER BY (ZIP_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.med_ntwk_lkup_lvl2_bhf ZORDER BY (Network_Number);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.med_ntwk_lkup_lvl1_bhf ZORDER BY (Network_Number);

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }
