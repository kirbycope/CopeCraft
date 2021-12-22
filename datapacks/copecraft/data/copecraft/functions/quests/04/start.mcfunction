# Set the Quest ID
scoreboard players set @a copecraft-quest-id 4
# Set the Quest Objective
scoreboard players set @a copecraft-quest-objective 1
# Reset the player trigger
scoreboard players set @a copecraft-trigger 0

# [Sidebar] Quest Tracker - Shows the "active" quest (and its objectives)
scoreboard objectives add copecraft-quest dummy {"text":"Quest Tracker", "color":"gold"}
scoreboard objectives setdisplay sidebar copecraft-quest
# Objective Format - White text
team add suffix-oak-log
team modify suffix-oak-log suffix {"text":" Oak Log"}
# Objective Format - Green text
team add suffix-oak-log-green
team modify suffix-oak-log-green suffix {"text":" Oak Log", "color":"green"}
# [q4o1] Quest 4 Objective 1 - "Furance Oak Log"
scoreboard objectives add copecraft-charcoal-picked-up minecraft.picked_up:minecraft.charcoal "Furance Oak Log"
scoreboard players set Furnace copecraft-quest 9
team join suffix-oak-log Furnace
# [q4o2] Quest 4 Objective 2 - "Craft Campfire"
scoreboard objectives add copecraft-campfire-crafted minecraft.crafted:minecraft.campfire "Craft Campfire"
scoreboard players set Craft copecraft-quest 8
team join suffix-campfire Craft
# [q4o3] Quest 4 Objective 3 - "Place Campfire"
scoreboard objectives add copecraft-campfire-used minecraft.used:minecraft.campfire "Place Campfire"
scoreboard players set Place copecraft-quest 7
team join suffix-campfire Place

# [Bossbar] Objective Tracker - "Furnace Oak Log"
bossbar add copecraft:bossbar-q4o1 [{"text":"Objective: "},{"text":"Furnace Oak Log ","color":"yellow"},{"text":"(0/1)"}]
bossbar set copecraft:bossbar-q4o1 players @a
