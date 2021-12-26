# `minecraft:tick` tag runs every tick at the start of the tick.

# https://www.reddit.com/r/MinecraftCommands/wiki/questions/playerjoin#wiki_first_time
execute as @a[tag=!init] run function copecraft:events/init-player
tag @a[tag=!init] add init


## NPCs ##

# Tim[my]
execute positioned -44 316 -42 as @a[distance=..1,scores={copecraft-talked-to-villager=1..}] at @s run tellraw @a {"text":"Timmy!"}

# Tom[my]
execute positioned -41 316 -43 as @a[distance=..1,scores={copecraft-talked-to-villager=1..}] at @s run tellraw @a {"text":"Tommy!"}


## Shops ##

# Check player enters the shipwreck store
execute positioned -42 1 -42 as @a[distance=..1] at @s run function copecraft:events/enter-ship-store
# Check player leaves the shipwreck store
execute positioned -42 316 -37 as @a[distance=..1] at @s run tp @s -42 1 -40


## Quests ##

# if copecraft-quest-id = 0 and copecraft-trigger = 1 ...
# then start first quest (the link in the book was clicked)
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
