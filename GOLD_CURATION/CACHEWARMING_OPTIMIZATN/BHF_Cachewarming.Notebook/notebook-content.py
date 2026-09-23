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


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_ALL.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_ALL.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_smartrewards_drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_smartrewards_drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_CurrentMonth_MBUClass.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_CurrentMonth_MBUClass.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_Current_FundingFilter.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_Current_FundingFilter.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_Allmonth_State.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_Allmonth_State.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_ALLmonth_MBUClass.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_ALLmonth_MBUClass.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_ALLmonth_Funding.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_ALLmonth_Funding.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_All_All.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_All_All.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_All_Funding_Alternate.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_All_Funding_Alternate.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_All_Funding_Except_Blank.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_All_Funding_Except_Blank.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_All_Funding_Fully.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_All_Funding_Fully.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_FundingTYpe_Alternate.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_FundingTYpe_Alternate.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_FundingType_Alternate&FullyInsured.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_FundingType_Alternate&FullyInsured.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_All_Rolling12.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_All_Rolling12.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_All_Rolling3.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_All_Rolling3.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_All_Rolling6.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_All_Rolling6.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model_Excel'

queries = []
with open('/lakehouse/default/Files/PowerBIPerformanceData_All_YTD.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "PowerBIPerformanceData_All_YTD.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_All_Current_Alternate.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_Alternate.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_All_Current_FullyInsured.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_FullyInsured.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_All_Current_LargeGroup.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_LargeGroup.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_All_Current_LargeGroupGreen.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_LargeGroupGreen.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_All_Current_Monthly.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_Monthly.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_All_Current_National.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_National.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'
queries = []
with open('/lakehouse/default/Files/BHF_All_Current_Prod_Product6.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_Prod_Product6.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_All_Current_Rolling12.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_Rolling12.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_All_Current_Rolling3.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_Rolling3.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_All_Current_Rolling6.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_Rolling6.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_All_Current_SmallGroup.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_SmallGroup.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_All_Current_State_All.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_State_All.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_All_Current_YTD.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_All_Current_YTD.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_Pre_Natal_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_Pre_Natal_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_PregnencyUrgent_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_PregnencyUrgent_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_ProfileCreation_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_ProfileCreation_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_DeliveryCheckin_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_DeliveryCheckin_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_DigitallyRegistered_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_DigitallyRegistered_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_Lifestyle_Blk_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_Lifestyle_Blk_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_Lifestyle_LGBTQ_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_Lifestyle_LGBTQ_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_PostNatalDepression_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_PostNatalDepression_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_PregnancyLoss_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_PregnancyLoss_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_Pre_Conception_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_Pre_Conception_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_Pre_Conception_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_Pre_Conception_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_BHF_Profile_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_BHF_Profile_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

import json
import time
#import sempy
import sempy.fabric as fabric
model_name = 'BHF_Model'

queries = []
with open('/lakehouse/default/Files/BHF_Pregnancy_Screener_Drillthrough.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "BHF_Pregnancy_Screener_Drillthrough.json":
            queries.append(e["metrics"]["QueryText"])
qn = 0
for q in queries:
    # print(q)
    qn += 1
    start = time.time()
    df = fabric.evaluate_dax(model_name, q)
    duration = time.time()-start

    print(f'Query number {qn} starting "{q[0:20]}..." Rows {df.shape[0]} Duration {duration}')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
