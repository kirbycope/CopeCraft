## Quest: Campfire ##
tellraw @a [{"text":"Quest started: ","color": "yellow"},{"text":"Campfire","color": "yellow", "italic": true}]

# Set the Quest ID
scoreboard players set @a copecraft-quest-id 3
# Set the Quest Objective
scoreboard players set @a copecraft-quest-objective 1
# Reset the player trigger
scoreboard players set @a copecraft-trigger 0

# [Sidebar] Quest Tracker - Shows the "active" quest (and its objectives)
scoreboard objectives add copecraft-quest dummy {"text":"Quest Tracker", "color":"gold"}
scoreboard objectives setdisplay sidebar copecraft-quest

# Objective 1 - "Furance Oak Log"
scoreboard objectives add copecraft-charcoal-crafted minecraft.crafted:minecraft.charcoal "Furance Oak Log"
scoreboard players set 1 copecraft-quest 0
team add q3o1
team modify q3o1 suffix {"text":". Furance Oak Log"}
team join q3o1 1

# Objective 2 - "Craft Campfire"
scoreboard objectives add copecraft-campfire-crafted minecraft.crafted:minecraft.campfire "Craft Campfire"
scoreboard players set 2 copecraft-quest 0
team add q3o2
team modify q3o2 suffix {"text":". Craft Campfire"}
team join q3o2 2

# Objective 3 - "Place Campfire"
scoreboard objectives add copecraft-campfire-used minecraft.used:minecraft.campfire "Place Campfire"
scoreboard players set 3 copecraft-quest 0
team add q3o3
team modify q3o3 suffix {"text":". Place Campfire"}
team join q3o3 3

# [Bossbar] Objective Tracker - "Furnace Oak Log"
bossbar add copecraft:bossbar-q3o1 [{"text":"Objective: "},{"text":"Furnace Oak Log","color":"yellow"},{"text":" (0/1)"}]
bossbar set copecraft:bossbar-q3o1 players @a
