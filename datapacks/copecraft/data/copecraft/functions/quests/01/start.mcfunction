## Quest: Wood ##
tellraw @a [{"text":"Quest started: ","color": "yellow"},{"text":"Wood","color": "yellow", "italic": true}]

# Set the Quest ID
scoreboard players set @a copecraft-quest-id 1
# Set the Quest Objective
scoreboard players set @a copecraft-quest-objective 1
# Reset the player trigger
scoreboard players set @a copecraft-trigger 0

# [Sidebar] Quest Tracker - Shows the "active" quest (and its objectives)
scoreboard objectives add copecraft-quest dummy {"text":"Quest Tracker", "color":"gold"}
scoreboard objectives setdisplay sidebar copecraft-quest

# Objective 1 - "Chop Wood Logs"
scoreboard objectives add copecraft-oak-logs-mined minecraft.mined:minecraft.oak_log "Chop Wood Logs"
scoreboard players set 1 copecraft-quest 0
team add q1o1
team modify q1o1 suffix {"text":". Chop Wood Logs"}
team join q1o1 1

# Objective 2 - "Craft Wood Planks"
scoreboard objectives add copecraft-oak-planks-crafted minecraft.crafted:minecraft.oak_planks "Craft Wood Planks"
scoreboard players set 2 copecraft-quest 0
team add q1o2
team modify q1o2 suffix {"text":". Craft Wood Planks"}
team join q1o2 2

# Objective 3 - "Make Crafting Table"
scoreboard objectives add copecraft-crafting-table-crafted minecraft.crafted:minecraft.crafting_table "Make Crafting Table"
scoreboard players set 3 copecraft-quest 0
team add q1o3
team modify q1o3 suffix {"text":". Make Crafting Table"}
team join q1o3 3

# [Bossbar] Objective Tracker - " Chop Wood Log"
bossbar add copecraft:bossbar-q1o1 [{"text":"Objective: "},{"text":"Chop Wood Logs","color":"yellow"},{"text":" (0/1)"}]
bossbar set copecraft:bossbar-q1o1 players @a
