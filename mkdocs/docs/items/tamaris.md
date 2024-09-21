# Tamaris

<div class="result kohara-infobox-grid" markdown>
<div markdown class="kohara-infobox-text">
**Tamaris** is a post-Dragon sword which allows players to trigger a powerful Execute ability, warping to nearby enemies with low health and killing them instantly. It inflicts **Dark Decay** on hit enemies, causing them to take damage over time.

<i class="icon-minecraft icon-minecraft-enchanted-book"></i> Tamaris can be enchanted with any Sword enchantment. Curse of Vanishing strengthens Dark Decay.

<i class="icon-minecraft icon-minecraft-anvil"></i> Tamaris can be repaired with <i class="icon-minecraft icon-minecraft-netherite-ingot"></i>Netherite Ingots.

<br><br>

[TOC]

</div>
<div class="kohara-infobox-table">
  <table id="kohara-infobox--item">
	<tr>
		<th colspan="2" class="kohara-infobox--top-image"><img src="../../assets/items/tamaris.png"></th>
	</tr>
	<tr>
		<th colspan="2">Info</th>
	</tr>
	<tr>
		<td><b>Damage</b></td>
		<td>6</i></td>
	</tr>
	<tr>
		<td><b>Attack Speed</b></td>
		<td>Normal (1.4)<i></i></td>
	</tr>
	<tr>
		<td><b>Tooltip</b></td>
		<td>
		Press [SHIFT] to activate your Execute ability,
		<br>
		instantly killing nearby enemies with low health!
		<br>
		Applies Dark Decay on hit
		<br>
		<i>'Property of Captain Charo'</i>
		</td>
	</tr>
	<tr>
		<td><b>Durability</b></td>
		<td>1562</td>
	</tr>
</table>
</div>
</div>

## Obtaining
Tamaris has a 66% chance to be dropped by the Ender Dragon. It always drops with either an [Ender Insignia](trinkets/ender_insignia.md) or [Crest of The End](trinkets/crest_of_the_end.md).

## Usage
When damaged below 25% of health, mobs will have a gray mark above their head. This marks them as weak with a puff of dust above them.

After sneaking for a moment, you will warp to the nearest weak mob, instantly killing them. This warp has a range of 10 blocks. If an enemy walks out of that radius mid-execute, the warp is going to follow the mob to its new location.

Executing a mob holding a <i class="icon-minecraft icon-minecraft-totem-of-undying"></i>Totem of Undying or a player with the [Holy Protection](armor/hallowed_armor.md) buff applies an 11 second execute cooldown. It is indicated by a <span style="color: red;">DISABLED</span> text in player's action bar, which goes away as the cooldown ends.

### Dark Decay
Sword attacks inflict **Dark Decay** for 6 seconds. Dark Decay deals 1:heart: х ₀.₅ damage every 1.5 seconds for a total of 4:heart::heart: damage. While this doesn't sound any special at first, Decay has 60% armor penetration, which means that a large portion of its damage doesn't get reduced by armor.

Enchanting Tamaris with Curse of Vanishing doubles the Decay damage.

Dark Decay effect stacks with other means of damage over time, like Wither, Poison or Fire.

## Tips
- Tamaris is intended to be used as a support weapon. Switching to it to reapply Decay or to execute a weak enemy is the best way to use it.
- Tamaris prioritizes nearest weak mob while choosing a target to execute next. Keep in mind while trying to chain execute a group of weak mobs.
- The execute treshold is lower for certain mobs.
	- On bosses *(Wither, Empress of Light)* and Wardens, this treshold is **10%**.
	- Non-living entities *(Item Frames, Armor Stands, etc.)* and the Ender Dragon are immune to Tamaris' execute.
- Use this weapon carefully in Multiplayer while teaming up with other players, as it could potentialy lead to one of your allies being accidentaly executed.
	- Execute move targets the closest weak mob, so use this information to avoid mistakes.
- The execute strike cannot be dodged or avoided without any form of invulnerability. Even if an entity teleports away mid-fight, the warp is going to take you to their new location.

!!! info "Guide: Adding compatibility"

	Modders can extend the `#stellarity:boss` tag with their own boss mob IDs to set their execute treshold to 10%

	Boss Datapack developers can add the `stellarity.boss` tag to their boss entity. This does the same thing as extending the tag, but only for one particular entity.

## Sounds
| Sound | Name | Description | Subtitle | Resource location |
| :--- | :--- | :--- | :--- | :--- |
| <audio controls src="../../assets/sounds/tamaris/execute.ogg" style="max-width: 100%; width: 180px;"> | Execute | Plays when the execute ability is triggered | `Tamaris executes` | `item.tamaris.execute` |
| <audio controls src="../../assets/sounds/tamaris/execute_special.ogg" style="max-width: 100%; width: 180px;"> | Execute Special | Plays when the execute ability is triggered by players named `kohara_`. | `kohy slays` | `item.tamaris.execute_special` |
| <audio controls src="../../assets/sounds/tamaris/execute_bg.ogg" style="max-width: 100%; width: 180px;"> | Execute Background | Plays alongside regular execute sounds. | :x: | `item.tamaris.execute_bg` |
| <audio controls src="../../assets/sounds/tamaris/dance.ogg" style="max-width: 100%; width: 180px;"> | Execute Rave | Played only when a player named `kohara_` executes another player. | :x: | `item.tamaris.rave` |

## Advancements
| Icon | Title | Description | Parent | Actual requirements (if different) | Rewards | Resource Location |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| <div class="adv-div"><i class="adv adv-task"></i><i class="icon-adv icon-stellarity icon-stellarity-tamaris"></i></div> | Disassembly | Use Tamaris to execute a mob with low health | The Next Generation | :x: | :x: | `stellarity:dragons_den/disassembly` |
| <div class="adv-div"><i class="adv adv-challenge"></i><i class="icon-adv icon-stellarity icon-stellarity-tamaris"></i></div> | Kill la Kill | Trigger the Execute ability on a Warden | Disassembly | :x: | 1200 EXP | `stellarity:dragons_den/kill_la_kill` |

## Trivia
- The execute ability deals 999 damage with 100% armor penetration instead of directly doing `/kill`.
	- This is because `/kill` ignores <i class="icon-minecraft icon-minecraft-totem-of-undying"></i>Totems of Undying.
- This item was intended to be called `Void Star`, but the official name was changed before release.
	- It was also supposed to have a [consecrated](../mechanics/consecration.md) variant called `Hallow Star`, which would simply have different visual and sound effects.
- This item and its ability is based on the Hannah[^1] kit from Roblox BedWars[^2].
	- Sounds used for triggering the Execute ability are actual sounds of Hannah triggering her Execute move from Roblox Bedwars.
		- Additionally, kohara uses a different execute sound, being the one of Victorious Hannah instead.
- Tamaris was supposed to replace Dragonblade as its one-per-world kind of item, however as a result of a community poll, it was turned into a Dragon drop instead.
- Its name `Tamaris` is a reference to kohara's grandma's cat's name - *Tamara*.
	- The name *Tamara* is a polish name derivating from hebrew, which rougly translates into `palm tree`.
	- kohara chose to base the name off the aforementioned cat because he had always seen it as a `hidden assasin who is ready to scratch anyone`.
		- To make things funnier, the cat is not hostile at all and loves hugs.
- The advancement name `Kill la Kill` is a reference to an anime series of the same name.
	- It means `kill the prey` in French.
- Dying to the execute ability in PvP will result in one of a few custom death messages:
	1. `VICTIM was publicly executed by PLAYER`.
	2. `VICTIM was forced to see what 999 damage is like by PLAYER`
	3. `VICTIM had their remaning health taken away by PLAYER`
- The file used for dealing ability damage is called `super_hyper_extra_heavy_damage_you_cannot_survive.mcfunction`.
- Before v2.1a, its flavor text used to be `'propery of Captain Hannah'`.
	- This was changed to avoid confusion with a VTuber of the same name.
	- Current flavor text references Captain Charo[^3] - a furry OC kohara drew in high school.
- While Tamaris is refered to as a sword, it is actually a cutlass.
    - Its design is based on the cutlass the aforementioned OC uses.
- <i class="icon-stellarity icon-stellarity-cursed-tome"></i> According to the [Cursed Enchiridion](cursed_tome.md), Tamaris is infused with dark destructive magic, which causes the sword to slowly decay on its own.
    - Despite this, the item doesn't change its appearance with time, neither does it lose any durability.

## History

=== "**v2.1a**"
	- The execute indicator now shows up on weak mobs in a 20 block radius.
	- Decoupled the search radius for mobs to execute with the strike.
	- Increased execute cooldown (0.15s -> 0.5s).
	- Added few death message variants for the execute attack.
	- Fixed execute death message sometimes not showing who made the finishing move.
	- Updated execute move sounds and particles.
	- Reduced the `Kill la Kill` advancement EXP reward from 1500 to 1200.
	- Execute health calculations are now ran in a twice as large radius.
	- Changed the execute indicator.
	- Increased player execute treshold (20% -> 25%).
	- Reduced execute range (16 blocks -> 10 blocks).
	- Changed flavor text.
	- Updated item texture. The old texture was <i class="icon-stellarity icon-stellarity-tamaris-old"></i>.

=== "**v2.0c**"
	- Reduced boss execute treshold (15% -> 10%).
	- Fixed non-melee attacks being able to proc Dark Decay.
	- Reduced dark decay armor penetration (80% -> 60%).
	- Execute ability now deals light knockback.

=== "**v2.0a**"
	- Reduced base damage by 1 (7 -> 6).
	- Reworked Dark Decay.
		- Damage reduced (3 -> 1).
		- Increased armor penetration (20% -> 80%).
		- Curse of Vanishing now doubles Decay damage.
		- Curse of Vanishing no longer increases Decay duration.
		- Increased damage tick speed, reduced the effect duration.

=== "**vIndev-1.6a**"
	- Introduced.

[^1]: [Hannah](https://robloxbedwars.fandom.com/wiki/Hannah) kit on Roblox Bedwars Wiki
[^2]: [Roblox BedWars](https://www.roblox.com/games/6872265039/)
[^3]: Original drawing of [Captain Charo](linkygoesherelater)
