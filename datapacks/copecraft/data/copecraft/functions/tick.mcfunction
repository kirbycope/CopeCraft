# `minecraft:tick` tag runs every tick at the start of the tick.

#particle heart 0 -1 0 0.5 0.5 0.5 0.01 1

# check for dirt
#execute as @s store result score @a copecraft-thing2 run clear @a minecraft:dirt 0
#execute as @s if score @s copecraft-wheat-picked-up matches 1 run title @a actionbar "Timmy"

# https://www.reddit.com/r/MinecraftCommands/wiki/questions/playerjoin#wiki_first_time
execute as @a[tag=!init] run function copecraft:events/init-player
tag @a[tag=!init] add init

# if copecraft-quest-id = 0 and copecraft-trigger = 1 ...
# then start first quest (the link in the book was clicked)
execute if entity @a[scores={copecraft-quest-id=0,copecraft-trigger=1}] run function copecraft:quests/01/start

# if copecraft-quest-id = 1 ...
execute if entity @a[scores={copecraft-quest-id=1}] run function copecraft:quests/01/check-progress

# if copecraft-quest-id = 2 ...
execute if entity @a[scores={copecraft-quest-id=2}] run function copecraft:quests/02/check-progress
