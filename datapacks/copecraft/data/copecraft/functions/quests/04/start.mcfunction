## Quest: Farmland ##
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

# Quest Log - Initial State
clear @p minecraft:written_book{"title":"Quest Log"}
give @p written_book{pages:['["",{"text":"       QUEST LOG\\n\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2611","color":"dark_green","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":" 1. Wood","color":"reset","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n"},{"text":"\\u2611","color":"dark_green","clickEvent":{"action":"change_page","value":3},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":" 2. Stone","color":"reset","clickEvent":{"action":"change_page","value":3},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n"},{"text":"\\u2611","color":"dark_green","clickEvent":{"action":"change_page","value":4},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":" 3. Campfire","color":"reset","clickEvent":{"action":"change_page","value":4},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n"},{"text":"\\u2610 4. Farmland","clickEvent":{"action":"change_page","value":5},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n\\n\\n\\n\\n\\n\\n\\n"},{"text":"© ","hoverEvent":{"action":"show_text","contents":"Click to visit TimothyCope.com"}},{"text":"timothycope.com/","color":"dark_blue","clickEvent":{"action":"open_url","value":"http://timothycope.com/"},"hoverEvent":{"action":"show_text","contents":"Click to visit TimothyCope.com"}}]','["",{"text":"           WOOD","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nThe farm is in worse shape than I thought. I\'ll start with getting some lumber.\\n\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Chop Wood Logs\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Wood Planks\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Make Crafting Table\\n\\nReward(s):\\n","color":"reset"},{"text":"- 5 XP","color":"dark_purple"}]','["",{"text":"          STONE","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nI need some better tools. There should be some stone around here somewhere.\\n\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Wood Pickaxe\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Mine Stone\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Furnace\\n\\nReward(s):\\n","color":"reset"},{"text":"- 5 XP","color":"dark_purple"}]','["",{"text":"        CAMPFIRE","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nTime for a spirit lifter. After I put a log in the furnace I can use the charcoal.\\n\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Furnace Oak Log\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Campfire\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Place Campfire\\n\\nReward(s):\\n","color":"reset"},{"text":"- 5 XP","color":"dark_purple"}]','["",{"text":" \\u0020 \\u0020 \\u0020 \\u0020FARMLAND","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nThe garden is looking rough but I think it just needs a little elbow grease.\\n\\n\\u2610 Craft Wooden Hoe\\n\\u2610 Till Soil\\n\\n\\nReward(s):\\n- 5 XP","color":"reset"}]'],title:"Quest Log",author:""}
