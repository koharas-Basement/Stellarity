import json
import os
import nbtlib

for roots, dirs, files in os.walk("data/stellarity/structure"):
  for name in files:
    path = os.path.join(roots, name)

    nbt_file = nbtlib.load(path)
    
    
    string = str(nbt_file)

    if string.find("stellaris") != -1:
      print("Problem found in {}", path)
