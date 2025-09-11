import os
import json
from natsort import natsorted

translations = {}

# in translations/stellarity 
for file in os.listdir("translations/stellarity"):
  print(file)
  with open(f"translations/stellarity/{file}", "r", encoding="utf-8") as f:
    data = json.load(f)
    translations[file] = data
done = False
while not done:
  print("Choose action:")
  print("1. Add new key")
  print("2. Remove key")
  print("3. Rename key")
  print("4. Add new key with custom value")
  print("5. Exit")
  action = input("Input action (1/2/3/4/5): ")

  if action == "1":
    key = input("Enter new key: ")
    for lang in translations:
      translations[lang][key] = key
  elif action == "2":
    key = input("Enter key to remove: ")
    for lang in translations:
      if key in translations[lang]:
        del translations[lang][key]
  elif action == "3":
    old_key = input("Enter key to rename: ")
    new_key = input("Enter new key name: ")
    for lang in translations:
      if old_key in translations[lang]:
        translations[lang][new_key] = translations[lang].pop(old_key)
  elif action == "4":
    key = input("Enter new key: ")
    value = input("Enter value for the new key: ")
    for lang in translations:
      translations[lang][key] = value
  elif action == "5":
    done = True


for lang in translations:
  final = dict(natsorted(translations[lang].items()))
  with open(f"translations/stellarity/{lang}", "w", encoding="utf-8") as f:
    json.dump(final, f, ensure_ascii=False, indent=2)

  # final["LEGACY_TRANSLATIONS_THIS_IS_NOT_A_KEY"] = "ALL LEGACY TRANSLATIONS BELOW, TRY NOT TO EDIT."

  # with open(f"translations/stellarity_legacy/{lang}", "r", encoding="utf-8") as f:
  #   data = json.load(f)
  #   for key in data:
  #     if key not in final:
  #       final[key] = data[key]

  with open(f"resource_pack/assets/stellarity/lang/{lang}", "w+", encoding="utf-8") as f:
    json.dump(final, f, ensure_ascii=False, indent=2)

  