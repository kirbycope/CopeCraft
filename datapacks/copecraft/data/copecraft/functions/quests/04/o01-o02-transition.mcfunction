# Transition from Quests 04's Objective 1 to Objective 2

# Remove relevant scoreboard
scoreboard objectives remove copecraft-wheat-seeds-picked-up
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q4o1
# Set the Objective to "2"
scoreboard players set @a copecraft-quest-objective 2
# Remove white text from quest tracker
scoreboard players reset 1 copecraft-quest
# Add green text to Tracker
scoreboard players set §a1 copecraft-quest 1
team modify q4o1 suffix {"text":". Find Wheat Seeds", "color": "green"}
team join q4o1 §a1

# [Bossbar] Objective Tracker - "Plant Wheat Seeds"
bossbar add copecraft:bossbar-q1o2 [{"text":"Objective: "},{"text":"Plant Wheat Seeds","color":"yellow"},{"text":" (0/3)"}]
bossbar set copecraft:bossbar-q1o2 players @a
