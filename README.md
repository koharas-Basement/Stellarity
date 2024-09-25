# Stellarity Indev

Haro everynyan.

## Notes
- Dev tools: [\[JUMP\]](https://discord.com/channels/727033287343734885/1288102766048448573/1288104887489527808)
- All spawned Markers should have the `stellarity.marker` tag added to them, otherwise they won't be ticked.
 
## Namespaces
- `awesomedungeonend` - compatibility with [Awesome Dungeon](https://www.curseforge.com/minecraft/mc-mods/awesome-dungeon-the-end-forge).
- `far_end` - legacy Far End code. It will eventually be moved to and fused with `stellarity`.
- `kohara` - [kohara's Libs](https://github.com/koharas-Basement/koharas-Libs), AKA various datapack utilities, click the link for examples and documentation.
- `minecraft` - default minecraft namespace.
- `stellarity` - default stellarity namespace.

## Folders inside `function`
- `_cmd` - commands. Treat everything it in a similar way plugins or mods would add commands for players to run.
- `config` - handles initializing default config values, reseting to default and opening the menu. Every function is called from outside the folder, meaning it is only used to store them in one place.
- `items` - self-explanatory
- `loops` - contains most of the looping functions in Stellarity, divided by how often they are ticked. The only exception is the main tick loop that calls them, being directly in the root of the function folder.
    - `timed` - loops that don't trigger every tick and are ran directly by the server
    - `player` - loops called by all online players **at** their location
    - `marker` - loops called by all Markers **from Stellarity** (basically just all markers with the `stellarity.marker` tag).
    - `item_loop.mcfunction` - extra loop called by items with the `stellarity.item` tag. Used for animations, consecration, fixing a Netherite Frigid Harvester and preventing boss drops from despawning.
- `mechanics` - self-explanatory. But in case it's not - used for stuff like Totems protecting from the Void, cauldron crafting, void fishing, etc.
	- `enchantments` - extra code related to enchantments added by Stellarity, e.g. making Void Strike apply Voided.
- `mobs` - self-explanatory.
- `post_gen` - extra post-generation utilities. Currently responsible for spawning in the Altar of The Accursed and generating End Cities.
- `sfx` - extra visual effects that don't fall under any specific category, e.g. Ender Pearl trails, Elytra flight trails, etc.
- `tellraw` - join message.
- `utils` - utilities. Surprising, huh?
    - `custom_mob_death_sounds` - used by kohara's Libs
    - `damage` - --||--
    - `particles` - --||--
    - `status_effects` - contains everything related to, well, custom status effects
    - `tellraw` - macors for easier tellraw managing for ran commands  (`_cmd`), config menu and help command
    - `as_aec.mcfunction` and `as_aec_stellarity_specific.mcfunction`:
		1. First one ticks all Area Effect Cloud entities (`minecraft:area_effect_cloud`). If it uses a regular potion particle, it applies the Lingering Potion buffs from Stellarity. If it has the `stellarity.aec` tag, then...
		2. Runs the latter function, which is used as a utility clock. AECs are sometimes used instead of Markers if I want to trigger something **in one place over time**, e.g. Starstruck Carcanet stars falling over a block, Dragonblade punch sigil VFX, or well, as Area Effect Clouds, e.g. placed Duskberry effect cloud.
	- `enter_end_play_track.mcfunction` - plays a new music track when entering The End for the first time. Ran through an advancement.
	- `items_tick_once.mcfunction` - utility ticked from `loops/items_loop.mcfunction`. As the name suggests, every dropped item runs it once in order to do some checks.

## Other folders and files in root
- `resource_pack` - I think this one is clear.
- `music_pack` - music addon.
- `models` - saved models for use with [BDEngine](https://block-display.com/bdengine/).
- `stellarity.snowcapped.json` - current biome layout for use with [Snowcapped](https://snowcapped.jacobsjo.eu/).
- `LICENSE.md` - copy of the license.
- `generate_translations.py` - run it to grab all the translation components and their fallbacks in the `data` folder and compile them into a nice JSON, which can be then uploaded to the resource pack. Make sure to only replace the part which can be replaced though, as not everything is put there!
