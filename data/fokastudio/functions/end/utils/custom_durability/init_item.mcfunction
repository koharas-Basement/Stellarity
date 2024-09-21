
data modify storage fokastudio:end/temp object.tag.foka_durability.init set value 1b
data modify storage fokastudio:end/temp object.tag.foka_durability.dur set from storage fokastudio:end/temp object.tag.foka_durability.max_dur
data modify storage fokastudio:end/temp object.tag.foka_durability.damage set value 0
execute unless data storage fokastudio:end/temp object.tag.display.Lore run data modify storage fokastudio:end/temp object.tag.display.Lore set value []
data modify storage fokastudio:end/temp object.tag.display.Lore append value '{}'
