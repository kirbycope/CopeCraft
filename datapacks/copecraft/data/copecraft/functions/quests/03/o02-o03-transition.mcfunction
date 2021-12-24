# Transition from Quests 02's Objective 2 to Objective 3

# Remove relevant scoreboard
scoreboard objectives remove copecraft-campfire-crafted
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q3o2
# Set the Objective to "3"
scoreboard players set @a copecraft-quest-objective 3
# Remove white text from quest tracker
scoreboard players reset 2 copecraft-quest
# Add green text to Tracker
scoreboard players set §a2 copecraft-quest 1
team modify q3o2 suffix {"text":". Craft Campfire", "color": "green"}
team join q3o2 §a2

# [Bossbar] Objective Tracker - "Place Campfire"
bossbar add copecraft:bossbar-q3o3 [{"text":"Objective: "},{"text":"Place Campfire","color":"yellow"},{"text":" (0/1)"}]
bossbar set copecraft:bossbar-q3o3 players @a
