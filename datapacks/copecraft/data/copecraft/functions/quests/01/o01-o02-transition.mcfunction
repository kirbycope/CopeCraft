# Transition from Quests 01's Objective 1 to Objective 2

# Remove relevant scoreboard
scoreboard objectives remove copecraft-oak-logs-mined
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q1o1
# Set the Objective to "2"
scoreboard players set @a copecraft-quest-objective 2
# Remove white text from quest tracker
scoreboard players reset 1 copecraft-quest
# Add green text to Tracker
scoreboard players set §a1 copecraft-quest 1
team modify q1o1 suffix {"text":". Chop Wood Logs", "color": "green"}
team join q1o1 §a1

# [Bossbar] Objective Tracker - "Craft Wood Planks"
bossbar add copecraft:bossbar-q1o2 [{"text":"Objective: "},{"text":"Craft Wood Planks ","color":"yellow"},{"text":"(0/4)"}]
bossbar set copecraft:bossbar-q1o2 players @a
