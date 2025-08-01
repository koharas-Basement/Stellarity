import json
import os
import nbtlib

search = input("Search: ")

for roots, dirs, files in os.walk("data/"):
  for name in files:
    path = os.path.join(roots, name)

    if not path.endswith(".nbt"):
      continue

    nbt_file = nbtlib.load(path)
    
    string = str(nbt_file)

    if string.find(search) != -1:
      print("Problem found in {}", path)
