execute if entity @s[nbt={Invulnerable:1b},tag=foka.initialize_end_ready] run summon marker ~ ~ ~ {Tags:["fe.structure","fe.exit_portal","fe.deactivated"],CustomName:'{"text":"Exit Portal"}'}
kill @s[nbt={Invulnerable:1b},tag=foka.initialize_end_ready]
