# Transition from Quests 04's Objective 2 to Objective 3

# Remove relevant scoreboard
scoreboard objectives remove copecraft-campfire-crafted
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q4o2
# Set the Objective to "3"
scoreboard players set @a copecraft-quest-objective 3
# Remove white text from quest tracker
scoreboard players reset Craft copecraft-quest
team leave Craft
# Add green text to Tracker
scoreboard players set §aCraft copecraft-quest 8
team join suffix-oak-log-green §aCraft

# [Bossbar] Objective Tracker - "Place Campfire"
bossbar add copecraft:bossbar-q4o3 [{"text":"Objective: "},{"text":"Place Campfire ","color":"yellow"},{"text":"(0/1)"}]
bossbar set copecraft:bossbar-q4o3 players @a
