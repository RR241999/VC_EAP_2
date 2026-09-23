[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared DefaultDestination = let
  Source = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = null]),
  #"Navigation 1" = Source{[workspaceId = "890304bc-64e8-46be-93d9-8ea5a5a56669"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "c0e64c56-d325-4096-ab45-1ef917f3c3db"]}[Data]
in
  #"Navigation 2";
[BindToDefaultDestination = true]
shared DDIM_DIAG = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ETL_SEMANTIC", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DDIM_DIAG", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared FACT_PRDA_DGTL_INTRCTN_CHNL_SMRY = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FACT_PRDA_DGTL_INTRCTN_CHNL_SMRY", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared FACT_PRDA_DGTL_RGSTRN_SMRY = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FACT_PRDA_DGTL_RGSTRN_SMRY", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared FACT_PRDA_MBR_DGTL_INTRCTN_SMRY = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FACT_PRDA_MBR_DGTL_INTRCTN_SMRY", Kind = "Table"]}[Data]
in
  #"Navigation 3";
