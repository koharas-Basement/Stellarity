# Installation Instructions

All download files can be found on [Stellarity's Download Section](https://kohy-creates.github.io/Stellarity/downloads.html), both Datapack version as well as a Datapack-Pacakged-As-Mod one.

## Installing on Singleplayer
=== "Datapack Installation"
    1. Navigate to `%appdata%/Roaming/.minecraft` and then open folder `saves`
    2. Locate your world's save file and open it.
    3. Go to `world/datapacks` and drop your downloaded file there.
       
        !!! danger "Developer preview version warning!"
            Dev Version requires to be unzipped in order to work! Open downloaded **ZIP** file and drop the entire folder found inside into your world's `datapacks` folder!

            You can probably remove everything inside, except for `data` folder, `pack.mcmeta` and optionally `pack.png`. This should reduced the file size from A LOT to about 5MB.

        > Make sure to reset your End dimension by deleting `DIM1` folder found in your world's save folder if you are installing the pack in an existing world!

    4. Start Minecraft and enter your world. 
    
    :tada:{ .mirror } **Congrats! Now you can explore the new, terrifying and absurdly rewarding End dimension!** :tada:

    > Beware tho, as datapacks are per-world, meaning that you will have to repeat these steps every time you want to create a new world with Stellarity installed on it!

=== "Mod Installation"
    1. Install either [Forge](https://minecraftforge.net), [Fabric](https://fabricmc.net/) or [Quilt](https://quiltmc.org/en/)[^1].
    2. Navigate to `%appdata%/Roaming/.minecraft` and then open folder `mods`
    3. Drop downloaded **JAR** file into opened folder.

        !!! danger "Forge or Fabric?"
            Downloaded Stellarity jars support both loaders! You don't have to look for a version supporting a specific loader!

    :tada:{ .mirror } **Congrats! Now you can explore the new, terrifying and absurdly rewarding End dimension!** :tada:

    > Mod version loads data from Stellarity into EVERY world you create, which means that you don't have to install it separately on each world of yours unlike Datapack version!
    > *Mod compatibility is also probably a lot better, but I can't test every mod out there.* 

## Installing on Servers
=== "Minecraft versions 1.19.3 and above"
    With fix for [MC-243458](https://bugs.mojang.com/browse/MC-243458), this section is completely obsolete for Minecraft 1.19.3+.

=== "Minecraft versions 1.19.2 and below"
    All servers have a bug that basically causes world generation packs to not work, with regular worldgen being applied instead. 
    Don't ask me why, because it is pretty complicated

    !!! quote "How to prevent/fix this?"

        1. Drop the datapack into its directory (world/datapacks)
        2. Start your server
        3. Wait until it finishes loading, and then stop it
        4. Head to 'world_the_end' folder and delete'region' and 'entities' folders found inside
        5. Start your server again 

    Works 99% of the time!
    <br>
    If you happen to be that unfortunate 1%, just try again!

[^1]: Quilt is a direct fork of Fabric, meaning that Fabric version of Stellarity has native support for this loader.
