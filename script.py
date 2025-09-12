import os
import json

def scan(obj, key, value):
  for k, v in obj.items():
    if k == key:
      if v == value:
        return True
      else:
        print(f"Found {k} containing \033[1m \033[4m {v} \033[0m instead of {value}")
        
    elif isinstance(v, dict):
      if scan(v, key, value):
        return True
    elif isinstance(v, list):
      for item in v:
        if isinstance(item, dict):
          if scan(item, key, value):
            return True
    
  return False
    

for root, dir, files in os.walk("datapack/data/stellarity/loot_table/item/"):
  for file in files:
    path = os.path.join(root, file)

    with open(path, "r") as f:
      data = json.load(f)
      name = file[:-5]
      if not scan(data, "stellarity:item", name):
        print(f"Missing {name} in {path}")


  