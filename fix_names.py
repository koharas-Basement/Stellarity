import os
import json


import os
import json
import time



def traverse_json(obj: dict | list, previous_key:list[str]=[]):

  if isinstance(obj, dict):
    for key, value in obj.items():
      if isinstance(value, str):
        if value.startswith('[') and value.endswith(']') or  value.startswith('{') and value.endswith('}'):
          obj[key] = request_replace(value, previous_key + [key])
        
   
      elif isinstance(value, dict) or isinstance(value, list):
        traverse_json(value, previous_key + [key])
  elif isinstance(obj, list):
    for i in range(len(obj)):
      item = obj[i]
      if isinstance(item, dict) or isinstance(item, list):
        traverse_json(item, previous_key + [str(i)])
      elif isinstance(item, str):
        if item.startswith('[') and item.endswith(']') or item.startswith('{') and item.endswith('}'):
          obj[i] = request_replace(item, previous_key + [str(i)])
        
        



def request_replace(string, keys: list[str]):
  keys = "/".join(keys)
  if "nbt" in keys:
    return string
  
  if '{stellarity.item:' in string:
    string = string.replace('{stellarity.item:', '{"stellarity.item":')
  
  # replace = input(f"Making field {"/".join(keys)}: {string} into an object (y/n)? ");
  # if not replace.lower().startswith('y'):
  #   return string
  
  
  
  try:
    obj = json.loads(string)
    return obj
   
  except Exception as e:
    input(f"Error: {e} at {keys} with value {string}. Press Enter to continue.");
    return string

  

  
  

for root, dirs, files in os.walk('data'):
  for file in files:
    if not file.endswith('.json'): continue
    path = os.path.join(root, file)
   
    with open(path, 'r', encoding='utf-8') as f:
      print(f"Processing {path}");
      data = json.load(f)

      traverse_json(data)

      with open(path, 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=2, ensure_ascii=False)
  
  


      
