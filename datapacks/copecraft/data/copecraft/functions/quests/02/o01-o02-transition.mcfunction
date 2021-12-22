# Transition from Quests 02's Objective 1 to Objective 2

# Remove relevant scoreboard
scoreboard objectives remove copecraft-oak-logs-mined
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q2o1
# Set the Objective to "2"
scoreboard players set @a copecraft-quest-objective 2
# Remove white text from quest tracker
scoreboard players reset Chop copecraft-quest
team leave Chop
# Add green text to Tracker
scoreboard players set §aChop copecraft-quest 9
team join suffix-wood-logs-green §aChop

# [Bossbar] Objective Tracker - "Craft Wood Planks"
bossbar add copecraft:bossbar-q2o2 [{"text":"Objective: "},{"text":"Craft Wood Planks ","color":"yellow"},{"text":"(0/4)"}]
bossbar set copecraft:bossbar-q2o2 players @a
