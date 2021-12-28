# Reset the Quest Tracker
scoreboard players reset * copecraft-quest
# Remove relevant scoreboard
scoreboard objectives remove copecraft-crafting-table-crafted
# Remove "current" Objective tracker
bossbar remove copecraft:bossbar-q1o3
# Objective(s) completed: 3/3
clear @p minecraft:written_book{"title":"Quest Log"}
give @p written_book{pages:['["",{"text":"       QUEST LOG\\n\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2611","color":"dark_green","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":" 1. Wood","color":"reset","clickEvent":{"action":"change_page","value":2},"hoverEvent":{"action":"show_text","contents":"Click to view the quest"}},{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n"},{"text":"© ","hoverEvent":{"action":"show_text","contents":"Click to visit TimothyCope.com"}},{"text":"timothycope.com/","color":"dark_blue","clickEvent":{"action":"open_url","value":"http://timothycope.com/"},"hoverEvent":{"action":"show_text","contents":"Click to visit TimothyCope.com"}}]','["",{"text":"           WOOD","color":"gold"},{"text":"\\n","color":"reset"},{"text":"\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550","color":"gold"},{"text":"\\nThe farm is in worse shape than I thought. I\'ll start with getting some lumber.\\n\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Chop Wood Logs\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Craft Wood Planks\\n","color":"reset"},{"text":"\\u2611","color":"dark_green"},{"text":" Make Crafting Table\\n\\nReward(s):\\n","color":"reset"},{"text":"- 5 XP","color":"dark_purple"}]'],title:"Quest Log",author:""}
# Quest Reward
playsound minecraft:block.note_block.chime master @a
title @s actionbar {"text":"5 XP","color":"dark_purple"}
xp add @a 5 points
tellraw @a {"text":"Quest completed.","color":"yellow"}
tellraw @a {"text":"Experience gained: 5.","color":"yellow"}
# Start Quest 2, automatically
function copecraft:quests/02/start
