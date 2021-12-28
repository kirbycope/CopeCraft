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

# Quest Log - Initial State
clear @p minecraft:written_book{"title":"Quest Log"}
give @p written_book{pages:['["",{"text":"       QUEST LOG\\n\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2611","color":"dark_green","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":" 1. Wood","color":"reset","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n"},{"text":"\\u2610 2. Stone","clickEvent":{"action":"change_page","value":3},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n"},{"text":"© ","hoverEvent":{"action":"show_text","contents":"Click to visit TimothyCope.com"}},{"text":"timothycope.com/","color":"dark_blue","clickEvent":{"action":"open_url","value":"http://timothycope.com/"},"hoverEvent":{"action":"show_text","contents":"Click to visit TimothyCope.com"}}]','["",{"text":"           WOOD","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nThe farm is in worse shape than I thought. I\'ll start with getting some lumber.\\n\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Chop Wood Logs\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Wood Planks\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Make Crafting Table\\n\\nReward(s):\\n","color":"reset"},{"text":"- 5 XP","color":"dark_purple"}]','["",{"text":" \\u0020 \\u0020 \\u0020 \\u0020 \\u0020STONE","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nI need some better tools. There should be some stone around here somewhere.\\n\\n\\u2610 Craft Wood Pickaxe\\n\\u2610 Mine Stone\\n\\u2610 Craft Furnace\\n\\nReward(s):\\n- 5 XP","color":"reset"}]'],title:"Quest Log",author:""}
