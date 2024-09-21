data modify storage kohara:temp object.tag."kohara.durability".dur set from storage kohara:temp object.tag."kohara.durability".max_dur
data modify storage kohara:temp object.tag."kohara.durability".damage set value 0
execute unless data storage kohara:temp object.tag.display.Lore run data modify storage kohara:temp object.tag.display.Lore set value []
execute unless data storage kohara:temp {object:{tag:{"kohara.durability":{init:0b}}}} run data modify storage kohara:temp object.tag.display.Lore append value '{}'
data modify storage kohara:temp object.tag."kohara.durability".init set value 1b
