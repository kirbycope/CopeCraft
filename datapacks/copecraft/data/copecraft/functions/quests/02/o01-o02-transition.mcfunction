# Transition from Quests 02's Objective 1 to Objective 2

# Remove relevant scoreboard
scoreboard objectives remove copecraft-crafted-wooden-pickaxe
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q2o1
# Set the Objective to "2"
scoreboard players set @a copecraft-quest-objective 2
# Remove white text from quest tracker
scoreboard players reset 1 copecraft-quest
# Add green text to Tracker
scoreboard players set §a1 copecraft-quest 1
team modify q2o1 suffix {"text":". Craft Wooden Pickaxe", "color": "green"}
team join q2o1 §a1

# [Bossbar] Objective Tracker - "Mine Stone"
bossbar add copecraft:bossbar-q2o2 [{"text":"Objective: "},{"text":"Mine Stone","color":"yellow"},{"text":" (0/8)"}]
bossbar set copecraft:bossbar-q2o2 players @a
