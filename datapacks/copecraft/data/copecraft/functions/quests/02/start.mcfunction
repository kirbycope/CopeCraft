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
team add suffix-wood-logs
team modify suffix-wood-logs suffix {"text":" Wood Logs"}
team add suffix-wood-planks
team modify suffix-wood-planks suffix {"text":" Wood Planks"}
team add suffix-crafting-table
team modify suffix-crafting-table suffix {"text":" Crafting Table"}
# Objective Format - Green text
team add suffix-wood-logs-green
team modify suffix-wood-logs-green suffix {"text":" Wood Logs","color":"green"}
team add suffix-wood-planks-green
team modify suffix-wood-planks-green suffix {"text":" Wood Planks","color":"green"}
team add suffix-crafting-table-green
team modify suffix-crafting-table-green suffix {"text":" Crafting Table","color":"green"}
# [q2o1] Quest 2 Objective 1 - "Chop Wood Logs"
scoreboard objectives add copecraft-oak-logs-mined minecraft.mined:minecraft.oak_log "Chop Wood Logs"
scoreboard players set Chop copecraft-quest 9
team join suffix-wood-logs Chop
# [q2o2] Quest 2 Objective 2 - "Craft Wood Planks"
scoreboard objectives add copecraft-oak-planks-crafted minecraft.crafted:minecraft.oak_planks "Craft Wood Planks"
scoreboard players set Craft copecraft-quest 8
team join suffix-wood-planks Craft
# [q2o3] Quest 2 Objective 3 - "Make Crafting Table"
scoreboard objectives add copecraft-crafting-table-crafted minecraft.crafted:minecraft.crafting_table "Make Crafting Table"
scoreboard players set Make copecraft-quest 7
team join suffix-crafting-table Make

# [Bossbar] Objective Tracker - "Chop Wood Logs"
bossbar add copecraft:bossbar-q2o1 [{"text":"Objective: "},{"text":"Chop Wood Logs ","color":"yellow"},{"text":"(0/3)"}]
bossbar set copecraft:bossbar-q2o1 players @a
