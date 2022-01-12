# `minecraft:tick` tag runs every tick at the start of the tick.

# https://www.reddit.com/r/MinecraftCommands/wiki/questions/playerjoin#wiki_first_time
execute as @a[tag=!init] run function copecraft:events/init-player


# ════ Menu(s) ════ #

# Chest Menu - Open
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'[{"text":"Menu","italic":false}]'}}}}] run function copecraft:menus/chest-menu-open
# Chest Menu - [Force] close
execute as @a[nbt=!{SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'[{"text":"Menu","italic":false}]'}}}}] run tp @e[tag=invisible] 0 -250 0
# Chest Menu - Other Minecarts
execute as @e[type=chest_minecart,tag=!menu_chest] run data merge entity @s {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"up"}},DisplayOffset:4,Tags:["menu_chest"]}
execute as @e[type=furnace_minecart,tag=!menu_chest] run data merge entity @s {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"north"}},DisplayOffset:4,Tags:["menu_chest"]}
execute as @e[type=hopper_minecart,tag=!menu_chest] run data merge entity @s {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"west"}},DisplayOffset:4,Tags:["menu_chest"]}
execute as @e[type=minecart,tag=!menu_chest] run data merge entity @s {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"south"}},DisplayOffset:4,Tags:["menu_chest"]}
execute as @e[type=tnt_minecart,tag=!menu_chest] run data merge entity @s {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"down"}},DisplayOffset:4,Tags:["menu_chest"]}


# ════ NPC(s) ════ #

# Check player interaction with Tim[my]
execute positioned -44 316 -42 as @a[distance=..1.5,scores={copecraft-talked-to-villager=1..}] at @s run function copecraft:events/interact-tim
# Check player interaction with Tom[my]
execute positioned -41 316 -43 as @a[distance=..1.5,scores={copecraft-talked-to-villager=1..}] at @s run function copecraft:events/interact-tom


# ════ Shop(s) ════ #

# Check player enters the shipwreck store
execute positioned -42 1 -42 as @a[distance=..1] at @s run function copecraft:events/ship-store-enter
# Check player leaves the shipwreck store
execute positioned -42 316 -37 as @a[distance=..1] at @s run function copecraft:events/ship-store-leave
# Check player enters the witch hut store
execute positioned 68 3 67 as @a[distance=..1] at @s run function copecraft:events/witch-hut-store-enter
# Check player leaves the witch hut store
execute positioned 67 316 65 as @a[distance=..1] at @s run function copecraft:events/witch-hut-store-leave


# ════ Quest(s) ════ #

# if copecraft-quest-id = 0 and copecraft-trigger = 1 ...
execute if entity @a[scores={copecraft-quest-id=0,copecraft-trigger=1}] run function copecraft:quests/01/start
# if copecraft-quest-id = 1 ...
execute if entity @a[scores={copecraft-quest-id=1}] run function copecraft:quests/01/check-progress
# if copecraft-quest-id = 2 ...
execute if entity @a[scores={copecraft-quest-id=2}] run function copecraft:quests/02/check-progress
# if copecraft-quest-id = 3 ...
execute if entity @a[scores={copecraft-quest-id=3}] run function copecraft:quests/03/check-progress
# if copecraft-quest-id = 4 ...
execute if entity @a[scores={copecraft-quest-id=4}] run function copecraft:quests/04/check-progress
# if copecraft-quest-id = 5 ...
execute if entity @a[scores={copecraft-quest-id=5}] run function copecraft:quests/05/check-progress
# if copecraft-quest-id = 6 ...
execute if entity @a[scores={copecraft-quest-id=6}] run function copecraft:quests/06/check-progress
