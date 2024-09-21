# Sharanga

<div class="result kohara-infobox-grid" markdown>
<div markdown class="kohara-infobox-text">
**Sharanga** is a bow which converts <i class="icon-minecraft icon-minecraft-spectral-arrow"></i>Spectral Arrows into Spectral bolts, which pierce infinite number of enemies and travel in a straight line. They also deal 20% more damage compared to regular Arrows. It is dropped by Illusioner in Strongholds. 

<i class="icon-minecraft icon-minecraft-enchanted-book"></i> Sharanga can be enchanted with any Bow enchantment.

<i class="icon-minecraft icon-minecraft-anvil"></i> Sharanga can be repaired by fusing it with a different <i class="icon-minecraft icon-minecraft-bow"></i>Bow.

<br><br>

[TOC]

</div>
<div class="kohara-infobox-table">
  <table id="kohara-infobox--item">
	<tr>
		<th colspan="2" class="kohara-infobox--top-image"><img src="../../assets/items/sharanga.png"></th>
	</tr>
    <tr>
		<th colspan="2" class="kohara-infobox--top-image"><img src="../../assets/items/sharanga_pulling.gif"></th>
	</tr>
	<tr>
		<th colspan="2">Info</th>
	</tr>
	<tr>
		<td><b>Damage</b></td>
		<td>Varies</td>
	</tr>
	<tr>
		<td><b>Attack Speed</b></td>
		<td>Normal</td>
	</tr>
	<tr>
		<td><b>Tooltip</b></td>
		<td>Converts Spectral Arrows into
		<br>
		Spectral Bolts which travel
		<br>
		in a straight line
		<br>
		33% chance to save Spectral Arrows,
		<br>
		doubles with Infinity enchantment
		</td>
	</tr>
	<tr>
		<td><b>Durability</b></td>
		<td>424</td>
	</tr>
</table>
</div>
</div>

## Obtaining
Sharanga has a chance to drop from Illusioners in [Strongholds](../structures/stronghold.md) with a 9% base chance. Each level of Looting increases the odds by 3%, up to a total of 18% with Looting III. It drops with 7 - 22 <i class="icon-minecraft icon-minecraft-spectral-arrow"></i>Spectral Arrows.

Fletchers in [End Villages](../structures/end_village.md) can turn any existing Bow into Sharanga for 64 <i class="icon-minecraft icon-minecraft-emerald"></i>Emeralds.

## Usage
Unless <i class="icon-minecraft icon-minecraft-spectral-arrow"></i>Spectral Arrows are used as ammunition for this Bow, it has no special properties other than increased durability.

When using <i class="icon-minecraft icon-minecraft-spectral-arrow"></i>Spectral Arrows as ammunition, they are converted into high velocity Spectral Bolts. Spectral Bolts can pierce an infinite number of enemies, inflicting Glowing for 10 seconds, while moving at 1.2x the speed of standard Arrows. Due to how arrow damage is calculated, this also means a 1.2x damage multiplier. 

Spectral Bolts travel in a straight line, being completely unnaffected by gravity.

Spectral Bolts also explode after hitting a block, or after 1 second. The explosion deals 66% of base arrow damage with 20% armor penetration. It does not increase or decrease with draw time. Just like the Bolts, explosions inflicting Glowing for 10 seconds.

<i class="icon-minecraft icon-minecraft-spectral-arrow"></i>Spectral Arrows have a 25% chance to not be used after being fired. This chance doubles with Infinity enchantment for a 50% chance to not be consumed.

### Explosion Damage

| Power Enchantment Level | Damage |
| :--- | :--- |
| :x: | 1 (:heart: х ₁ ⁄₂) |
| 1 | 2 (:heart:) |
| 2 | ~3 (:heart: х ₁.₅) |
| 3 | ~3 (:heart: х ₁.₅) |
| 4 | 3 (:heart: х ₁.₅) |
| 5 | 4 (:heart::heart:) |

## Tips
- Because of how rounding works, Spectral Bolt explosions deals between 2.3 - 2.7 damage for Power levels 2 and 3, and not full 3.
- Arrows will always disappear after 1.5 seconds, not after travelling a set distance.
- Sharanga enchanted with Infinity is superior to one enchanted with Mending due to increased chance of conserving <i class="icon-minecraft icon-minecraft-spectral-arrow"></i>Spectral Arrows.
- Skeletons in The End drop <i class="icon-minecraft icon-minecraft-spectral-arrow"></i>Spectral Arrows on death while being inflicted with Glowing, meaning that setting up a mob farm there could be a really good way to get the special ammunition for Sharanga.

## Trivia
- This is the first ranged weapon to ever be added into Stellarity.
- Prior to 2.0a, explosions would respect armor and deal set 10 damage to all enemies. This has been changed since then.
- Endermen don't teleport when hit with Spectral Explosion, but will if hit with Spectral Bolts.
- In PvP, dying to a Spectral Bolt explosion will result in a custom death message - `VICTIM was torn apart by PLAYER's Spectral Boom`.

## Advancements
| Icon | Title | Description | Parent | Actual requirements (if different) | Resource Location |
| :--- | :--- | :--- | :--- | :--- | :--- |
| <div class="adv-div"><i class="adv adv-task"></i><i class="icon-adv icon-stellarity icon-stellarity-sharanga"></i></div> | Rare Find | Obtain an uncommon drop from the Illagers residing in Strongholds | Eye Spy | Have either Sharanga, Clockwork Crossbow or any pre-Dragon Spellbook in your inventory | `stellarity:story/drop_rare_illager_loot` |

## History
=== "**v2.0a**"
    - Extra velocity multiplier reduced (1.25x -> 1.2x).
    - Reduced bolt lifespan back to 1s.
    - <i class="icon-minecraft icon-minecraft-spectral-arrow"></i>Spectral Arrow save chance reduced to 25%. Infinity chance reduced to 50%. 

=== "**vIndev-1.6a**"
	- Sharanga drop rate increased frequently (5% base chance -> 9%,  with 2% -> 3% extra chance from Looting).
	- Spectral Bolt explosions no longer deal set 10 damage, and instead deal 66% of Arrow's base damage with 20% armor penetration.
	- Spectral Bolts velocity buffed (1x -> 1.25x). This also increases damage output.
	- Optimized and cleaned up Sharanga's code.
	- Sharanga durability increased (384 -> 424).
	- Sound and particle effects tweaked slightly.
	- Now drops paired with 7 - 22 <i class="icon-minecraft icon-minecraft-spectral-arrow"></i>Spectral Arrows.
	- Now has a 33% chance to not consume <i class="icon-minecraft icon-minecraft-spectral-arrow"></i>Spectral Arrows. This chance is increased to 66% if enchanted with Infinity.
	- Dying to a Spectral Bolt explosion will now result in a custom death message.
	- Increased Bolt lifespan to 1.5s.

=== "**v1.5b**"
	- Introduced
