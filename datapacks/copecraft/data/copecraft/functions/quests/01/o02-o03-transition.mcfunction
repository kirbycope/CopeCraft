# Transition from Quests 01's Objective 2 to Objective 3

# Remove relevant scoreboard
scoreboard objectives remove copecraft-oak-planks-crafted
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q1o2
# Set the Objective to "3"
scoreboard players set @a copecraft-quest-objective 3
# Remove white text from quest tracker
scoreboard players reset 2 copecraft-quest
# Add green text to Tracker
scoreboard players set §a2 copecraft-quest 1
team modify q1o2 suffix {"text":". Craft Wood Planks", "color": "green"}
team join q1o2 §a2

# [Bossbar] Objective Tracker - "Make Crafting Table"
bossbar add copecraft:bossbar-q1o3 [{"text":"Objective: "},{"text":"Make Crafting Table","color":"yellow"},{"text":" (0/1)"}]
bossbar set copecraft:bossbar-q1o3 players @a
