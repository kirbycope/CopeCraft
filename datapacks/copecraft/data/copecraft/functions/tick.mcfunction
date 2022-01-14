# `minecraft:tick` tag runs every tick at the start of the tick.

# https://www.reddit.com/r/MinecraftCommands/wiki/questions/playerjoin#wiki_first_time
execute as @a[tag=!init] run function copecraft:events/init-player


# ════ Menu(s) ════ #

# Menu Star - Check that one exists
execute as @a[tag=init] run execute store result score @s copecraft-menu-items run clear @s minecraft:nether_star{MenuStar:1b} 0
# Menu Star - Clear tossed items
kill @e[type=item,nbt={Item:{tag:{MenuStar:1b}}}]
# Menu Star - Give player a Menu Star if they need one
execute as @a[tag=init] run execute if entity @s[scores={copecraft-menu-items=0}] run give @s minecraft:nether_star{display:{Name:'[{"text":"Menu","italic":false}]',Lore:['[{"text":"Use this item to open the menu.","italic":false}]']},HideFlags:32,MenuStar:1b} 1
# Menu Chest - Open
execute as @a[nbt={SelectedItem:{tag:{MenuStar:1b}}}] run function copecraft:menus/chest-menu-open
# Menu Chest - [Force] close
execute as @a[nbt=!{SelectedItem:{tag:{MenuStar:1b}}}] run tp @e[tag=menu_chest] 0 -250 0

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
