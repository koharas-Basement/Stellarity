particle firework ~ ~ ~ 0 0 0 0.1 12 normal

summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{stellarity.prismatic_blast:1b,Fireworks:{Explosions:[{Type:0,Trail:0,Flicker:0,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]}],Flight:1}}}}
data modify entity @e[type=firework_rocket,limit=1,sort=nearest] Owner set from entity @p[predicate=stellarity:items/holding/spellbooks/natures_wrath] UUID

function stellarity:items/spellbooks/natures_wrath/spirit/damage/effects/as_marker/all

