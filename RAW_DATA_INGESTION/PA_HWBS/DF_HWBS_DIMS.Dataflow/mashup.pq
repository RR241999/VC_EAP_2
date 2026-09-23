[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[BindToDefaultDestination = true]
shared DIM_PRDA_CMPNY_CF = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_CMPNY_CF", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_DSBRSMNT = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_DSBRSMNT", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_FUNDG_CF = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_FUNDG_CF", Kind = "View"]}[Data],
  #"Removed columns" = Table.RemoveColumns(#"Navigation 3", {"EDL_INCRMNTL_LOAD_DTM", "EDL_RUN_ID", "EDL_SOR_CD", "KF_TMS", "EDL_SCRTY_LVL_CD", "EDL_LOB_CD", "EDL_EXTRNL_LOAD_CD", "EDL_CREAT_DTM"})
in
  #"Removed columns";
[BindToDefaultDestination = true]
shared DIM_PRDA_GNDR = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_GNDR", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_GRP_CNTRCT_SIZE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_GRP_CNTRCT_SIZE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_GRP_MBR_SIZE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_GRP_MBR_SIZE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_MBU_CF = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_MBU_CF", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_PROD_CF = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_PROD_CF", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_RWRD_TYPE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_RWRD_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_STNDRD_AGE_MNTH = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_STNDRD_AGE_MNTH", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_JAA = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_JAA", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_ZIP = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_ZIP", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared WORK_DIM_NTWK_CUBE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ETL_SEMANTIC", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "WORK_DIM_NTWK_CUBE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared WORK_NTWK_PA_CUBE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ETL_SEMANTIC", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "WORK_NTWK_PA_CUBE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared WORK_NTWK_LVL_2_XWALK = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ETL_SEMANTIC", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "WORK_NTWK_LVL_2_XWALK", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared FACT_PROD_ADMNSTRN_NTWK = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ETL_SEMANTIC", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FACT_PROD_ADMNSTRN_NTWK", Kind = "View"]}[Data]

in
 #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_GRP_MBR_RNG = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_GRP_MBR_RNG", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_DT = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_DT", Kind = "View"]}[Data]
in
  #"Navigation 3";
shared Server = "carelon-eda_preprod.privatelink.snowflakecomputing.com" meta [IsParameterQuery = true, IsParameterQueryRequired = false, Type = type any, List = {"carelon-edaprod1.privatelink.snowflakecomputing.com", "carelon-eda_preprod.privatelink.snowflakecomputing.com", "carelon-eda_nonprod.privatelink.snowflakecomputing.com"}, DefaultValue = "carelon-eda_preprod.privatelink.snowflakecomputing.com"];
shared Warehouse = "U01_PRDA_APP_WH_XL" meta [IsParameterQuery = true, IsParameterQueryRequired = false, Type = type any, List = {"P01_PRDA_APP_WH_XL", "U01_PRDA_APP_WH_XL", "D01_PRDA_APP_WH_XL"}, DefaultValue = "U01_PRDA_APP_WH_XL"];
shared Database = "U01_PRDA" meta [IsParameterQuery = true, IsParameterQueryRequired = false, Type = type any, List = {"P01_PRDA", "U01_PRDA", "D01_PRDA"}, DefaultValue = "U01_PRDA"];
shared DefaultDestination = let
  Source = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  #"Navigation 1" = Source{[workspaceId = "890304bc-64e8-46be-93d9-8ea5a5a56669"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "c0e64c56-d325-4096-ab45-1ef917f3c3db"]}[Data]
in
  #"Navigation 2";
