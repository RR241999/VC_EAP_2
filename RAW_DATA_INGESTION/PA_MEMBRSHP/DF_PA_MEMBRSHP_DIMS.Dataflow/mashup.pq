[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "DIM_MDLR_PROD_LVL_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared DIM_MDLR_PROD_LVL = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_MDLR_PROD_LVL", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_CDHP_ADMNSTRN = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_CDHP_ADMNSTRN", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_CDHP_PRFRD_PLTFRM = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_CDHP_PRFRD_PLTFRM", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_CSTM_VRSS_STNDRD = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_CSTM_VRSS_STNDRD", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_NTWK_TYPE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_NTWK_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PCP_RQRD = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PCP_RQRD", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_PROD_STTS = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_PROD_STTS", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_QHP_VRTN = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_QHP_VRTN", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_PROD_VRSN = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_PROD_VRSN", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_CRYOVR_APLYS = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_CRYOVR_APLYS", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_CVRD_OOA = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_CVRD_OOA", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_FRTH_QTR_CRYOVR = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_FRTH_QTR_CRYOVR", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_MRKTG_STTS = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_MRKTG_STTS", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_DGTL_PROV_AVLBLTY = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_DGTL_PROV_AVLBLTY", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_DGTL_PROV = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_DGTL_PROV", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_ENHNCD_CSM = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_ENHNCD_CSM", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_NTWK_CPAY = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_NTWK_CPAY", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_REFIL_BY_MAIL = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_REFIL_BY_MAIL", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_TIER_STRCTR = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_TIER_STRCTR", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_HOME_DLVRY_OPT = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_HOME_DLVRY_OPT", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRVNTV_COST_SHR_TRTMNT = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRVNTV_COST_SHR_TRTMNT", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_SPLT_TIER_TYPE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_SPLT_TIER_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_RDR = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_RDR", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_CNTRCT_STTS = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_CNTRCT_STTS", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_MBR_CVRG_EXCLSN_TYPE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_MBR_CVRG_EXCLSN_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PLCY_TYPE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PLCY_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_LENS_CVRG_TYPE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_LENS_CVRG_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_LGL_ENTY = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_LGL_ENTY", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PFOL = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PFOL", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PROD_PFOL = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PROD_PFOL", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRVT_EXCHNG = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRVT_EXCHNG", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PFOL_BRNDNG = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PFOL_BRNDNG", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_ENTRPR_PLAN = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_ENTRPR_PLAN", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DDIM_STRCTR_PLAN = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DDIM_STRCTR_PLAN", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PROD_FMLY = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PROD_FMLY", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_CHCE_PROD = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_CHCE_PROD", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared FACT_PROD_VSN = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FACT_PROD_VSN", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared FACT_PROD_PHRMCY = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FACT_PROD_PHRMCY", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared FACT_PROD_RDR = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FACT_PROD_RDR", Kind = "View"]}[Data]
in
  #"Navigation 3";
shared DIM_MDLR_PROD_LVL_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = null, EnableVorder = true, OutputMetadataRefresh = true]),
  Navigation_1 = Pattern{[workspaceId = "890304bc-64e8-46be-93d9-8ea5a5a56669"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "c0e64c56-d325-4096-ab45-1ef917f3c3db"]}[Data],
  TableNavigation = Navigation_2{[Id = "DIM_MDLR_PROD_LVL", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared DefaultDestination = let
  Source = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = null, EnableVorder = true, OutputMetadataRefresh = true]),
  #"Navigation 1" = Source{[workspaceId = "890304bc-64e8-46be-93d9-8ea5a5a56669"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "c0e64c56-d325-4096-ab45-1ef917f3c3db"]}[Data]
in
  #"Navigation 2";
[BindToDefaultDestination = true]
shared Server = "carelon-eda_preprod.privatelink.snowflakecomputing.com" meta [IsParameterQuery = true, IsParameterQueryRequired = false, Type = type any, List = {"carelon-edaprod1.privatelink.snowflakecomputing.com", "carelon-eda_preprod.privatelink.snowflakecomputing.com", "carelon-eda_nonprod.privatelink.snowflakecomputing.com"}, DefaultValue = "carelon-eda_preprod.privatelink.snowflakecomputing.com"];
[BindToDefaultDestination = true]
shared Warehouse = "U01_PRDA_APP_WH_XL" meta [IsParameterQuery = true, IsParameterQueryRequired = false, Type = type any, List = {"P01_PRDA_APP_WH_XL", "U01_PRDA_APP_WH_XL", "D01_PRDA_APP_WH_XL"}, DefaultValue = "U01_PRDA_APP_WH_XL"];
[BindToDefaultDestination = true]
shared Database = "U01_PRDA" meta [IsParameterQuery = true, IsParameterQueryRequired = false, Type = type any, List = {"P01_PRDA", "U01_PRDA", "D01_PRDA"}, DefaultValue = "U01_PRDA"];
[BindToDefaultDestination = true]
shared DIM_OON_REIMBMNT_LVL = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_OON_REIMBMNT_LVL", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PSTRR_CMPST = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PSTRR_CMPST", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_REIMBMNT_BNFT_CTGRY = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_REIMBMNT_BNFT_CTGRY", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_CNTRBTN_MTHD = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_CNTRBTN_MTHD", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_GNRC_MNDTRY = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_GNRC_MNDTRY", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_ADMNSTRN_NTWK = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_ADMNSTRN_NTWK", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_MTHD_OF_STLMNT = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_MTHD_OF_STLMNT", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_CLM_ADMNSTRN = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_CLM_ADMNSTRN", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_LMT_CALCN = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_LMT_CALCN", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_PRDA_PROD_CRVOUT = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_PRDA_PROD_CRVOUT", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_CLM_CVRG_TYPE = let
  Source = Snowflake.Databases(Server, Warehouse, [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = Database, Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_CLM_CVRG_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
