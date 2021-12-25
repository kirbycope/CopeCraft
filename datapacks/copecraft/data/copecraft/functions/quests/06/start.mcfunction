## Quest: Bread ##
tellraw @a [{"text":"Quest started: ","color": "yellow"},{"text":"Bread","color": "yellow", "italic": true}]

# Set the Quest ID
scoreboard players set @a copecraft-quest-id 6
# Set the Quest Objective
scoreboard players set @a copecraft-quest-objective 1
# Reset the player trigger
scoreboard players set @a copecraft-trigger 0

# [Sidebar] Quest Tracker - Shows the "active" quest (and its objectives)
scoreboard objectives add copecraft-quest dummy {"text":"Quest Tracker", "color":"gold"}
scoreboard objectives setdisplay sidebar copecraft-quest

# Objective 1 - "Harvest Wheat"
scoreboard objectives add copecraft-wheat-picked-up minecraft.picked_up:minecraft.wheat "Harvest Wheat"
scoreboard players set 1 copecraft-quest 0
team add q6o1
team modify q6o1 suffix {"text":". Harvest Wheat"}
team join q6o1 1

# Objective 2 - "Craft Bread"
scoreboard objectives add copecraft-bread-crafted minecraft.crafted:minecraft.bread "Craft Bread"
scoreboard players set 2 copecraft-quest 0
team add q6o2
team modify q6o2 suffix {"text":". Craft Bread"}
team join q6o2 2

# [Bossbar] Objective Tracker - "Harvest Wheat"
bossbar add copecraft:bossbar-q6o1 [{"text":"Objective: "},{"text":"Harvest Wheat","color":"yellow"},{"text":" (0/3)"}]
bossbar set copecraft:bossbar-q6o1 players @a