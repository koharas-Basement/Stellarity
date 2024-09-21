# Shulker Armor
<div class="result kohara-infobox-grid" markdown>
<div markdown class="kohara-infobox-text">
**Shulker Armor** is a post-Dragon a direct upgrade to <i class="icon-minecraft icon-minecraft-netherite-chestplate"></i>Netherite Armor. It is oriented around defense.

Wearing a full set of Shulker Armor grants player a set bonus with multiple benefits:
	1. Shulker Bullets seek out anything that attacks the player.
	2. Flat 20% damage reduction.
	3. Immunity to Levitation and Wither debufffs.

However, Shulker Armor comes with a drawback in form of reduced movement and attack speed.

<br><br>

[TOC]

</div>
<div class="kohara-infobox-table">
  	<table id="kohara-infobox--item" markdown>
		<tr>
			<th colspan="2" class="kohara-infobox--top-image"><img src="../../../assets/armor/shulker/full.png" style="height: auto; image-rendering: auto;"></th>
		</tr>
		<tr>
			<th colspan="2">Info</th>
		</tr>
		<tr>
			<td><b>Total Defense</b></td>
			<td>24</td>
		</tr>
		<tr>
			<td><b>Total Armor Toughness</b></td>
			<td>16</td>
		</tr>
		<tr>
			<td><b>Total Other Bonuses</b></td>
			<td>
				-10% Movement Speed
				<br>
				-10% Attack Speed
				<br>
				+80% Knockback Resistance
				<br>
				+20% Damage Reduction
			</td>
		</tr>
		<tr>
			<td><b>Full Set Bonus</b></td>
			<td>
				Shulker Bullets will hunt down your attackers
				<br>
				Incoming damage reduced by 20%
				<br>
				Immunity to Levitation and Wither
			</td>
		</tr>
	</table>
</div>
</div>

## Obtaining
Each piece of Shulker Armor can be crafted by combining any piece of <i class="icon-minecraft icon-minecraft-netherite-chestplate"></i>Netherite Armor with 8 <i class="icon-minecraft icon-minecraft-shulker-shell"></i>Shulker Shells over the [Altar of The Accursed](../../mechanics/altar_of_the_accursed.md). Enchantments from the armor piece used to craft it will be transfered in the process, however properties like custom name or other NBT modifications will be lost.

## Set Bonus
While equipped with a full set of Shulker Armor being damaged has a 33% spawns up to 3 friendly Shulker Bullets. They will automatically seek out nearby enemies, dealing 4:heart::heart: damage, as well as applying Levitation II for 5 seconds for extra fall damage

Wearer also becomes fully immune to Levitation and Wither debuffs.

Set bonus also applies permanent Resistance I, which is equal to flat 20% damage reduction.

## Tips
- Set bonus won't remove Levitation given to players after being saved from falling into the Void by a <i class="icon-minecraft icon-minecraft-totem-of-undying"></i>Totem of Undying.
- Movement Speed decrease can be countered by using a <i class="icon-stellarity icon-stellarity-duskberry"></i>[Duskberry](../trinkets/duskberry.md), however it might be difficult to find one.
    - Alternatively, Swiftness Potions or [Zephyr](../zephyr.md) might act as a temporar solution.
- [Endurance Potions](../other/potions.md#endurance_potion) become redundant due to set bonus giving Resistance status effect instead of directly reducing damage taken by 1/5th.

## Trivia
- This is the third set to be added into Stellarity, 4 months after <i class="icon-stellarity icon-stellarity-ancient-armor"></i>[Ancient Armor](ancient_armor.md) and <i class="icon-stellarity icon-stellarity-hallowed-armor"></i>[Hallowed Armor](hallowed_armor.md).
- The only reason why Levitation immunity was incorporated into the set bonus was because *(very rarely)* Shulker Bullets which were spawned on damage could hit player, levitating them upwards, which felt rather awkward.
    - This was patched in vIndev-1.6a, however Levitation immunity still stayed.
    - kohara later expanded the effect to also provide immunity to Wither debuff.
- This armor set acts as an alternative to so-called `Enderite Armor`, since kohara didn't want to add an all-in-one armor set with `a generic recipe that requires just gathering some End ore`.

## Advancements
| Icon | Title | Description | Parent | Actual requirements (if different) | Resource Location |
| :--- | :--- | :--- | :--- | :--- | :--- |
| <div class="adv-div"><i class="adv adv-challenge"></i><i class="icon-adv icon-stellarity icon-stellarity-shulker-armor"></i></div> | <span style="color: #B533FF;">I am Titanium!</span> | Craft a full set of Shulker Armor | Cursed Crafting | :x: | `stellarity:aota/craft_shulker_armor` |

## History
=== "**v2.0c**"
	- Replaced the -15% Damage penalty with a -10% Attack Speed penalty.

=== "**v2.0b**"
    - Decreased the chance to spawn Shulker Bullets when hurt (60% -> 33%).
    - Fixed infinite loop when hit with own Shulker Bullets.

=== "**v2.0a**"
    - Reintroduced -15% Damage penalty.
    - Full set knockback resistance reduced (100% -> 80%).
    - Shulker Bullets now have a 60% chance to spawn when hurt.
    - Shulker Bullet levitation duration reduced (10s -> 5s), increased potency (I -> II).

=== "**vIndev-1.6a**"
	- Now has a custom texture.
	- Fixed CustomModelData values of Shulker Armor pieces being same as <i class="icon-stellarity icon-stellarity-hallowed-armor"></i>Hallowed Armor's.
	- Recipe now uses 8 <i class="icon-minecraft icon-minecraft-shulker-shell"></i>Shulker Shells instead of 15.
	- Added an advancement for crafting all 4 pieces of  <i class="icon-stellarity icon-stellarity-shulker-armor"></i>Shulker Armor.
	- Shulker Armor pieces now keep enchantments of Netherite Armor pieces used to craft them.
    - Removed Attack Speed and Damage penalty.
	- Reduced Movement Speed penalty (-14% -> -10%).
	- Fixed Shulker Bullets spawned on damage not counting as player's.
	- Set bonus now also provides immunity to Wither debuff.

=== "**v1.5a**"
	- Introduced.
