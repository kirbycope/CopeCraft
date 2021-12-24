# Transition from Quests 02's Objective 2 to Objective 3

# Remove relevant scoreboard
scoreboard objectives remove copecraft-stone-mined
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q2o2
# Set the Objective to "3"
scoreboard players set @a copecraft-quest-objective 3
# Remove white text from quest tracker
scoreboard players reset 2 copecraft-quest
# Add green text to Tracker
scoreboard players set §a2 copecraft-quest 1
team modify q2o2 suffix {"text":". Craft Wooden Pickaxe", "color": "green"}
team join q2o2 §a2

# [Bossbar] Objective Tracker - "Craft Furnace"
bossbar add copecraft:bossbar-q2o3 [{"text":"Objective: "},{"text":"Craft Furnace","color":"yellow"},{"text":" (0/1)"}]
bossbar set copecraft:bossbar-q2o3 players @a
