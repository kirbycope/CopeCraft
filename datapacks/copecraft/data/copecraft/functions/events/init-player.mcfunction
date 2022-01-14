# Tag player so this only runs for them once
tag @a[tag=!init] add init

# My boys are adorable
item replace entity @s[name="RedStarLord3097"] armor.head with minecraft:creeper_head{"display":{"Name":'[{"text":"To Richie:","color":"red","bold":true,"italic":false}]',"Lore":['{"text":"I love you"}']}}
item replace entity @s[name="BlueStarLord488"] armor.head with minecraft:zombie_head{"display":{"Name":'[{"text":"To Joey:","color":"red","bold":true,"italic":false}]',"Lore":['{"text":"I love you"}']}}

# Set Quest tracker to 0
scoreboard objectives add copecraft-quest-id dummy "Quest ID"
scoreboard players set @s copecraft-quest-id 0
scoreboard objectives add copecraft-quest-objective dummy "Quest Objective"
scoreboard players set @s copecraft-quest-objective 0

# Start villager tracker
scoreboard objectives add copecraft-talked-to-villager minecraft.custom:minecraft.talked_to_villager
scoreboard players set @s copecraft-talked-to-villager 0

# Chest Menu item
scoreboard objectives add copecraft-menu-items dummy
scoreboard players set @s copecraft-menu-items 1
item replace entity @s hotbar.8 with minecraft:nether_star{display:{Name:'[{"text":"SkyBlock Menu ","italic":false,"color":"green"},{"text":"(Right-Click)","color":"gray"}]',Lore:['[{"text":"View all of your SkyBlock","italic":false,"color":"gray"}]','[{"text":"progress, including your Skills,","italic":false,"color":"gray"}]','[{"text":"Collections, Recipes, and more!","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Click to open!","italic":false,"color":"yellow"}]']},HideFlags:127,MenuStar:1b} 1

# Deliver letter
give @s minecraft:written_book{author:"Timothy Cope",title:"A Letter",pages:['["Greetings,\\nI regret to inform you of the death of your great uncle Eric. As next of kin, you will inherit his property at Halfhill.\\nMy condolences,\\nTimothy Cope\\n\\n     [",{"text":"Begin Quest","color": "gold","clickEvent":{"action":"run_command","value":"/trigger copecraft-trigger add 1"}},{"text":"]"}]']}
# Mark letter "unread" (clicking the link in the letter starts the first quest)
scoreboard objectives add copecraft-trigger trigger "Letter Read"
scoreboard players enable @s copecraft-trigger

# Announce game phase
title @s subtitle {"text":"The family farm","color":"gray","italic":true}
title @s title {"text":"Halfhill"}
