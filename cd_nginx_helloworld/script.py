# -*- coding:utf-8 -*-
import json
import os

current_path = os.path.abspath("scan_result.json")

# path1 = os.path.dirname("scan_result.json")
# print(current_path)
# print( os.path.abspath(__file__))

HIGH_FIND_LABEL = 'HIGH'
CRITICAL_FIND_LABEL = 'CRITICAL'
result_loc = "scan_result.json"
# result_loc = current_path
# print(current_path)



def scan_checker(loc):
    with open(loc, 'r') as f:
        temp = json.loads(f.read())
    
        findings = temp['imageScanFindings']['findingSeverityCounts']
        # if HIGH_FIND_LABEL in findings or CRITICAL_FIND_LABEL in findings:
        if CRITICAL_FIND_LABEL in findings:
            # print (findings)
            return False
        
        return True
    
if scan_checker(result_loc):
    print('Scan_Pass') # Pass
else:
    print('Scan_Failed') # Failed
    
    
