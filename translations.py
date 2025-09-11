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
  final.update({"painting.stellarity.scheme.author": "Opliz",
  "painting.stellarity.scheme.title": "Scheme",
  "painting.stellarity.end.author": "Cohara",
  "painting.stellarity.end.title": "End",
  "painting.stellarity.shepherds_feast.author": "Alligator",
  "painting.stellarity.shepherds_feast.title": "Shepherd's Feast",
  "painting.stellarity.snare.author": "Opliz",
  "painting.stellarity.snare.title": "Snare",
  "painting.stellarity.hourglass.author": "Bush",
  "painting.stellarity.hourglass.title": "Hourglass",
  "painting.stellarity.end_blossom.author": "\ubc84\ube14",
  "painting.stellarity.end_blossom.title": "End Blossom",
  "painting.stellarity.dragonblade.author": "Kohara",
  "painting.stellarity.dragonblade.title": "Dragonblade",
  "painting.stellarity.majestical_brew.author": "Cohara",
  "painting.stellarity.majestical_brew.title": "Majestical Brew",
  "painting.stellarity.a_hop_and_a_skip_away.author": "Cohara",
  "painting.stellarity.a_hop_and_a_skip_away.title": "A Hop and a Skip Away",
  "painting.stellarity.snatch.author": "Opliz",
  "painting.stellarity.snatch.title": "Snatch",
  "painting.stellarity.the_obsidian_reliquary.author": "DocBrown2010641",
  "painting.stellarity.the_obsidian_reliquary.title": "The Obsidian Reliquary"})
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

  