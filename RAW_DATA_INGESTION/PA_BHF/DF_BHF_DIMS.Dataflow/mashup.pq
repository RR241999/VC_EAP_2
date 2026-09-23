[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[BindToDefaultDestination = true]
shared DIM_PRDA_BHFP = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_BHFP", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_DGTL_STTS = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_DGTL_STTS", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_GSTTNL_DLVRY_AGE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_GSTTNL_DLVRY_AGE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_BRTH_WT = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_BRTH_WT", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_BHF_MBR_TYPE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_BHF_MBR_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_BHF_RWRD = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_BHF_RWRD", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_CALL_CHAT_TYPE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_CALL_CHAT_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_LIFE_CTGRY = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_LIFE_CTGRY", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_MBR_AGE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_MBR_AGE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_MTRNTY_RISK = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_MTRNTY_RISK", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_PRFL = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_PRFL", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared FACT_PRDA_BHF_IVR = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FACT_PRDA_BHF_IVR", Kind = "View"]}[Data],
  MaxSnapDate = List.Max(#"Navigation 3"[SNAP_YEAR_MNTH_NBR]),
  #"Filtered rows" = Table.SelectRows(#"Navigation 3", each [SNAP_YEAR_MNTH_NBR] = MaxSnapDate)
in
  #"Filtered rows";
shared Server = "carelon-eda_preprod.privatelink.snowflakecomputing.com" meta [IsParameterQuery = true, IsParameterQueryRequired = false, Type = type any, List = {"carelon-edaprod1.privatelink.snowflakecomputing.com", "carelon-eda_preprod.privatelink.snowflakecomputing.com", "carelon-eda_nonprod.privatelink.snowflakecomputing.com"}, DefaultValue = "carelon-eda_preprod.privatelink.snowflakecomputing.com"];
shared Warehouse = "U01_PRDA_APP_WH_XL" meta [IsParameterQuery = true, IsParameterQueryRequired = false, Type = type any, List = {"P01_PRDA_APP_WH_XL", "U01_PRDA_APP_WH_XL", "D01_PRDA_APP_WH_XL"}, DefaultValue = "U01_PRDA_APP_WH_XL"];
shared Database = "U01_PRDA" meta [IsParameterQuery = true, IsParameterQueryRequired = false, Type = type any, List = {"P01_PRDA", "U01_PRDA", "D01_PRDA"}, DefaultValue = "U01_PRDA"];
shared DefaultDestination = Lakehouse.Contents([EnableFolding = false]){[workspaceId = "890304bc-64e8-46be-93d9-8ea5a5a56669"]}[Data]{[lakehouseId = "c0e64c56-d325-4096-ab45-1ef917f3c3db"]}[Data];
