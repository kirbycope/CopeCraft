## Quest: Wheat ##
tellraw @a [{"text":"Quest started: ","color": "yellow"},{"text":"Wheat","color": "yellow", "italic": true}]

# Set the Quest ID
scoreboard players set @a copecraft-quest-id 5
# Set the Quest Objective
scoreboard players set @a copecraft-quest-objective 1
# Reset the player trigger
scoreboard players set @a copecraft-trigger 0

# [Sidebar] Quest Tracker - Shows the "active" quest (and its objectives)
scoreboard objectives add copecraft-quest dummy {"text":"Quest Tracker", "color":"gold"}
scoreboard objectives setdisplay sidebar copecraft-quest

# Objective 1 - "Find Wheat Seeds"
scoreboard objectives add copecraft-wheat-seeds-picked-up minecraft.picked_up:minecraft.wheat_seeds "Find Wheat Seeds"
scoreboard players set 1 copecraft-quest 0
team add q5o1
team modify q5o1 suffix {"text":". Find Wheat Seeds"}
team join q5o1 1

# Objective 2 - "Plant Wheat Seeds"
scoreboard objectives add copecraft-wheat-seeds-used minecraft.used:minecraft.wheat_seeds "Plant Wheat Seeds"
scoreboard players set 2 copecraft-quest 0
team add q5o2
team modify q5o2 suffix {"text":". Plant Wheat Seeds"}
team join q5o2 2

# [Bossbar] Objective Tracker - "Find Wheat Seeds"
bossbar add copecraft:bossbar-q5o1 [{"text":"Objective: "},{"text":"Find Wheat Seeds","color":"yellow"},{"text":" (0/3)"}]
bossbar set copecraft:bossbar-q5o1 players @a
