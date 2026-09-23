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

spark.conf.set("spark.sql.parquet.datetimeRebaseModeInRead", "LEGACY")
spark.conf.set("spark.sql.parquet.datetimeRebaseModeInWrite", "LEGACY")


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# MARKDOWN ********************

# ### VACUUM


# CELL ********************

# MAGIC %%sql
# MAGIC 
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.Product_Chart_Field RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.client_hwbs RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.client RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.work_mbr_hw_txnmy_hwbs RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.work_mbr_hw_txnmy RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.member_account_hwbs RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.member_account RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.medical_Product_HWBS RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.medical_Product RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.med_lkup_prod_key_hwbs RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.med_lkup_prod_key RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.sfact_prod_mdcl_addnl_hwbs RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.sfact_prod_mdcl_addnl RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.group_mbr_range RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.group_derived_mbr_range RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.group_contract_range RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.standard_age RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.incurred_month_hwbs RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.incurred_month RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.funding_chart_field RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.company_chart_field RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.mbu_chart_field RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.group_zip RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.gender RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.dim_prda_rwrd_type_hwbs RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.jaa RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.med_network RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.med_ntwk_lkup_lvl1 RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.med_ntwk_lkup_lvl2 RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.fact_prod_admnstrn_ntwk_hwbs RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.wbs_mbr_elgbl RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.work_mbr_hw_incntv_actvty RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.work_mbr_hw_incntv_dsbrsmnt RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.work_mbr_mdcl_prod_dtl RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.wbs_mbr_sumry_pgm RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.wbs_mbr_sumry_prod RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.wbs_mbr_sumry_prod_cls RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.wbs_mbr_sumry_prod_subcls RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.wbs_mbr_sumry_prod_type RETAIN 168 HOURS;
# MAGIC --BHF Table specific below--
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.work_adim_prda_bhf_mbr_dtl RETAIN 168 HOURS;
# MAGIC VACUUM GOLD_LAKEHOUSE.dbo.work_adim_prda_bhf_ivr_call_dtl RETAIN 168 HOURS;
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

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# MARKDOWN ********************

#  ### OPTIMIZATION<mark></mark>

# CELL ********************

# MAGIC %%sql
# MAGIC  
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.work_mbr_mdcl_prod_dtl;
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.wbs_mbr_sumry_pgm;
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.wbs_mbr_elgbl;
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.work_mbr_hw_incntv_actvty;
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.work_mbr_hw_incntv_dsbrsmnt;
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.wbs_mbr_sumry_prod;
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.wbs_mbr_sumry_prod_cls;
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.wbs_mbr_sumry_prod_subcls;
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.wbs_mbr_sumry_prod_type;
# MAGIC --BHF Specific Tables below --
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.work_adim_prda_bhf_mbr_dtl;
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.work_adim_prda_bhf_ivr_call_dtl;


# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# MARKDOWN ********************

# ### OPTIMIZATION ZORDER

# CELL ********************

# MAGIC %%sql
# MAGIC  
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.member_account_hwbs ZORDER BY (Member_Account_Key);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.member_account ZORDER BY (Member_Account_Key);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.work_mbr_hw_txnmy_hwbs ZORDER BY (HW_PROD_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.work_mbr_hw_txnmy ZORDER BY (HW_PROD_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.med_lkup_prod_key_hwbs ZORDER BY (PROD_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.med_lkup_prod_key ZORDER BY (PROD_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.client_hwbs ZORDER BY (EDM_CLNT_GRP_SUBGRP_ACCT_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.client ZORDER BY (EDM_CLNT_GRP_SUBGRP_ACCT_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.medical_product_hwbs ZORDER BY (PROD_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.medical_product ZORDER BY (PROD_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.sfact_prod_mdcl_addnl_hwbs ZORDER BY (PROD_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.sfact_prod_mdcl_addnl ZORDER BY (PROD_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.incurred_month_hwbs ZORDER BY (Incurred_Year_Month_Nbr );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.incurred_month ZORDER BY (Incurred_Year_Month_Nbr );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.company_chart_field ZORDER BY (CMPNY_CF_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.funding_chart_field ZORDER BY (FUNDG_CF_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.gender ZORDER BY (GNDR_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.group_contract_range ZORDER BY (GRP_CNTRCT_SIZE_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.group_mbr_range ZORDER BY (GRP_MBR_SIZE_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.group_derived_mbr_range ZORDER BY (GRP_MBR_RNG_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.jaa ZORDER BY (JAA_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.mbu_chart_field ZORDER BY (MBU_CF_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.product_chart_field ZORDER BY (PROD_CF_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.dim_prda_rwrd_type_hwbs ZORDER BY (RWRD_TYPE_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.standard_age ZORDER BY (STNDRD_AGE_MNTH_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.group_zip ZORDER BY (ZIP_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.fact_prod_admnstrn_ntwk_hwbs ZORDER BY (NTWK_KEY );
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.med_network ZORDER BY (NTWK_KEY);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.med_ntwk_lkup_lvl2 ZORDER BY (Network_Number);
# MAGIC OPTIMIZE GOLD_LAKEHOUSE.dbo.med_ntwk_lkup_lvl1 ZORDER BY (Network_Number);
# MAGIC 
# MAGIC --BHF Specific  Tables below--
# MAGIC 
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

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }
