# Set the Quest ID
scoreboard players set @a copecraft-quest-id 1
# Reset the player trigger
scoreboard players set @a copecraft-trigger 0

# [Sidebar] Quest Tracker - Shows the "active" quest (and its objectives)
scoreboard objectives add copecraft-quest dummy {"text":"Quest Tracker", "color":"gold"}
scoreboard objectives setdisplay sidebar copecraft-quest
# Objective Format
team add suffix-wheat
team modify suffix-wheat suffix {"text":" Wheat"}
team add suffix-wheat-seeds
team modify suffix-wheat-seeds suffix {"text":" Wheat Seeds"}
# [q1o1] Quest 1 Objective 1 - "Find Wheat Seeds"
scoreboard objectives add copecraft-wheat-picked-up minecraft.picked_up:minecraft.wheat_seeds "Find Wheat Seeds"
scoreboard players set Find copecraft-quest 9
team join suffix-wheat-seeds Find
# [q1o2] Quest 1 Objective 2 - "Plant Wheat Seeds"
scoreboard objectives add copecraft-wheat-planted minecraft.used:minecraft.wheat_seeds "Plant Wheat Seeds"
scoreboard players set Plant copecraft-quest 8
team join suffix-wheat-seeds Plant
# [q1o3] Quest 1 Objective 3 - "Harvest Wheat"
scoreboard objectives add copecraft-wheat-mined minecraft.mined:minecraft.wheat "Harvest Wheat"
scoreboard players set Harvest copecraft-quest 7
team join suffix-wheat Harvest

# Set active objective
scoreboard players set @a copecraft-quest-objective 1

# [Bossbar] Objective Tracker - Shows the "active" objective
bossbar add copecraft:bossbar-q1o1 "Find Wheat Seeds (0/3)"
bossbar set copecraft:bossbar-q1o1 players @a
