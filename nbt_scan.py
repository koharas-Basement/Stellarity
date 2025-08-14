import json
import os
import glob
import amulet_nbt


search = input("Search: ")

for path in glob.glob("datapack/data/stellarity/structure/stronghold/*.nbt", recursive=True):
  print(path)


  nbt_file = amulet_nbt.load(path)

  string = nbt_file.to_snbt()

  if string.find(search) != -1:
    print(f"Search found in {path}")
    os.system(f"code {path}")
    input("Press Enter to continue...")