# Frigid Harvester

> :tada:{ .mirror } ***DEDICATED CONTENT*** :tada:
>
> This feature is dedicated to FokaStudio (*Developer*)

<div class="result kohara-infobox-grid" markdown>
<div markdown class="kohara-infobox-text">
**Frigid Harvester** is a post-Dragon greatsword which permanently increases its dealt damage after killing a mob while also unlocking passive abilities.

<i class="icon-minecraft icon-minecraft-enchanted-book"></i> Frigid Harvester can be enchanted with any Sword enchantment.

<i class="icon-minecraft icon-minecraft-anvil"></i> Frigid Harvester can be repaired with <i class="icon-minecraft icon-minecraft-diamond"></i>Diamonds.

<br><br>

[TOC]

</div>
<div class="kohara-infobox-table">
  <table id="kohara-infobox--item">
	<tr>
		<th colspan="2" class="kohara-infobox--top-image"><img src="../../assets/items/frigid_harvester.png"></th>
	</tr>
	<tr>
		<th colspan="2" class="kohara-infobox--top-image"><img src="../../assets/items/frigid_harvester_all_levels.gif"></th>
	</tr>
	<tr>
		<th colspan="2">Info</th>
	</tr>
	<tr>
		<td><b>Damage</b></td>
		<td>5</td>
	</tr>
	<tr>
		<td><b>Attack Speed</b></td>
		<td>Very Slow (0.9)</td>
	</tr>
	<tr>
		<td><b>Tooltip</b></td>
		<td>
			Imbues itself with souls of slain enemies,
			<br>
			permanently increasing its damage
			<br><br>
			<span style="color: #BA02D7;">- Developer Item -</span>
		</td>
	</tr>
	<tr>
		<td><b>Durability</b></td>
		<td>1562</td>
	</tr>
	<tr>
		<td><b>Other</b></td>
		<td>-15% Movement Speed (while held)</td>
	</tr>
</table>
</div>
</div>

## Obtaining
Frigid Harvester has a 10% chance to be found inside Frozen Crates fished up from [Void Fishing](../mechanics/void_fishing.md).

Additionaly<br><i class="icon-minecraft icon-minecraft-mob-stray-face"></i>Strays spawning in [Frosted Hills](../biomes/frosted_hills.md) have a 3% chance to spawn holding a Frigid Harvester. Killing them will cause them to drop the weapon. Strays equipped with Harvesters have increased health, defense and damage, and wear a <i class="icon-minecraft icon-minecraft-diamond-helmet"></i>Diamond Helmet.

## Usage
Killing any living mob permanently increases Frigid Harvester's damage. The extra damage is listed in the item description.

Stronger mobs give more extra damage, while passive mobs barely give any.

Frigid Harvester goes through a few texture changes as it hits different amounts of extra damage. First being at +3, then at +6 and final one at +9. Extra damage isn't capped, however damage gains roll off quickly at higher amounts. If extra damage drops to 0 or 0.01, nothing is going to happen on kill. 

While holding Frigid Harvester in main hand movement speed is reduced by 15%.

### Passive Abilities

- **Chill** - **unlocked at +3 damage**; 20% chance per hit to apply Slowness I for 3 seconds to hit mob.
- **Frostburn** - **unlocked at +6 damage**; 25% chance per hit to apply Frostburn, dealing 1.5:heart: х ₀.₇₅[^3] damage every second for 3 seconds.
- **Chill II** - **unlocked at +9 damage**; chance per hit increased to 33%, duration increased to 4 seconds and now also inflicts Weakness I.
- **Frostburn II** - **unlocked at +9 damage**; chance per hit increased to 50%, duration increased to 5 seconds.

| Extra Damage Amount | Mobs | Tag File |
| :--- | :--- | :--- |
| +0.06 | All passive mobs<br><i class="icon-minecraft icon-minecraft-mob-bee-face"></i>Bee<br><i class="icon-minecraft icon-minecraft-mob-polar-bear-face"></i>Polar Bear<br><i class="icon-minecraft icon-minecraft-mob-snow-golem-face"></i>Snow Golem<br><i class="icon-minecraft icon-minecraft-mob-iron-golem-face"></i>Iron Golem<br><i class="icon-minecraft icon-minecraft-mob-slime-face"></i>Slime<br><i class="icon-minecraft icon-minecraft-mob-magma-cube-face"></i>Magma Cube<br><i class="icon-minecraft icon-minecraft-mob-cave-spider-face"></i>Cave Spider<br><i class="icon-minecraft icon-minecraft-mob-guardian-face"></i>Guardian | `#stellarity:frigid_harvester/gives_minor_boost` |
| +0.12 | <i class="icon-minecraft icon-minecraft-mob-zombie-face"></i>Zombie<br><i class="icon-minecraft icon-minecraft-mob-skeleton-face"></i>Skeleton<br><i class="icon-minecraft icon-minecraft-mob-spider-face"></i>Spider<br><i class="icon-minecraft icon-minecraft-mob-enderman-face"></i>Enderman<br><i class="icon-minecraft icon-minecraft-mob-husk-face"></i>Husk<br><i class="icon-minecraft icon-minecraft-mob-stray-face"></i>Stray<br><i class="icon-minecraft icon-minecraft-mob-pillager-face"></i>Pillager<br><i class="icon-minecraft icon-minecraft-mob-drowned-face"></i>Drowned<br><i class="icon-minecraft icon-minecraft-mob-zombie-villager-face"></i>Zombie Villager<br><i class="icon-minecraft icon-minecraft-mob-zombified-piglin-face"></i>Zombified Piglin<br><i class="icon-minecraft icon-minecraft-mob-piglin-face"></i>Piglin<br><i class="icon-minecraft icon-minecraft-mob-pillager-face"></i>Pillager<br><i class="icon-minecraft icon-minecraft-mob-vex-face"></i>Vex | `#stellarity:frigid_harvester/gives_small_boost` |
| +0.23 | <i class="icon-minecraft icon-minecraft-mob-wither-skeleton-face"></i>Wither Skeleton<br><i class="icon-minecraft icon-minecraft-mob-blaze-face"></i>Blaze<br><i class="icon-minecraft icon-minecraft-mob-vindicator-face"></i>Vindicator<br><i class="icon-minecraft icon-minecraft-mob-witch-face"></i>Witch<br><i class="icon-minecraft icon-minecraft-mob-phantom-face"></i>Phantom<br><i class="icon-minecraft icon-minecraft-mob-shulker-face"></i>Shulker<br><i class="icon-minecraft icon-minecraft-mob-hoglin-face"></i>Hoglin<br><i class="icon-minecraft icon-minecraft-mob-creeper-face"></i>Creeper<br>Other players (PvP) | `#stellarity:frigid_harvester/gives_big_boost` |
| +0.33 | <i class="icon-minecraft icon-minecraft-mob-evoker-face"></i>Evoker<br><i class="icon-minecraft icon-minecraft-mob-illusioner-face"></i>Illusioner<br><i class="icon-minecraft icon-minecraft-mob-piglin-brute-face"></i>Piglin Brute<br><i class="icon-minecraft icon-minecraft-mob-ghast-face"></i>Ghast<br><i class="icon-minecraft icon-minecraft-mob-zoglin-face"></i>Zoglin<br><i class="icon-minecraft icon-minecraft-mob-ravager-face"></i>Ravager | `#stellarity:frigid_harvester/gives_large_boost` |
| +1.22 | <i class="icon-minecraft icon-minecraft-mob-wither-face"></i>Wither<br><i class="icon-minecraft icon-minecraft-mob-giant-face"></i>Giant<br><i class="icon-minecraft icon-minecraft-mob-elder-guardian-face"></i>Elder Guardian<br><i class="icon-minecraft icon-minecraft-mob-warden-face"></i>Warden<br>Some modded bosses | `#stellarity:frigid_harvester/gives_huge_boost` |

## Tips
- It is relatively easy to get Frigid Harvester to +3 or +4 damage. It can be achieved in one night by just running around and killing Zombies or Skeletons.
- Getting Frigid Harvester to +9 might be difficult, as weaker mobs quickly stop giving extra damage.
    - Going past +9 requires grinding <i class="icon-minecraft icon-minecraft-mob-wither-face"></i>Withers or <i class="icon-minecraft icon-minecraft-mob-warden-face"></i>Wardens.
- Even though Frigid Harvester starts extremely weak compared to other late-game weapons, it can quickly outdamage them with right setup.
- You get slowed down while holding a Frigid Harvester. This can be cancelled out by using Swiftness Potion.
- Warden or Wither farming is an efficient to quickly level up a Frigid Harvester to even +10 or +11.

## Trivia
- This is the third Developer weapon to get added into Stellarity, the first being [Prismatic Punch](prismatic_punch.md), second being [Spirit Dagger](spirit_dagger.md).
- This weapon is based on Aery[^1] kit from Roblox BedWars[^2].
	- In some places in the code, Frigid Harvester is reffered to as `aery_sword`.
- Lorewise, Frigid Harvester is said to have been made out of Enchanted Ice by an uknown Illager.
- Despite 2.0c reducing damage gains from mobs, the change it made to scaling means it is still easier to max out Frigid Harvester than in 2.0b and prior.
 
## Advancements
| Icon | Title | Description | Parent | Actual requirements (if different) | Resource Location |
| :--- | :--- | :--- | :--- | :--- | :--- |
| <div class="adv-div"><i class="adv adv-challenge"></i><i class="icon-adv icon-stellarity icon-stellarity-frigid-harvester"></i></div> | Frozen Reaper | Reach +9 Extra Damage on Frigid Harvester<br><span style="color: #727272;">ᴛɪᴘ: ᴛʜɪѕ ᴍɪɢʜᴛ ʀᴇǫᴜɪʀᴇ ѕᴏᴍᴇ ɢʀɪɴᴅɪɴɢ...</span> | Remote Getaway | :x: | `stellarity:exploration/max_out_aery_sword` |

## History
=== "**v2.0c**"
    - Lessened the damage scaling by a factor of 2.
    - Reduced damage gains from mobs.

=== "**vIndev-1.6a**"
	- Introduced.

[^1]: [Aery kit](https://robloxbedwars.fandom.com/wiki/Aery) on Roblox Bedwars Wiki
[^2]: [Roblox BedWars](https://www.roblox.com/games/6872265039/)
[^3]: Mobs which take extra damage from freezing take double damage.
