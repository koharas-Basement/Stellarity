# Tamaris

<div class="result kohara-infobox-grid" markdown>
<div markdown class="kohara-infobox-text">
**Tamaris** is a post-Dragon greatsword which allows players to trigger a powerful Execute ability, warping to nearby enemies with low health and killing them instantly. It also applies new DoT effect called **Dark Decay** on hit.

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
		<i>'Property of Captain Hannah'</i>
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
When damaged below 25% of health, mobs will have a white mark above their head. This marks them weak. 

After sneaking for a moment, you will warp to the nearest weak mob, instantly killing them. This warp has a range of 16 blocks and will be cancelled if a mob walks out of that radius.

Executing a mob holding a <i class="icon-minecraft icon-minecraft-totem-of-undying"></i>Totem of Undying will apply a 11 second cooldown in order to prevent saved mob from being executed a second after using a Totem. Cooldown is indicated by a <span style="color: red;">DISABLED</span> text in player's action bar.

### Dark Decay
Regular attacks inflict **Dark Decay** for 6 seconds. Dark Decay deals 1:heart: х ₀.₅ damage every 1.5 seconds for a total of 4:heart::heart: damage. While this doesn't sound any special at first, Decay has an armor penetration of <u>80%</u>, which means that its damage almost ignores armor.

Enchanting Tamaris with Curse of Vanishing doubles the Decay damage.

Dark Decay effect stacks with other means of damage over time, like Wither, Poison or Fire.

## Tips
- Tamaris is intended to be used as a support weapon. Switching to it to reapply Decay or to execute a weak enemy is the best way to use it.
- Tamaris prioritizes nearest weak mob while choosing a target to execute next. Keep in mind while trying to chain execute a group of weak mobs.
- The execute treshold is lower for certain mobs.
    - In PvP, health percentage required to mark a player 'executable' is **20%**.
    - On bosses *(Wither, Empress of Light)* and Wardens, this treshold is **10%**.

		!!! info "Adding compatibility"

			Modders can extend the `stellarity:boss` tag with their own boss mob IDs to set their execute treshold to 10%

			Boss Datapack developers can add the `stellarity.boss` tag to their boss entity. This does the same thing as extending the tag, but only for one particular entity.

    - Non-living entities *(Item Frames, Armor Stands, etc.)* and the Ender Dragon are immune to Tamaris' execute.
- Try not to use this weapon in Multiplayer while teaming up with other players, as it could potentialy lead to one of your allies being accidentaly executed.
	- Execute move targets the closest weak mob, so use it to avoid mistakes.

## Trivia
- The execute ability deals 999 damage with 100% armor penetration instead of doing `/kill` directly.
    - This is because `/kill` ignores <i class="icon-minecraft icon-minecraft-totem-of-undying"></i>Totems of Undying.
- This item was intended to be called `Void Star`, but the official name was changed before release.
    - It was also supposed to have a [consecrated](../mechanics/consecration.md) variant called `Hallow Star`, which would simply have different visual and sound effects.
- This item and its ability is based on Hannah[^1] kit from Roblox BedWars[^2].
    - Sounds used for triggering the Execute ability are actual sounds of Hannah triggering her Execute move from Roblox Bedwars.
        - Additionally, kohara uses a different execute sound, being the one of Victorious Hannah instead.
- Tamaris was supposed to replace Dragonblade as its one-per-world kind of item.
    - However due to a community vote, it became a Dragon drop instead.
- Its name `Tamaris` is a reference to kohara's grandma's cat's name - *Tamara*.
    - The name *Tamara* is a polish name derivating from hebrew, which rougly translates into `palm tree`.
    - kohara chose to base the name off the aformentioned cat because he had always seen it as a `hidden assasin who is ready to scratch anyone`.
        - To make things funnier, the cat is not hostile at all, and loves hugs.
- The advancement name `Kill la Kill` is a reference to an anime series of the same name.
    - It means `Kill the prey` in French.
- Dying to the Execute ability in PvP will result in a custom death message - `VICTIM was publicly executed by PLAYER`.
- The file used for dealing ability damage is called `super_hyper_extra_heavy_damage_you_cannot_survive.mcfunction`.

## Advancements
| Icon | Title | Description | Parent | Actual requirements (if different) | Resource Location |
| :--- | :--- | :--- | :--- | :--- | :--- |
| <div class="adv-div"><i class="adv adv-task"></i><i class="icon-adv icon-stellarity icon-stellarity-tamaris"></i></div> | Disassembly | Use Tamaris to execute a mob with low health | The Next Generation | :x: | `stellarity:dragons_den/disassembly` |
| <div class="adv-div"><i class="adv adv-challenge"></i><i class="icon-adv icon-stellarity icon-stellarity-tamaris"></i></div> | Kill la Kill | Trigger the Execute ability on a Warden. **Good luck...** | Disassembly | :x: | `stellarity:dragons_den/kill_la_kill` |

## History
=== "**v2.0c**"
    - Reduced boss execute treshold (15% -> 10%).
    - Fixed non-melee attacks being able to proc Dark Decay.

=== "**v2.0a**"
    - Reduced base damage by 1 (7 -> 6).
    - Reworked Dark Decay.
        - Damage reduced (3 -> 1).
        - Increased armor penetration (20% -> 80%).
        - Curse of Vanishing now doubles the decay damage. No longer increases the duration.
        - Increased damage tick speed, reduced the effect duration.

=== "**vIndev-1.6a**"
    - Introduced.

[^1]: [Hannah](https://robloxbedwars.fandom.com/wiki/Hannah) kit on Roblox Bedwars Wiki
[^2]: [Roblox BedWars](https://www.roblox.com/games/6872265039/)
