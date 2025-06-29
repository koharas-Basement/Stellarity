import os
import json
import re
from natsort import natsorted


def get_community_keys():
  keys = []
  for root, dirs, files in os.walk("translations/stellarity"):
   for file in files:
    if file.endswith(".json"):
      with open(os.path.join(root, file), 'r', encoding='utf-8') as f:
       data = json.load(f)
       for key in data.keys():
        if key not in keys:
          keys.append(key)
 
  return keys

def get_datapack_keys():
  keys = []
  for root, dirs, files in os.walk("data/"):
   for file in files:
    try:
      with open(os.path.join(root, file), 'r') as f:
       content = f.read()
       for match in re.findall(r'"translate"\s*:\s*"([A-Za-z0-9.]+)"', content):
        keys.append(match)
    except Exception as e:
      continue

 
  return keys

def get_dev_keys():
  keys = []
  for root, dirs, files in os.walk("resource_pack/assets/stellarity/lang"):
   for file in files:
    if file.endswith(".json"):
      with open(os.path.join(root, file), 'r', encoding='utf-8') as f:
       data = json.load(f)
       for key in data.keys():
        if key not in keys:
          keys.append(key)
  
  return keys


community_keys = get_community_keys()
datapack_keys = get_datapack_keys()
dev_keys = get_dev_keys()

all_keys = sorted(set(community_keys + datapack_keys + dev_keys))

translations = {}

for root, dirs, files in os.walk("translations/stellarity"):
  for file in files:
    if file.endswith(".json"):
      with open(os.path.join(root, file), 'r', encoding='utf-8') as f:
        data = json.load(f)
        translations[file] = data
        print('Loaded translations from:', file)
           
for root, dirs, files in os.walk("resource_pack/assets/stellarity/lang"):
  for file in files:
    if file.endswith(".json"):
      with open(os.path.join(root, file), 'r', encoding='utf-8') as f:
        data = json.load(f)
        for key in data.keys():
          if key not in translations[file]:
            translations[file][key] = data[key]


for lang, translation_data in translations.items():
  for key in all_keys:
    if key not in translation_data:
      translation_data[key] = key  # Placeholder for missing translations

  # make directory if it doesn't exist
  if not os.path.exists("new_translations"):
    os.makedirs("new_translations")
  with open("new_translations/" + lang, 'w', encoding='utf-8') as f:
   
    json.dump(dict(natsorted(translation_data.items())), f, ensure_ascii=False, indent=2)
    print('Saved translations to:', "new_translations/" + lang)
