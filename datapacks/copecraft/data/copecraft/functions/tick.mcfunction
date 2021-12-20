# `minecraft:tick` tag runs every tick at the start of the tick.

#particle heart 0 -1 0 0.5 0.5 0.5 0.01 1

# https://www.reddit.com/r/MinecraftCommands/wiki/questions/playerjoin#wiki_first_time
execute as @a[tag=!init] run function copecraft:events/init-player
tag @a[tag=!init] add init

# check for dirt
#execute as @s store result score @a copecraft-thing2 run clear @a minecraft:dirt 0
#execute as @s if score @s copecraft-thing2 matches 1 run title @a actionbar "Timmy"
