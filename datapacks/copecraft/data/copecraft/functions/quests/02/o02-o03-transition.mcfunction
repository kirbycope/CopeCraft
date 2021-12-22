# Transition from Quests 02's Objective 2 to Objective 3

# Remove relevant scoreboard
scoreboard objectives remove copecraft-oak-planks-crafted
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q2o2
# Set the Objective to "3"
scoreboard players set @a copecraft-quest-objective 3
# Remove white text from quest tracker
scoreboard players reset Craft copecraft-quest
team leave Craft
# Add green text to Tracker
scoreboard players set §aCraft copecraft-quest 9
team join suffix-wood-planks-green §aCraft

# [Bossbar] Objective Tracker - "Make Crafting Table"
bossbar add copecraft:bossbar-q2o3 [{"text":"Objective: "},{"text":"Make Crafting Table ","color":"yellow"},{"text":"(0/1)"}]
bossbar set copecraft:bossbar-q2o3 players @a
