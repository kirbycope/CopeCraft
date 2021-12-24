## Quest: Campfire ##
tellraw @a [{"text":"Quest started: ","color": "yellow"},{"text":"Farmland","color": "yellow", "italic": true}]

# Set the Quest ID
scoreboard players set @a copecraft-quest-id 4
# Set the Quest Objective
scoreboard players set @a copecraft-quest-objective 1
# Reset the player trigger
scoreboard players set @a copecraft-trigger 0

# [Sidebar] Quest Tracker - Shows the "active" quest (and its objectives)
scoreboard objectives add copecraft-quest dummy {"text":"Quest Tracker", "color":"gold"}
scoreboard objectives setdisplay sidebar copecraft-quest

# Objective 1 - "Craft Wooden Hoe"
scoreboard objectives add copecraft-wooden-hoe-crafted minecraft.crafted:minecraft.wooden_hoe "Craft Wooden Hoe"
scoreboard players set 1 copecraft-quest 0
team add q4o1
team modify q4o1 suffix {"text":". Craft Wooden Hoe"}
team join q4o1 1

# Objective 2 - "Till Soil"
scoreboard objectives add copecraft-wooden-hoe-used minecraft.used:minecraft.wooden_hoe "Craft Campfire"
scoreboard players set 2 copecraft-quest 0
team add q4o2
team modify q4o2 suffix {"text":". Till Soil"}
team join q4o2 2

# [Bossbar] Objective Tracker - "Craft Wooden Hoe"
bossbar add copecraft:bossbar-q4o1 [{"text":"Objective: "},{"text":"Craft Wooden Hoe","color":"yellow"},{"text":" (0/1)"}]
bossbar set copecraft:bossbar-q4o1 players @a
