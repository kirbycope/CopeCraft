# Transition from Quests 03's Objective 1 to Objective 2

# Remove relevant scoreboard
scoreboard objectives remove copecraft-charcoal-crafted
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q3o1
# Set the Objective to "2"
scoreboard players set @a copecraft-quest-objective 2
# Remove white text from quest tracker
scoreboard players reset 1 copecraft-quest
# Add green text to Tracker
scoreboard players set §a1 copecraft-quest 1
team modify q3o1 suffix {"text":". Furance Oak Log", "color": "green"}
team join q3o1 §a1

# [Bossbar] Objective Tracker - "Craft Campfire"
bossbar add copecraft:bossbar-q3o2 [{"text":"Objective: "},{"text":"Craft Campfire","color":"yellow"},{"text":" (0/1)"}]
bossbar set copecraft:bossbar-q3o2 players @a

# Objective(s) completed: 1/3
clear @p minecraft:written_book{"title":"Quest Log"}
give @p written_book{pages:['["",{"text":"       QUEST LOG\\n\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2611","color":"dark_green","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":" 1. Wood","color":"reset","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n"},{"text":"\\u2611","color":"dark_green","clickEvent":{"action":"change_page","value":3},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":" 2. Stone","color":"reset","clickEvent":{"action":"change_page","value":3},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n"},{"text":"\\u2610 3. Campfire","clickEvent":{"action":"change_page","value":4},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n"},{"text":"© ","hoverEvent":{"action":"show_text","contents":"Click to visit TimothyCope.com"}},{"text":"timothycope.com/","color":"dark_blue","clickEvent":{"action":"open_url","value":"http://timothycope.com/"},"hoverEvent":{"action":"show_text","contents":"Click to visit TimothyCope.com"}}]','["",{"text":"           WOOD","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nThe farm is in worse shape than I thought. I\'ll start with getting some lumber.\\n\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Chop Wood Logs\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Wood Planks\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Make Crafting Table\\n\\nReward(s):\\n","color":"reset"},{"text":"- 5 XP","color":"dark_purple"}]','["",{"text":"          STONE","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nI need some better tools. There should be some stone around here somewhere.\\n\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Wood Pickaxe\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Mine Stone\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Furnace\\n\\nReward(s):\\n","color":"reset"},{"text":"- 5 XP","color":"dark_purple"}]','["",{"text":"        CAMPFIRE","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nTime for a spirit lifter. After I put a log in the furnace I can use the charcoal.\\n\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Furnace Oak Log\\n\\u2610 Craft Campfire\\n\\u2610 Place Campfire\\n\\nReward(s):\\n- 5 XP","color":"reset"}]'],title:"Quest Log",author:""}
