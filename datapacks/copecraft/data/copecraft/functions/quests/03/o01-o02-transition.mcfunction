# Transition from Quests 03's Objective 1 to Objective 2

# Remove relevant scoreboard
scoreboard objectives remove copecraft-charcoal-crafted
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q3o1
# Set the Objective to "2"
scoreboard players set @a copecraft-quest-objective 2
# Remove white text from quest tracker
scoreboard players reset 1 copecraft-quest
# Add green text to Tracker
scoreboard players set §a1 copecraft-quest 1
team modify q3o1 suffix {"text":". Furance Oak Log", "color": "green"}
team join q3o1 §a1

# [Bossbar] Objective Tracker - "Craft Campfire"
bossbar add copecraft:bossbar-q3o2 [{"text":"Objective: "},{"text":"Craft Campfire","color":"yellow"},{"text":" (0/1)"}]
bossbar set copecraft:bossbar-q3o2 players @a
