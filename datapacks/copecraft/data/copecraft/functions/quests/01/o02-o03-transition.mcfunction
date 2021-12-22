# Transition from Quests 01's Objective 2 to Objective 3

# Remove relevant scoreboard
scoreboard objectives remove copecraft-wheat-seeds-used
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q1o2
# Set the Objective to "3"
scoreboard players set @a copecraft-quest-objective 3
# Remove white text from quest tracker
scoreboard players reset Plant copecraft-quest
team leave Plant
# Add green text to Tracker
scoreboard players set §aPlant copecraft-quest 8
team join suffix-wheat-seeds-green §aPlant

# [Bossbar] Objective Tracker - "Harvest Wheat"
bossbar add copecraft:bossbar-q1o3 [{"text":"Objective: "},{"text":"Harvest Wheat ","color":"yellow"},{"text":"(0/3)"}]
bossbar set copecraft:bossbar-q1o3 players @a
