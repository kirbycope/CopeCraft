# Transition from Quests 01's Objective 2 to Objective 3

# Remove relevant scoreboard
scoreboard objectives remove copecraft-oak-planks-crafted
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q1o2
# Set the Objective to "3"
scoreboard players set @a copecraft-quest-objective 3
# Remove white text from quest tracker
scoreboard players reset 2 copecraft-quest
# Add green text to Tracker
scoreboard players set §a2 copecraft-quest 1
team modify q1o2 suffix {"text":". Craft Wood Planks", "color": "green"}
team join q1o2 §a2

# [Bossbar] Objective Tracker - "Make Crafting Table"
bossbar add copecraft:bossbar-q1o3 [{"text":"Objective: "},{"text":"Make Crafting Table","color":"yellow"},{"text":" (0/1)"}]
bossbar set copecraft:bossbar-q1o3 players @a

# Objective(s) completed: 2/3
clear @p minecraft:written_book{"title":"Quest Log"}
give @p written_book{pages:['["",{"text":"       QUEST LOG\\n\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2610 1. Wood","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n"},{"text":"© ","hoverEvent":{"action":"show_text","contents":"Click to visit TimothyCope.com"}},{"text":"timothycope.com/","color":"dark_blue","clickEvent":{"action":"open_url","value":"http://timothycope.com/"},"hoverEvent":{"action":"show_text","contents":"Click to visit TimothyCope.com"}}]','["",{"text":"           WOOD","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nThe farm is in worse shape than I thought. I\'ll start with getting some lumber.\\n\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Chop Wood Logs\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Wood Planks\\n\\u2610 Make Crafting Table\\n\\nReward(s):\\n","color":"reset"},{"text":"- 5 XP","color":"black"}]'],title:"Quest Log",author:""}
