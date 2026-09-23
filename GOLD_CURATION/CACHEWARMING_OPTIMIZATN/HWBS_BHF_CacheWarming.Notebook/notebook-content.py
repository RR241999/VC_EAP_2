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
model_name = 'HWBS_Model'

queries = []
with open('/lakehouse/default/Files/H&W_Product.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "H&W_Product.json":
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
model_name = 'HWBS_Model'

queries = []
with open('/lakehouse/default/Files/H&W_Solutions.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "H&W_Solutions.json":
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
model_name = 'HWBS_Model'

queries = []
with open('/lakehouse/default/Files/Incentives&Disbursement.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "Incentives&Disbursement.json":
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
model_name = 'HWBS_Model'

queries = []
with open('/lakehouse/default/Files/Product_Type.json', encoding='utf-8-sig') as f:
    json_string = f.read()
    d = json.loads(json_string)
    for e in d["events"]:
        if e["name"] == "Product_Type.json'":
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
