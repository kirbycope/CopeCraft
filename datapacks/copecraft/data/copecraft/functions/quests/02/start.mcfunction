# Set the Quest ID
scoreboard players set @a copecraft-quest-id 2
# Set the Quest Objective
scoreboard players set @a copecraft-quest-objective 1
# Reset the player trigger
scoreboard players set @a copecraft-trigger 0

# [Sidebar] Quest Tracker - Shows the "active" quest (and its objectives)
scoreboard objectives add copecraft-quest dummy {"text":"Quest Tracker", "color":"gold"}
scoreboard objectives setdisplay sidebar copecraft-quest
# Objective Format - White text
team add suffix-wood
team modify suffix-wood suffix {"text":" Wheat"}
#team add suffix-wheat-seeds
#team modify suffix-wheat-seeds suffix {"text":" Wheat Seeds"}
# Objective Format - Green text
team add suffix-wood-green
team modify suffix-wood-green suffix {"text":" Wood","color":"green"}
#team add suffix-wheat-seeds-green
#team modify suffix-wheat-seeds-green suffix {"text":" Wheat Seeds","color":"green"}
# [q1o1] Quest 1 Objective 1 - "Chop Wood"
scoreboard objectives add copecraft-wheat-seeds-picked-up minecraft.mined:minecraft.oak_log "Chop Wood"
scoreboard players set Chop copecraft-quest 9
team join suffix-wood Chop
