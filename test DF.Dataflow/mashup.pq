[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[BindToDefaultDestination = true]
shared DIM_EAP_SUBGRP = let
  Source = Snowflake.Databases("carelon-eda_preprod.privatelink.snowflakecomputing.com", "U01_PRDA_APP_WH_XL", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "U01_PRDA", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "PRDA_RPTG_ALLPHI", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_EAP_SUBGRP", Kind = "View"]}[Data]
in
  #"Navigation 3";
shared DefaultDestination = Lakehouse.Contents([EnableFolding = false]){[workspaceId = "890304bc-64e8-46be-93d9-8ea5a5a56669"]}[Data]{[lakehouseId = "c0e64c56-d325-4096-ab45-1ef917f3c3db"]}[Data];
