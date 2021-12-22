# Transition from Quests 03's Objective 1 to Objective 2

# Remove relevant scoreboard
scoreboard objectives remove copecraft-stone-mined
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q3o1
# Set the Objective to "2"
scoreboard players set @a copecraft-quest-objective 2
# Remove white text from quest tracker
scoreboard players reset Mine copecraft-quest
team leave Mine
# Add green text to Tracker
scoreboard players set §aMine copecraft-quest 9
team join suffix-wood-logs-green §aMine

# [Bossbar] Objective Tracker - "Mine Stone Blocks"
bossbar add copecraft:bossbar-q3o2 [{"text":"Objective: "},{"text":"Mine Stone Blocks ","color":"yellow"},{"text":"(0/8)"}]
bossbar set copecraft:bossbar-q3o2 players @a
