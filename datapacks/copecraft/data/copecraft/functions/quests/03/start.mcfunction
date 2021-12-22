# Set the Quest ID
scoreboard players set @a copecraft-quest-id 3
# Set the Quest Objective
scoreboard players set @a copecraft-quest-objective 1
# Reset the player trigger
scoreboard players set @a copecraft-trigger 0

# [Sidebar] Quest Tracker - Shows the "active" quest (and its objectives)
scoreboard objectives add copecraft-quest dummy {"text":"Quest Tracker", "color":"gold"}
scoreboard objectives setdisplay sidebar copecraft-quest
# Objective Format - White text
team add suffix-stone-blocks
team modify suffix-stone-blocks suffix {"text":" Stone Blocks"}
team add suffix-furnace
team modify suffix-furnace suffix {"text":" Furnace"}
# Objective Format - Green text
team add suffix-stone-blocks-green
team modify suffix-stone-blocks-green suffix {"text":" Stone Blocks","color":"green"}
team add suffix-furnace-green
team modify suffix-furnace-green suffix {"text":" Furnace","color":"green"}
# [q3o1] Quest 3 Objective 1 - "Mine Stone Blocks"
scoreboard objectives add copecraft-stone-mined minecraft.mined:minecraft.stone "Mine Stone Blocks"
scoreboard players set Mine copecraft-quest 9
team join suffix-stone-blocks Mine
# [q3o2] Quest 3 Objective 2 - "Craft Furnace"
scoreboard objectives add copecraft-furnace-crafted minecraft.crafted:minecraft.furnace "Craft Furnace"
scoreboard players set Craft copecraft-quest 8
team join suffix-furnace Craft

# [Bossbar] Objective Tracker - "Mine Stone"
bossbar add copecraft:bossbar-q3o1 [{"text":"Objective: "},{"text":"Mine Stone ","color":"yellow"},{"text":"(0/8)"}]
bossbar set copecraft:bossbar-q3o1 players @a
