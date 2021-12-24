# Reset the Quest Tracker
scoreboard players reset * copecraft-quest
# Remove relevant scoreboard
scoreboard objectives remove copecraft-crafting-table-crafted
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q1o3
# Quest Reward
playsound minecraft:block.note_block.chime master @a
title @s actionbar {"text":"5 XP","color":"dark_purple"}
xp add @a 5 points
tellraw @a {"text":"Quest completed.","color":"yellow"}
tellraw @a {"text":"Experience gained: 5.","color":"yellow"}
# Start Quest 2, automatically
function copecraft:quests/02/start
