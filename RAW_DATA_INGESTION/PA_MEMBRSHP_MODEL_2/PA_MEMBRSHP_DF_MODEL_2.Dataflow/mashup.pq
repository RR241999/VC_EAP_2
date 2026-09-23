[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "FACT_PRDA_VPC_HLTH_DTL_BRD_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared FACT_PRDA_VPC_HLTH_DTL_BRD = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FACT_PRDA_VPC_HLTH_DTL_BRD", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_HCC = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_HCC", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DDIM_MBU_CF = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ETL_SEMANTIC", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DDIM_MBU_CF", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_NDC = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_NDC", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared WORK_DDIM_PA_CSTM_STNDRD_CUBE = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ETL_SEMANTIC", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "WORK_DDIM_PA_CSTM_STNDRD_CUBE", Kind = "View"]}[Data]
in
  #"Navigation 3";
shared WORK_SFACT_PROD_MDCL_ADDNL_PA_CUBE = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ETL_SEMANTIC", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "WORK_SFACT_PROD_MDCL_ADDNL_PA_CUBE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_BNFT_PLAN = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_BNFT_PLAN", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_CLM_CNDTN = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_CLM_CNDTN", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DDIM_ETG = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ETL_SEMANTIC", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DDIM_ETG", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_HCC_HRCHY = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_HCC_HRCHY", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DDIM_DIAG = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ETL_SEMANTIC", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DDIM_DIAG", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_DGTL_CHNL = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_DGTL_CHNL", Kind = "View"]}[Data]
in
  #"Navigation 3";
shared DIM_PRDA_DT = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_DT", Kind = "View"]}[Data]
in
  #"Navigation 3";
shared DIM_PRDA_GNDR = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_GNDR", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared WORK_MBU_GRP_IND_XWALK = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ETL_SEMANTIC", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "WORK_MBU_GRP_IND_XWALK", Kind = "View"]}[Data]
in
  #"Navigation 3";
shared DIM_PRDA_GRP_CNTRCT_SIZE = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_GRP_CNTRCT_SIZE", Kind = "View"]}[Data]
in
  #"Navigation 3";
shared DIM_PRDA_GRP_MBR_RNG = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_GRP_MBR_RNG", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PLOS = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_EDM_V3", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "EDM_V3_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PLOS", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DDIM_PROC = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_EDM_V3", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "EDM_V3_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DDIM_PROC", Kind = "View"]}[Data]
in
  #"Navigation 3";
shared FACT_PRDA_VPC_HLTH_DTL_BRD_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = null]),
  Navigation_1 = Pattern{[workspaceId = "890304bc-64e8-46be-93d9-8ea5a5a56669"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "c0e64c56-d325-4096-ab45-1ef917f3c3db"]}[Data],
  TableNavigation = Navigation_2{[Id = "FACT_PRDA_VPC_HLTH_DTL_BRD", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared DefaultDestination = Lakehouse.Contents([EnableFolding = false]){[workspaceId = "890304bc-64e8-46be-93d9-8ea5a5a56669"]}[Data]{[lakehouseId = "c0e64c56-d325-4096-ab45-1ef917f3c3db"]}[Data];
