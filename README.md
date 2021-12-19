# CopeCraft

## Creating an "Empty" Map
1. Open Minecraft Java Edition
1. Select "Singleplayer"
1. Select "Create New World"
1. Select "More World Options..."
1. Enter `0` for the Seed ID
1. Set `Generate Structures: OFF`
1. Set `World Type: Superflat`
1. Select "Customize"
1. Select each Layer Material and then select "Remove Layer"
1. Select "Done"
1. Select "Create New World"
1. As soon as the game loads, press [Esc]
1. Select "Open to LAN"
1. Set `Allow Cheats: ON`
1. Select "Start LAN World"
    - Spawn a staring block by running `/setblock 0 -1 0 minecraft:stone`
1. Exit the game
1. Delete the files in `/achivements`, `/playerdata`, and `stats`
1. Open the save using Universal [Minecraft Editor](https://www.universalminecrafteditor.com/)
1. In the World Settings section, set/verify:
    - Difficulty: 2
        - 0 Peaceful, 1 Easy, 2 Normal, 3 Hard
    - GameType: 0
        - 0 Survival, 1 Creative, 2 Adventure, 3 Creative
    - SpawnX: 0
    - SpawnY: 0
    - SpawnZ: 0
1. [Optional] Hardcore is {Difficulty: 3, GameType: 0, Hardcore: 1}

### Notes

/give @s debug_stick

/summon minecraft:pillager ~ ~ ~ {Rotation:90f,NoAI:1}

/playsound minecraft:ui.button.click player @s

/title @s actionbar "Title"

