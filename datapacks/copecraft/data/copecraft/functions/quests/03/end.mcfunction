# Reset the Quest Tracker
scoreboard players reset * copecraft-quest
# Remove relevant scoreboard
scoreboard objectives remove copecraft-campfire-used
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q3o3
# Quest Reward
playsound minecraft:block.note_block.chime master @a
title @s actionbar {"text":"5 XP","color":"dark_purple"}
xp add @a 5 points
tellraw @a {"text":"Quest completed.","color":"yellow"}
tellraw @a {"text":"Experience gained: 5.","color":"yellow"}
# Start Quest 4, automatically
function copecraft:quests/04/start
