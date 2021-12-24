# Transition from Quests 06's Objective 1 to Objective 2

# Remove relevant scoreboard
scoreboard objectives remove copecraft-wheat-picked-up
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q6o1
# Set the Objective to "2"
scoreboard players set @a copecraft-quest-objective 2
# Remove white text from quest tracker
scoreboard players reset 1 copecraft-quest
# Add green text to Tracker
scoreboard players set §a1 copecraft-quest 1
team modify q6o1 suffix {"text":". Harvest Wheat", "color": "green"}
team join q6o1 §a1

# [Bossbar] Objective Tracker - "Bake Bread"
bossbar add copecraft:bossbar-q6o2 [{"text":"Objective: "},{"text":"Bake Bread","color":"yellow"},{"text":" (0/1)"}]
bossbar set copecraft:bossbar-q6o2 players @a
