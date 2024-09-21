# Armor Penetration

**Armor penetration** is a special mechanic in Stellarity which causes a percentage of damage to completely ignore armor, being reduced only by enchantments and the Resistance effect.

A lot of items in Stellarity utilize armor penetration to be stronger against targets with higher defense without making the items perform too well on mobs with weaker armor or no armor at all.

[TOC]

## Damage formula
`fdmg = [(dmg - (dmg * ap)) * dr] + (dmg * ap)`

- **dmg** - damage dealt by an attack
- **fdmg** - final damage dealt to the player[^1]
- **dr** - damage (armor) reduction, clamped on a 0 - 1 scale (e.g. 70% damage reduction is 0.7)
- **ap** - percentage of armor penetration, clamped on a 0 - 1 scale (e.g. 30% armor penetration is 0.3)

## Damage with armor penetration
| Source | Armor penetration % |
| :--- | :--- |
| <i class="icon-stellarity icon-stellarity-dragonblade"></i> Dragonblade | 70 |
| <i class="icon-stellarity icon-stellarity-kaleidoscope"></i> Kaleidoscope | 15 (1st charge)<br>25 (2nd charge)<br>35 (3rd charge) |
| <i class="icon-stellarity icon-stellarity-prismember"></i> Prismember | 50 (spin) |
| <i class="icon-stellarity icon-stellarity-natures-wrath"></i> Nature's Wrath | 20 (default)<br>25 (Sculk Spirit)<br>30 (Jungle and Ocean Spirits)<br>35 (Mountain Spirit)<br> |
| <i class="icon-stellarity icon-stellarity-spirit-dagger"></i> Spirit Dagger | 100 (teleport slash) |
| <i class="icon-stellarity icon-stellarity-starstrucl-carcanet"></i> Starstruck Carcanet | 80 (stars) |
| <i class="icon-stellarity icon-stellarity-tamaris"></i> Tamaris | 60 (Dark Decay)<br>100 (execute) |
| <i class="icon-stellarity icon-stellarity-starless-scythe"></i> Starless Scythe | 40 (Leeching) |

## History
=== "v2.1a"
	- Armor piercing damage is now reduced by enchantments.

=== "v2.0c"
	- Reworked armor penetration mechanic.
    	- Instead of making damage ignore a percentage of armor, it now makes a percentage of damage ignore armor completely. 

=== "vIndev-1.6a"
	- Added the armor penetration mechanic.

[^1]: After all the armor calculations are done, meaning this value represents how much health is actually taken the from affected mob
