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

# Quest Log - Initial State
clear @p minecraft:written_book{"title":"Quest Log"}
give @p written_book{pages:['["",{"text":"       QUEST LOG\\n\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2611","color":"dark_green","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":" 1. Wood","color":"reset","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n"},{"text":"\\u2611","color":"dark_green","clickEvent":{"action":"change_page","value":3},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":" 2. Stone","color":"reset","clickEvent":{"action":"change_page","value":3},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n"},{"text":"\\u2610 3. Campfire","clickEvent":{"action":"change_page","value":4},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n"},{"text":"© ","hoverEvent":{"action":"show_text","contents":"Click to visit TimothyCope.com"}},{"text":"timothycope.com/","color":"dark_blue","clickEvent":{"action":"open_url","value":"http://timothycope.com/"},"hoverEvent":{"action":"show_text","contents":"Click to visit TimothyCope.com"}}]','["",{"text":"           WOOD","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nThe farm is in worse shape than I thought. I\'ll start with getting some lumber.\\n\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Chop Wood Logs\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Wood Planks\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Make Crafting Table\\n\\nReward(s):\\n","color":"reset"},{"text":"- 5 XP","color":"dark_purple"}]','["",{"text":"          STONE","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nI need some better tools. There should be some stone around here somewhere.\\n\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Wood Pickaxe\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Mine Stone\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Furnace\\n\\nReward(s):\\n","color":"reset"},{"text":"- 5 XP","color":"dark_purple"}]','["",{"text":" \\u0020 \\u0020 \\u0020 \\u0020Campfire","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nTime for a spirit lifter. After I put a log in the furnace I can use the charcoal.\\n\\n\\u2610 Furnace Oak Log\\n\\u2610 Craft Campfire\\n\\u2610 Place Campfire\\n\\nReward(s):\\n- 5 XP","color":"reset"}]'],title:"Quest Log",author:""}
