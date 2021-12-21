# My son is adorable
gamemode creative RedStarLord3097
item replace entity @s[name="RedStarLord3097"] armor.head with minecraft:cake{"display":{"Name":'[{"text":"To Richie:","color":"red","bold":true,"italic":false}]',"Lore":['{"text":"I love you"}']}}

# Set Quest tracker to 0
scoreboard objectives add copecraft-quest-id dummy "Quest ID"
scoreboard players set @s copecraft-quest-id 0
scoreboard objectives add copecraft-quest-objective dummy "Quest Objective"
scoreboard players set @s copecraft-quest-objective 0

# [BUG] https://bugs.mojang.com/browse/MC-103171
#give @s written_book{author:"Timothy Cope",title:"Property Deed",pages:['["",{"text":"--- FAMILY FARM ---\\n<< Property  Deed >>\\n------------------\\n\\nPossession of the farm at Halfhill is hereby granted to "},{"selector":"@s"},{"text":"."}]']}

# Deliever letter
give @s written_book{author:"Timothy Cope",title:"A Letter",pages:['["Greetings,\\nI regret to inform you of the death of your great uncle Eric. As next of kin, you will inherit his property at Halfhill.\\nMy condolences,\\nTimothy Cope\\n\\n     [",{"text":"Begin Quest","color": "gold","clickEvent":{"action":"run_command","value":"/trigger copecraft-trigger add 1"}},{"text":"]"}]']}
# Mark letter "unread" (clicking the link in the letter starts the first quest)
scoreboard objectives add copecraft-trigger trigger "Letter Read"
scoreboard players enable @s copecraft-trigger

# Announce game phase
title @s subtitle {"text":"The family farm","color":"gray","italic":true}
title @s title {"text":"Halfhill","bold":true}
