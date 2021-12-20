#tellraw @a ["",{"selector":"@s"},{"text":" just logged in for the first time!"}]

# Deliever plot
give @s written_book{author:"Timothy Cope",title:"A Letter",pages:['["Greetings,\\nI regret to inform you of the death of your great uncle Eric. As next of kin, you will inherit his property at Halfhill.\\nMy condolences,\\nTimothy Cope"]']}

# [BUG] https://bugs.mojang.com/browse/MC-103171
#give @s written_book{author:"Timothy Cope",title:"Property Deed",pages:['["",{"text":"--- FAMILY FARM ---\\n<< Property  Deed >>\\n------------------\\n\\nPossession of the farm at Halfhill is hereby granted to "},{"selector":"@s"},{"text":"."}]']}

# Announce game phase
title @s subtitle {"text":"The family farm","color":"gray","italic":true}
title @s title {"text":"Halfhill","bold":true}
