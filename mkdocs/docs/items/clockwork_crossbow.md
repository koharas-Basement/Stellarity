# Clockwork Crossbow

<div class="result kohara-infobox-grid" markdown>
<div markdown class="kohara-infobox-text">
**Clockwork Crossbow** is a modified variant of a Crossbow that is able to shoot as fast as you can right-click, but deals a bit less damage.

<i class="icon-minecraft icon-minecraft-enchanted-book"></i> Clockwork Crossbow can be enchanted with any Crossbow enchantment. Due to it ignoring Crossbow charging, Quick Charge has a brand new effect.

<i class="icon-minecraft icon-minecraft-anvil"></i> Clockwork Crossbow can be repaired by fusing it with a different <i class="icon-minecraft icon-minecraft-crossbow"></i>Crossbow.

<br><br>

[TOC]

</div>
<div class="kohara-infobox-table">
  <table id="kohara-infobox--item">
	<tr>
		<th colspan="2" class="kohara-infobox--top-image"><img src="../../assets/items/clockwork_crossbow.png"></th>
	</tr>
    <tr>
		<th colspan="2" class="kohara-infobox--top-image"><img src="../../assets/items/clockwork_crossbow_arrow.png"></th>
	</tr>
	<tr>
		<th colspan="2">Info</th>
	</tr>
	<tr>
		<td><b>Damage</b></td>
		<td>5 - 8</td>
	</tr>
	<tr>
		<td><b>Attack Speed</b></td>
		<td>Insanely Fast</td>
	</tr>
	<tr>
		<td><b>Tooltip</b></td>
		<td>
		Shoots incredibly fast
		<br>
		but with reduced damage
		<br>
		Chance to save ammunition, increases
		<br>
		with Quick Charge enchantment
		<br><br>
		<i>'i'm not using auto!'</i></td>
	</tr>
	<tr>
		<td><b>Durability</b></td>
		<td>365</td>
	</tr>
</table>
</div>
</div>

## Obtaining
Clockwork Crossbow has a chance to drop from Pillagers in [Strongholds](../structures/stronghold.md) with a 7% base chance. Each level of Looting increases the odds by 2%, up to a total of 13% with Looting III.

Fletchers in [End Villages](../structures/end_village.md) can also turn any existing Crossbow into Clockwork Crossbow for 64 <i class="icon-minecraft icon-minecraft-emerald"></i>Emeralds.

## Usage
Holding Clockwork Crossbow will automatically load it, provided there is at least 1 Arrow in player's inventory. Arrows will be stripped of all special properties (e.g. Spectral Arrows -> Arrows).

There is a 33% chance to not consume any arrows upon loading. Quick Charge enchantment increases the odds by 7% per level, giving a maximum of 54% chance to save Arrows with Quick Charge III.

Shot Arrows deal only 3:heart: x ₁․₅ damage per shot and cannot be picked up once fired.

## Tips
- Clockwork Crossbow loads itself every 6 ticks, meaning that on average it shoots about 3.33 Arrows per second.
- Due to projectiles ignoring invulnerability ticks, fired Arrows will never `bounce off` the target dealing no damage.
    - This effectively makes Multishot Clockwork Crossbow incredibly deadly up close, dealing triple damage.
- All arrow types will be converted into regular Arrows, so save your stronger ammunition for use with other weapons.

## Trivia
- This is the second ranged weapon to ever be added into Stellarity, with first one being the [Sharanga](sharanga.md).
- There are several unused textures for loading animation of Clockwork Crossbow, and one where it is loaded with a Firework instead of an Arrow.
	- They cannot be seen in-game under any circumstances.

## Advancements
| Icon | Title | Description | Parent | Actual requirements (if different) | Resource Location |
| :--- | :--- | :--- | :--- | :--- | :--- |
| <div class="adv-div"><i class="adv adv-task"></i><i class="icon-adv icon-stellarity icon-stellarity-sharanga"></i></div> | Rare Find | Obtain an uncommon drop from the Illagers residing in Strongholds | Eye Spy | Have either Sharanga, Clockwork Crossbow or any pre-Dragon Spellbook in your inventory | `stellarity:story/drop_rare_illager_loot` |

## History
=== "**vIndev-1.6a**"
    - Arrow damage nerfed (~8 -> 3).
    - Quick Charge now affects ammo conservation chance.
    - Drop chance increased (4% base chance -> 7%, with 1% -> 2% extra chance from Looting).
    - Fired Arrows per second reduced (20 -> 3.33).
    - Shot Arrows ignore invulnerability ticks.
    - Simplified item description and changed flavor text.

=== "**v1.5b**"
    - Introduced.
