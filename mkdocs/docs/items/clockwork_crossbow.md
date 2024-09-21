# Clockwork Crossbow

<div class="result kohara-infobox-grid" markdown>
<div markdown class="kohara-infobox-text">
**Clockwork Crossbow** is a modified variant of a Crossbow that is able to shoot incredibly fast, but deals a bit less damage when compared to its non-mechanized counterpart.

<i class="icon-minecraft icon-minecraft-enchanted-book"></i> Clockwork Crossbow can be enchanted with any Crossbow enchantment. Due to it charging almost instantly, Quick Charge has a brand new effect on the item.

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
Holding Clockwork Crossbow will automatically load it, provided there is at least 1 Arrow in player's inventory. Arrows will be stripped of all special properties (e.g. Spectral Arrows -> Arrows) and by default do not crit.

While shooting, player suffers a 30% speed penalty.

There is a 25% chance to not consume any arrows upon loading. If an arrow is conserved, the next fired shot will be critical. Quick Charge enchantment increases the odds by 6% per level, giving a maximum of 43% chance to save Arrows with Quick Charge III. This also increases the probability of shooting a critical arrow.

Shot Arrows deal reduced damage of 3:heart: x ₁․₅ per shot. Only non-conserved arrows can be picked up after firing.

## Tips
- Due to projectiles ignoring invulnerability ticks, fired Arrows will never `bounce off` the target without dealing any damage.
    - This effectively makes Multishot Clockwork Crossbow incredibly deadly up close, as all arrows can hit the target.
- All arrow types will be converted into regular Arrows, so save your stronger ammunition for use with other weapons.

## Trivia
- This is the second ranged weapon to ever be added into Stellarity, with first one being the [Sharanga](sharanga.md).
- There are several unused textures for loading animation of Clockwork Crossbow, and one where it is loaded with a Firework instead of an Arrow.
	- They cannot be seen in-game under any circumstances.
- During the development of vIndev-1.6a, the base conservation chance was 50%.
- Before vIndev-1.6a, there used to be no CPS cap, meaning that an arrow could be fired roughly every 2 ticks.

## Advancements
| Icon | Title | Description | Parent | Actual requirements (if different) | Resource Location |
| :--- | :--- | :--- | :--- | :--- | :--- |
| <div class="adv-div"><i class="adv adv-task"></i><i class="icon-adv icon-stellarity icon-stellarity-sharanga"></i></div> | Rare Find | Obtain an uncommon drop from the Illagers residing in Strongholds | Eye Spy | Have either Sharanga, Clockwork Crossbow or any pre-Dragon Spellbook in your inventory | `stellarity:story/drop_rare_illager_loot` |

## History
=== "**v2.1a**"
	- Reduced the base arrow conservation chance (33% -> 25%).
	- Reduced extra conservation chance per level of Quick Charge (7% -> 6%).
	- Now has a chance to shoot critical arrows.
	- Non-conserved arrows can be picked back up.
	- Shot arrows now despawn twice as quickly (60s -> 30s).
	- Reworked how shooting cooldown works.
	- Players move 30% slower for 1.1s after firing.
	- Updated particles and sound effects.
	- Reduced firing speed (3.33 arrows/sec -> 2.85 arrows/sec)
	- Arrows are no longer drained if loaded by a player in Creative mode.

=== "**vIndev-1.6a**"
    - Nerfed arrow damage (~8 -> 3).
    - Quick Charge now affects ammo conservation chance.
    - Increased drop chance (4% base chance -> 7%, with 1% -> 2% extra chance from Looting).
    - Reduced firing speed (20 arrows/sec -> 3.33 arrows/sec).
    - Arrows ignore invulnerability ticks.
    - Simplified item description and changed flavor text.

=== "**v1.5b**"
    - Introduced.
