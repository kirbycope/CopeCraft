# Transition from Quests 04's Objective 1 to Objective 2

# Remove relevant scoreboard
scoreboard objectives remove copecraft-charcoal-crafted
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q4o1
# Set the Objective to "2"
scoreboard players set @a copecraft-quest-objective 2
# Remove white text from quest tracker
scoreboard players reset Furnace copecraft-quest
team leave Furnace
# Add green text to Tracker
scoreboard players set §aFurnace copecraft-quest 9
team join suffix-oak-log-green §aFurnace

# [Bossbar] Objective Tracker - "Craft Campfire"
bossbar add copecraft:bossbar-q4o2 [{"text":"Objective: "},{"text":"Craft Campfire ","color":"yellow"},{"text":"(0/1)"}]
bossbar set copecraft:bossbar-q4o2 players @a
