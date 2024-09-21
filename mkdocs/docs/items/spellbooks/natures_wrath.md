# Nature's Wrath

<div class="result kohara-infobox-grid" markdown>
<div markdown class="kohara-infobox-text">
**Nature's Wrath** is a post-Dragon spellbook which can either shoot a homing Nature's Spirit with limited range when right clicked or summon a pack of Spirit Wolves when used while sneaking. Both abilities can be upgraded by visiting certain biomes while holding the book.

[TOC]

</div>
<div class="kohara-infobox-table">
  <table id="kohara-infobox--item">
	<tr>
		<th colspan="2" class="kohara-infobox--top-image"><img src="../../../assets/items/natures_wrath.png"></th>
	</tr>
    <tr>
		<th colspan="2">Info</th>
	</tr>
    <tr>
		<td><b>Tooltip</b></td>
		<td>Hold it while exploring to imbue it with a biome's magic,
		<br>
		permanently unlocking or upgrading its abilities
		<br>
		Sneak and use to summon a pack of Spirit Wolves
        <br><br>
        <span style="color: #04CA01;">- Member #777 Item -<sup id="fnref:1"><a class="footnote-ref" href="#fn:1">1</a></sup></span>
		</td>
	</tr>
	<tr>
		<td><b>Cooldown</b></td>
		<td>1 - 1.2 Seconds (Nature's Spirit)
        <br>
        20 seconds (Spirit Wolves)</td>
	</tr>
</table>
</div>
</div>

## Obtaining
Librarians in [End Villages](../structures/end_village.md) can turn any Enchanted Book into Nature's Wrath for 12 <i class="icon-minecraft icon-minecraft-oak-sapling"></i>Oak Saplings. However, only half of them sell the Spellbook.

## Usage
### Nature's Spirits
Right-clicking shoots a slow Nature's Spirit, which automatically homes in on nearby enemies, dealing 4:heart::heart: damage. Spirits don't require any ammunition to be fired and they last for 1.5 seconds before disappearing. Spirits cannot home onto players in PvP and cannot damage <i class="icon-minecraft icon-minecraft-entity-wolf"></i>Wolves.

Visiting certain biomes **while holding Nature's Wrath in any hand** imbues it with a fraction of the biome's power, enchancing the Spirits and adding new types of Spirits which can be fired. The amount of Spirits different from the default one which Nature's Wrath can fire will from now on be referred to as `amount of Spirit Upgrades`.

| Spirit Type | Color | Biomes | Damage | Armor Penetration | Effects | Notes |
| :--- | :---  | :--- | :--- | :--- | :--- | :--- |
| Normal | Light Blue | :x: *(default)* | 4:heart::heart: | :x: | :x: | Damage increased to 6:heart::heart::heart: at 5 Spirit Upgrades |
| Forest | Dark Green | Any forest biome | 5:heart: х ₂.₅ | :x: | Grants 4:yellow_heart::yellow_heart: points of Absorption for 8 seconds | Moves 10% quicker<br>Absorption amount doubled at 6 total Spirit Upgrades |
| Fire | Orange | Any Nether biome[^2] | 5:heart: х ₂.₅ | :x: | Sets target on fire for 3 seconds | Fire duration is extented by 5 ticks for every Spirit Upgrade<br>Does not work on players in PvP |
| Jungle | Light Green | Jungle, Bamboo Jungle | 7:heart: х ₃.₅ | 10% | Inflicts Poison I for 11 seconds | At 5 Spirit Upgrades, Poison duration is reduced to 7 seconds, but potency increased to II<br>At 8 Spirit Upgrades, Poison Duration is reduced to 5 seconds, but potency is increased to III<br>Moves 15% quicker |
| Ocean | Pink | Any ocean biome | 5:heart: х ₂.₅ | :x: | Grants Regeneration I for 13 seconds | At 7 Spirit Upgrades, Regeneration duration is reduced to 7 seconds, but potency is increased to II<br>Moves 10% slower<br>Ignores speed penalty in liquids |
| Mountain | Yellow | Any mountain biome | 7:heart: х ₃.₅ | 15% | :x: | Moves 30% quicker | 
| Snow | White | Any snowy biome | 4:heart::heart: | :x: | Inflicts Slowness I for 6 seconds and Weakness I for 2 seconds<br>Has a 66% chance to inflict Frostburn for 2 seconds | Fire duration is extented by 4 ticks for every Spirit Upgrade |
| Swamp | Brown | Swamp, Mangrove Swamp | 5:heart: х ₂.₅ | :x: | Inflicts high knockback | Does not work on players in PvP |
| Sculk | Black | Deep Dark, Sculk Growth | 11:heart: х ₅.₅ | 15% | Deals high splash damage to nearby entities | :x: |
| Hallowed | Blue | The Hallow | 9:heart: х ₄.₅ | :x: | Deals 14:heart::heart::heart::heart::heart::heart::heart: damage to undead mobs<br>Creates a small explosion which doesn't destroy blocks | :x: |

By default there is a 50% chance to shoot a regular Spirit *(33% if above 7 Spirit Upgrades)*. If not, then a random Spirit from all Spirit Upgrades will be chosen. However, certain Spirit types have a higher chance to be chosen depending on some circumstances:

- Ocean Spirits are 4x more likely to be chosen if user is underwater.
- Mountain Spirits are 3x more likely to be chosen if there are mobs in a 13 - 23 block radius around the player, **but no mobs in a 13 block radius**.
- Hallowed Spirits are 2x more likely to be chosen if there are more than 3 undead mobs in a 8 block radius around the player.
- Sculk Spirits are 2x more likely to be chosen if there are more than 5 mobs in a 9 block radius around the player.

Spirtis can be fired every 1.2 seconds. Each Spirit Upgrade also reduces cooldown at which Nature's Wrath fires by half a tick. Due to rounding of scoreboards in Minecraft, this means that for every 2 Spirit Upgrades, the cooldown will be reduced by 0.05 seconds.

### Spirit Wolves
Sneaking and right-clicking casts an alternate ability, which summons a pack of Spirit Wolves. They act like regular tamed dogs, however they deal more damage, move quicker and have a bit more health. They automatically despawn after 20 seconds.

The number of Spirit Wolves spawned, as well as their stats, is directly tied to the number of Spirit Upgrades. By default, only 2 will spawn, with 3rd one being spawned at 3 Spirit Upgrades, 4th one at 6 and finally 5th one at 9.

| Number of Spirit Upgrades | Health | Damage | Extra Movement Speed | Armor | Armor Toughness | Knockback Resistance |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| < 2 | 16 | 4 | 4% | 1 | :x: | :x: |
| 2 - 3 | 18 | 5 | 10% | 2 | :x: | 5% |
| 4 - 6 | 20 | 6 | 16% | 3 | 1 | 10% |
| 7 - 8 | 22 | 7 | 22% | 4 | 1 | 15% |
| 9 | 24 | 8 | 28% | 5 | 2 | 20% |

After Spirit Wolves despawn, there is a 20 seconds cooldown before they can be summoned again.

## Tips 
- This is a neat ranged weapon which on top of plethora of special effects it provides has unlimited ammo.
- Damage of Spirits cannot be boosted by any means, other than Nature's Wrath self-upgrading.

## Trivia
- It is the only spellbook with 2 different abilities.
- It is the only spellbook to not mention its cooldown in the description.

## Histor
=== "**v2.0c**"
    - Removed 15% armor penetration from regular Spirits.
    - Reduced Oak Sapling price amount (24 -> 12).
    - Reduced chance for a Librarian to sell Nature's Wrath (66% -> 50%).
    - Forest Spirits now grant Absorption instead of Health Boost, reduced effect duration (17s -> 8s).
    - Reduced the duration of Regeneration from Ocean Spirits.
    - Reduced the movement speed reduction of Ocean Spirits (-15% -> -10%).
    - Reduced Slowness and Weakness duration from Snow Spirits by 1s each.
    - Fixed Hallowed Spirits dealing 1.4 damage to undead mobs instead of 14.
    - Fixed Snow Spirits being unable to be fired.
    - Fixed default Spirit Wolves spawned being level 5 instead of level 1.
    - Reduced base Spirit damage by 1 (5 -> 4).

=== "**v2.0b**"
    - Fixed missing dedicated item line.
    - Fixed missing texture.

=== "**v2.0a**"
    - Fixed Nature's Wrath sometimes not shooting any Spirits.
    - Reduced Nature's Wrath attack speed and attack speed scaling.

=== "**vIndev-1.6a**"
    - Introduced.

[^1]: This part is written with Illageralt font, meaning that it is normally undecipherable
[^2]: Supports modded biomes, as it only checks if the player is in The Nether dimension.
