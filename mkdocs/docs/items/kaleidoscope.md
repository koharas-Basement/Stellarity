# Kaleidoscope

<div class="result kohara-infobox-grid" markdown>
<div markdown class="kohara-infobox-text">
**Kaleidoscope** is a post-Empress axe which charges itself while held. Attacking releases stored energy in a powerful discharge which deals heavy splash damage.

<i class="icon-minecraft icon-minecraft-enchanted-book"></i> Kaleidoscope can be enchanted with any Axe enchantment.

<i class="icon-minecraft icon-minecraft-anvil"></i> Kaleidoscope is unbreakable and cannot be repaired with an Anvil. However, <i class="icon-minecraft icon-minecraft-enchanted-book"></i>Enchanted Books can be fused with a Kaleidoscope to transfer enchantments.

<br><br>

[TOC]

</div>
<div class="kohara-infobox-table">
  <table id="kohara-infobox--item">
	<tr>
		<th colspan="2" class="kohara-infobox--top-image"><img src="../../assets/items/kaleidoscope.png"></th>
	</tr>
	<tr>
		<th colspan="2">Info</th>
	</tr>
	<tr>
		<td><b>Damage</b></td>
		<td>
		10 (base)
		<br>
		3.3 - 23 (discharge)
		</td>
	</tr>
	<tr>
		<td><b>Attack Speed</b></td>
		<td>Very Slow (0.8)</td>
	</tr>
	<tr>
		<td><b>Tooltip</b></td>
		<td>
		Channels power from the core of the sun
		<br>
		Strike enemies to release stored energy
		<br>
		all at once in a powerful discharge
		</td>
	</tr>
	<tr>
		<td><b>Durability</b></td>
		<td>Unbreakable</td>
	</tr>
</table>
</div>
</div>

## Obtaining
Kaleidoscope is a guaranteed drop from the [Empress of Light](../mobs/bosses/empress_of_light.md), but only if she is killed in the Overworld during the day. This makes obtaining it extremely challenging.

## Usage
Holding Kaleidoscope in main hand causes it to rapidly charge up. Current charge is displayed in player's action bar.

Attacking a mob resets the charge back to 0. If charge is under 33, nothing happens. However, if player's charge is above that number, a powerful discharge will drain stored energy dealing heavy damage which splashes to nearby enemies.

The discharge damage stacks with weapons's base damage. Discharges only inherit 50% of melee damage bonuses *(excluding Strength potions, which only increase weapon's base damage)*.

Discharge damage is reduced further by Blast Protection enchantment. This does not affect base sword damage. Keep in mind that armor piercing damage ignores specialized enchantments.

Kaleidoscope is unbreakable on top of being immune to lava, fire, explosions and cacti. The only way to destroy the item is through either tossing it into the void or natural despawn.

### Discharge levels
| Charge | Damage | Splash radius | Armor penetration |
| :--- | :--- | :--- | :--- |
| 33 - 65 | `charge`/10 | :x: | 15% |
| 66 - 99 | 4 + `charge`/10 | 2.4 | 25% |
| 100 | 23 | 4.2 | 35% |

## Tips
- Enchantments like Sharpness, Smite or Bane of Arthropods only increase Kaleidoscope's base damage. Discharge damage can't be increased by any means.
- Since it is unbreakable, enchanting it with Mending and/or Unbreaking is pointless.
- 3rd level discharges are extremely deadly, as not only do higher damage amounts get mitigated less by armor, combining it with the extra armor penetration makes up for a deadly strike.
	- Kaleidoscope is the most efficient if 3rd level discharges are timed well.

## Sounds
| Sound | Name | Description | Subtitle | Resource location |
| :--- | :--- | :--- | :--- | :--- |
| <audio controls src="../../assets/sounds/kaleidoscope/ready_1.ogg" style="max-width: 100%; width: 180px;"><audio controls src="../../assets/sounds/kaleidoscope/ready_2.ogg" style="max-width: 100%; width: 180px;"><audio controls src="../../assets/sounds/kaleidoscope/ready_3.ogg" style="max-width: 100%; width: 180px;"><audio controls src="../../assets/sounds/kaleidoscope/ready_4.ogg" style="max-width: 100%; width: 180px;"><audio controls src="../../assets/sounds/kaleidoscope/ready_5.ogg" style="max-width: 100%; width: 180px;"> | Max Charge | :x: | :x: | `item.kaleidoscope.ready` |
| <audio controls src="../../assets/sounds/kaleidoscope/level_1_1.ogg" style="max-width: 100%; width: 180px;"> | 1st Discharge | :x: | :x: | `item.kaleidoscope.level_1` |
| <audio controls src="../../assets/sounds/kaleidoscope/level_2_1.ogg" style="max-width: 100%; width: 180px;"> | 2nd Discharge | :x: | :x: | `item.kaleidoscope.level_2` |
| <audio controls src="../../assets/sounds/kaleidoscope/level_3_1.ogg" style="max-width: 100%; width: 180px;"> | 3rd Discharge | :x: | :x: | `item.kaleidoscope.level_3` |

## Trivia
- Dying to a Kaleidoscope's discharge in PvP will result in a custom death message - `VICTIM couldn't stand PLAYER's heat`.
    - This is... quite an obvious joke right there.
- The sounds used to indicate max charge and the ones used for discharges come from the Dynamo enchantment from Minecraft: Dungeons.
- Kaleidoscope is one of the 4 unbreakable items in Stellarity, the other 3 being the [Dragonblade](dragonblade.md), maxed out [Frigid Harvester](frigid_harvester.md) and [Ancient Wooden Sword](ancient_wooden_sword.md).
- Before v2.1a, Kaleidoscope used to be a greatsword and used a Netherite Sword as its base item.
    - It got reworked into an axe as the community felt like Stellarity needs its own axe item.

## History
=== "**v2.1a**"
	- Now makes ambient particles while held.
	- Reworked from a greatsword to an axe.
	- Increased base damage (7 -> 10).
	- Reduced attack speed (1.2 -> 0.8).
	- Increased charge time (4.5s -> 5s).
	- Fixed discharge damage sometimes being too low.
	- Discharges now set mobs on fire.
	- Added a few death message variants in PvP.
	- Reduced 1st charge damage (`2 + charge/10` -> `charge/10`).
	- Reduced 2nd charge damage (`6 + charge/10` -> `4 + charge/10`).
	- Changed discharge armor penetration (20% -> [15%, 25%, 35%], depending on charge level).
	- Changed item sounds and particles.
	- Fixed base discharge and splash damage stacking, resulting in absurd damage outputs.
	- Discharges now receive 50% of melee damage bonuses.
	- Discharge is no longer triggered if hit entity survives initial hit and dies to any sort of damage over time later.

=== "**v2.0c**"
    - Reduced max charge time by 0.5s.
    - Now unbreakable.

=== "**v2.0a**"
    - Introduced.
