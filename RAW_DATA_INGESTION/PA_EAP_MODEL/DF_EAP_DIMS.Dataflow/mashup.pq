[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[BindToDefaultDestination = true]
shared DIM_EAP_SUBGRP = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_SUBGRP", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_PROD = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_PROD", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_CALR_TYPE = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_CALR_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_INCDNT_ACTY = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_INCDNT_ACTY", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_INCDNT_PRSNT_PRBLM = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_INCDNT_PRSNT_PRBLM", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_INCDNT_SRVC_TYPE = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_INCDNT_SRVC_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_INCDNT_PROV_TYPE = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_INCDNT_PROV_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_INCDNT_ENTY = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_INCDNT_ENTY", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_SESN_MDL = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_SESN_MDL", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_EVNT_SRVC_TYPE = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_EVNT_SRVC_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_CNSLT_TYPE = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_CNSLT_TYPE", Kind = "View"]}[Data]
in
  #"Navigation 3";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "DIM_EAP_RFRL_RSN_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared DIM_EAP_RFRL_RSN = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_RFRL_RSN", Kind = "View"]}[Data]
in
  #"Navigation 3";
shared DIM_EAP_RFRL_RSN_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = null]),
  Navigation_1 = Pattern{[workspaceId = "890304bc-64e8-46be-93d9-8ea5a5a56669"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "c0e64c56-d325-4096-ab45-1ef917f3c3db"]}[Data],
  TableNavigation = Navigation_2{[Id = "DIM_EAP_RFRL_RSN", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
[BindToDefaultDestination = true]
shared DIM_EAP_PROD_DESC = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_PROD_DESC", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_SRVY_WOS = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_SRVY_WOS", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_SRVY_PHQ = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_SRVY_PHQ", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_SRVY_GAD = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_SRVY_GAD", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_ST = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_ST", Kind = "View"]}[Data],
  Maxsnap=List.Max(#"Navigation 3"[SNAP_YEAR_MNTH_NBR]),
  #"Filtered Rows" = Table.SelectRows(#"Navigation 3", each [SNAP_YEAR_MNTH_NBR]= Maxsnap)
in
  #"Filtered Rows";
[BindToDefaultDestination = true]
shared DIM_EAP_SRVY_HIPEAP = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_SRVY_HIPEAP", Kind = "View"]}[Data]
in
  #"Navigation 3";
[BindToDefaultDestination = true]
shared DIM_EAP_SRVY_DFD = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_SRVY_DFD", Kind = "View"]}[Data]
in
  #"Navigation 3";
shared DefaultDestination = Lakehouse.Contents([EnableFolding = false]){[workspaceId = "890304bc-64e8-46be-93d9-8ea5a5a56669"]}[Data]{[lakehouseId = "c0e64c56-d325-4096-ab45-1ef917f3c3db"]}[Data];
[BindToDefaultDestination = true]
shared DIM_EAP_GRP = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_GRP", Kind = "View"]}[Data],
  #"Filtered rows" = Table.SelectRows(#"Navigation 3", each ([EAP_GRP_RANK_ID] = 1))
in
  #"Filtered rows";
