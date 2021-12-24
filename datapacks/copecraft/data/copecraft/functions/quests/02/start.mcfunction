## Quest: Stone ##
tellraw @a [{"text":"Quest started: ","color": "yellow"},{"text":"Stone","color": "yellow", "italic": true}]

# Set the Quest ID
scoreboard players set @a copecraft-quest-id 2
# Set the Quest Objective
scoreboard players set @a copecraft-quest-objective 1
# Reset the player trigger
scoreboard players set @a copecraft-trigger 0

# [Sidebar] Quest Tracker - Shows the "active" quest (and its objectives)
scoreboard objectives add copecraft-quest dummy {"text":"Quest Tracker", "color":"gold"}
scoreboard objectives setdisplay sidebar copecraft-quest

# Objective 1 - "Craft Wooden Pickaxe"
scoreboard objectives add copecraft-crafted-wooden-pickaxe minecraft.crafted:minecraft.wooden_pickaxe "Craft Wooden Pickaxe"
scoreboard players set 1 copecraft-quest 0
team add q2o1
team modify q2o1 suffix {"text":". Craft Wooden Pickaxe"}
team join q2o1 1

# Objective 2 - "Mine Stone"
scoreboard objectives add copecraft-stone-mined minecraft.mined:minecraft.stone "Mine Stone"
scoreboard players set 2 copecraft-quest 0
team add q2o2
team modify q2o2 suffix {"text":". Mine Stone"}
team join q2o2 2

# Objective 3 - "Craft Furnace"
scoreboard objectives add copecraft-furnace-crafted minecraft.crafted:minecraft.furnace "Craft Furnace"
scoreboard players set 3 copecraft-quest 0
team add q2o3
team modify q2o3 suffix {"text":". Craft Furnace"}
team join q2o3 3

# [Bossbar] Objective Tracker - "Craft Wooden Pickaxe"
bossbar add copecraft:bossbar-q2o1 [{"text":"Objective: "},{"text":"Craft Wooden Pickaxe","color":"yellow"},{"text":" (0/1)"}]
bossbar set copecraft:bossbar-q2o1 players @a
